/*
 * Copyright 2022 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */
package com.google.j2cl.benchmarks.jre;

import com.google.j2cl.benchmarking.framework.AbstractBenchmark;

import javax.annotation.Nullable;
import java.util.*;

/** A benchmark to test out instanceof/cast performance. */
public final class InstanceOfBaselineBenchmark extends AbstractBenchmark {

  private static final Random random = new Random(42);
  private Object[] array;

  @Nullable
  @Override
  public Object run() {
    int count = 0;
    for (int i = 0; i < array.length; i++) {
      Object o = array[i];
      if (o instanceof Foo) {
        count++;
      }
    }

    if (count != array.length) {
      throw new AssertionError();
    }

    return null;
  }

  @Override
  public void setupOneTime() {
    array = new Object[1000];
    for (int i = 0; i < array.length; i++) {
      array[i] = new Foo();
    }
  }

  static class Foo {}
}
