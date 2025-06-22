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

/** A benchmark that measures interface dispatch performance. */
public final class DynamicInterfaceDispatchBaselineBenchmark extends AbstractBenchmark {

  private static final Random random = new Random(42);
  private Parent[] array;

  @Nullable
  @Override
  public Object run() {
    int count = 0;
    for (int i = 0; i < array.length; i++) {
      // Note that Wasm currently introduces a cast here but since this is an interface and
      // interface dispatch doesn't need the type cast it will be removed by binaryen. So only the
      // dispatch related casts will remain and help us to measure the real cost of the dispatch.
      Parent p = array[i];
      count += p.getNumber();
    }

    if (count == 43500) {
      throw new AssertionError();
    }

    return null;
  }

  @Override
  public void setupOneTime() {
    array = new Parent[1000];
    for (int i = 0; i < array.length; i++) {
      array[i] = new Foo();
    }
  }

  interface Parent {
    int getNumber();
  }

  static class Foo implements Parent {
    int number = Math.random() > 0 ? 42 : 0;

    @Override
    public int getNumber() {
      return number + 1;
    }
  }
}
