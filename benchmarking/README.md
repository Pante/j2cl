# J2CL Benchmarks

 <!-- TOC -->

## Running a benchmark for local changes

To set up `j2`:
```shell
alias j2='python3 dev/j2.py'
```

You can run benchmarks locally with
[`j2`](https://github.com/google/j2cl/blob/master/CONTRIBUTING.md#shell-aliasing-and-running-j2-script)
tool:

```
j2 bench {benchmark_name}
```

Where `{benchmark_name}` is the name of the benchmark.

TIP: You can run multiple benchmarks by passing multiple benchmark names or
`all` for running all benchmarks.

By default, `j2` will run the benchmark on all platforms (Closure, Wasm, JVM).
If you want to test a benchmark on a specific platform, you can use the `-p`
parameter of the `j2` tool:

```
j2 -p JVM bench {benchmark_name}
```

For running benchmarks for Web platforms, you would need to install v8 via
[jsvu](https://github.com/GoogleChromeLabs/jsvu) on your local machine.

The bench command has been modified to accept JVM, V8 & SpiderMonkey flags. You can pass these flags using the 
`--jvm-flags`, `--v8-flags`, and `--sm-flags`.

## Debugging/Profiling a benchmark

A benchmark could be debugged or profiled by running the `_debug` target:

```
blaze run \
   //benchmarking/java/com/google/j2cl/benchmarks/octane:Box2dBenchmark_j2cl_debug
```

In addition while debugging J2CL benchmarks, you can add
`--define=J2CL_APP_STYLE=PRETTY` to have "pretty" output to help with profiling.
