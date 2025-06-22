package com.google.j2cl.benchmarks.jre;

import com.google.j2cl.benchmarking.framework.*;

import java.util.*;

/** A benchmark that measures boxing & unboxing performance on uncached integers. */
public class BoxingBenchmark extends AbstractBenchmark {

  private static final Random random = new Random(42);
  private Integer[] array;

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
    array = new Integer[1000];
  }
}
