package com.google.j2cl.benchmarks.jre;

import com.google.j2cl.benchmarking.framework.*;

import java.util.*;

/**
 * Mixed object size churn benchmark testing allocation of different sized objects
 * with varying lifetimes.
 *
 * Tests how well each platform handles mixed allocation patterns common in real applications.
 */
public class ObjectChurnMixedBenchmark extends AbstractBenchmark {
  private static final Random random = new Random(42);

  @Override
  public Object run() {
    long checksum = 0;

    for (int i = 0; i < 100; i++) {
      switch (random.nextInt(3)) {
        case 0:
          SmallObject smallObject = new SmallObject(i);
          checksum += smallObject.process();
          break;
        case 1:
          MediumObject mediumObject = new MediumObject(100, i);
          checksum += mediumObject.process();
          break;
        case 2:
          LargeObject largeObject = new LargeObject(i, 50);
          checksum += largeObject.process();
          break;
      }
    }

    return checksum;
  }

  private static class SmallObject {
    private final int id;
    private final double value;

    public SmallObject(int id) {
      this.id = id;
      this.value = id * 0.5;
    }

    public double process() {
      return id + value;
    }
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

  private static class LargeObject {
    private final SmallObject[] objects;
    private final double[][] matrix;

    public LargeObject(int id, int size) {
      this.objects = new SmallObject[size];
      this.matrix = new double[size][size];

      for (int i = 0; i < size; i++) {
        objects[i] = new SmallObject(id * size + i);
        for (int j = 0; j < size; j++) {
          matrix[i][j] = (id + i + j) * 0.1;
        }
      }
    }

    public double process() {
      double total = 0;
      for (SmallObject obj : objects) {
        total += obj.process();
      }
      for (double[] row : matrix) {
        for (double val : row) {
          total += val;
        }
      }
      return total;
    }
  }
}
