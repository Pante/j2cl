package com.google.j2cl.benchmarks.jre;

import com.google.j2cl.benchmarking.framework.*;

import java.util.*;

/**
 * Basic object churn benchmark focusing on rapid allocation/deallocation of objects.
 */
public class ObjectChurnBaselineBenchmark extends AbstractBenchmark {
  private static final Random random = new Random(42);

  @Override
  public Object run() {
    long checksum = 0;

    for (int i = 0; i < 100; i++) {
      MediumObject mediumObject = new MediumObject(100, i);
      checksum += mediumObject.process();
    }

    return checksum;
  }

  private static class MediumObject {
    private final int[] data;
    private final String label;

    public MediumObject(int size, int seed) {
      this.data = new int[size];
      this.label = "medium_" + seed;
      for (int i = 0; i < size; i++) {
        data[i] = seed * i;
      }
    }

    public long process() {
      long sum = 0;
      for (int value : data) {
        sum += value;
      }
      return sum + label.hashCode();
    }
  }
}
