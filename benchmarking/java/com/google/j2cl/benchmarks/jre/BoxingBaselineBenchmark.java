package com.google.j2cl.benchmarks.jre;

import com.google.j2cl.benchmarking.framework.*;

import java.util.*;

/** A benchmark that measures boxing & unboxing performance on primitive ints. */
public class BoxingBaselineBenchmark extends AbstractBenchmark {

  private static final Random random = new Random(42);
  private int[] array;

  @Override
  public Object run() {
    int count = 0;
    for (int i = 0; i < array.length; i++) {
      array[i] = i + 200;
    }

    return array;
  }

  @Override
  public void setupOneTime() {
    array = new int[1000];
  }
}
