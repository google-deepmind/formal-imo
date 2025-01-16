/-
Copyright 2025 Google LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-/

-- Derived from miniF2F's test.lean
import Imo.ProblemImports

/--
Let $\mathbb{Z}$ be the set of integers. Determine all functions $f: \mathbb{Z} \rightarrow \mathbb{Z}$ such that, for all integers $a$ and $b$, $$f(2a)+2f(b)=f(f(a+b)).$$
[i]Proposed by Liam Baker, South Africa[/i]
-/
@[imo_problem_subject algebra]
theorem imo_2019_p1 :
    {f : ℤ → ℤ | ∀ a b, f (2 * a) + 2 * f b = f (f (a + b))} =
      answer({0} ∪ {fun x => 2 * x + c | (c : ℤ)}) := by
  sorry

