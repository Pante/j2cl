# J2CL Benchmarking System

This README provides a comprehensive overview of the J2CL benchmarking system, which is used to measure and compare performance across different platforms (JVM, JavaScript/Closure, and WebAssembly).

## Table of Contents
- [Overview](#overview)
- [Running Benchmarks](#running-benchmarks)
- [Benchmark Types](#benchmark-types)
- [How Benchmarks Work](#how-benchmarks-work)
- [Platform-Specific Details](#platform-specific-details)
- [Underlying Implementation](#underlying-implementation)
- [Debugging and Profiling](#debugging-and-profiling)

## Overview

The J2CL benchmarking system is designed to measure the performance impact of code changes across different platforms. It allows developers to:

1. Run specific benchmarks or groups of benchmarks
2. Compare performance across JVM, Closure (JavaScript), and WASM platforms
3. Evaluate the impact of local changes on performance

The system is primarily accessed through the `j2 bench` command, which is a wrapper around the `bench.py` script.

## Running Benchmarks

### Basic Usage

To run a benchmark:

```bash
j2 bench {benchmark_name}
```

Where `{benchmark_name}` is the name of a specific benchmark (e.g., `InstanceOfBenchmark`).

You can also run:
- Multiple benchmarks by specifying multiple names
- All benchmarks with `j2 bench all`
- Transpiler-specific benchmarks with `j2 bench transpiler`

### Platform Selection

By default, benchmarks run on all platforms. To run on a specific platform:

```bash
j2 -p JVM bench {benchmark_name}
```

Available platforms:
- `JVM` - Java Virtual Machine
- `CLOSURE` - JavaScript via Google Closure Compiler
- `WASM` - WebAssembly

For web platforms (CLOSURE and WASM), you need to install V8 and SpiderMonkey JavaScript engines via [jsvu](https://github.com/GoogleChromeLabs/jsvu).

## Benchmark Types

J2CL benchmarks are **throughput benchmarks** that measure operations per unit of time:

- Standard benchmarks report operations per millisecond (ops/ms)
- Long-running benchmarks report operations per second (ops/s)

Higher numbers indicate better performance.

## How Benchmarks Work

### Measurement Methodology

Each benchmark follows this execution flow:

1. **Setup Phase**: `setupOneTime()` is called once before all iterations
2. **Warmup Phase**: Default 5 iterations to allow JIT optimization
3. **Measurement Phase**: Default 5 iterations where actual measurements are taken
4. **Teardown Phase**: `tearDownOneTime()` is called once after all iterations

For each iteration:
- `setup()` is called
- The `run()` method is executed repeatedly for a fixed duration (1 second for standard benchmarks, 10 seconds for long-running benchmarks)
- The number of operations completed is counted
- Throughput is calculated as operations per millisecond
- `tearDown()` is called

### Result Calculation

The final result is the average throughput across all measurement iterations.

## Platform-Specific Details

### JVM

JVM benchmarks are executed directly as Java binaries with specific JVM flags.

### JavaScript (Closure)

JavaScript benchmarks are run on two different engines:
1. V8 (Google's JavaScript engine)
2. SpiderMonkey (Mozilla's JavaScript engine, abbreviated as "sm")

This is why you see two numbers when running CLOSURE or WASM benchmarks:

```
Starting benchmarks for WASM.
InstanceOfBenchmark: 1012.2453897831195
631.1589019276023
```

The first number is from V8, and the second is from SpiderMonkey.

Source: com/google/j2cl/benchmarking/benchmarks.bzl Line #144

### WebAssembly (WASM)

Similar to JavaScript benchmarks, WASM benchmarks are run on both V8 and SpiderMonkey engines, with the appropriate flags to enable WebAssembly features.

## Underlying Implementation

### Benchmark Definition

Benchmarks are defined in BUILD files using the `benchmark()` macro:

```python
benchmark(
    name = "InstanceOfBenchmark",
    deps = ["//third_party:jsr305_annotations"],
)
```

This creates:
- JVM targets for Java benchmarks
- J2CL targets for JavaScript benchmarks
- J2WASM targets for WebAssembly benchmarks

### Bazel Calls

When you run `j2 bench`, it makes the following Bazel calls:

1. **Building Benchmark List Files**:
   ```bash
   bazel build benchmarking/java/com/google/j2cl/benchmarks/jre/benchmark_list.txt benchmarking/java/com/google/j2cl/benchmarks/octane/benchmark_list.txt
   ```

2. **Building Benchmark Targets**:
   ```bash
   bazel build [list of benchmark targets]
   ```

3. **Running the Benchmarks**:
   ```bash
   bazel-bin/benchmarking/java/com/google/j2cl/benchmarks/<type>/<benchmark_name>_local[-platform-engine]
   ```

### Preventing Optimization Side-Effects

The framework captures and uses the result of each benchmark run to prevent the runtime from optimizing away "dead code":

```java
private static void useResult(Object o) {
  boolean isJvm = System.getProperty("java.version", null) != null;
  if (isJvm) {
    // JVM doesn't need user result to disable optimizations.
    return;
  }
  Global.__benchmarking_result = externalize(o);
}
```

## Debugging and Profiling

A benchmark can be debugged or profiled by running the `_debug` target:

```bash
blaze run \
   //benchmarking/java/com/google/j2cl/benchmarks/octane:Box2dBenchmark_j2cl_debug
```

For J2CL benchmarks, you can add `--define=J2CL_APP_STYLE=PRETTY` to have "pretty" output to help with profiling.

## Creating a New Benchmark

To create a new benchmark:

1. Create a new Java class that extends `AbstractBenchmark`
2. Implement the `run()` method that performs the operation to be measured
3. Optionally implement `setup()`, `tearDown()`, `setupOneTime()`, and `tearDownOneTime()`
4. Add a `benchmark()` rule in the appropriate BUILD file

Example benchmark:

```java
public final class InstanceOfBenchmark extends AbstractBenchmark {
  private Object[] array;

  @Override
  public Object run() {
    int count = 0;
    for (int i = 0; i < array.length; i++) {
      Object o = array[i];
      if (i % 2 == 0 ? o instanceof Foo : o instanceof Bar) {
        count++;
      }
    }
    return count;
  }

  @Override
  public void setupOneTime() {
    array = new Object[1000];
    for (int i = 0; i < array.length; i++) {
      array[i] = i % 2 == 0 ? new Foo() : new Bar();
    }
  }

  static class Foo {}
  static class Bar {}
}
```