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

import Imo.ProblemImports

open scoped Real
open scoped Nat

/--
Find all pairs of integers $m > 2, n > 2$ such that there are infinitely many positive integers $k$ for which $k^n + k^2 - 1$ divides $k^m + k-1$.

Solution: (5, 3)
-/
@[imo_problem_subject number_theory]
theorem imo_2002_p3 :
    {(m, n) : ℕ × ℕ | 2 < m ∧ 2 < n ∧
      {k : ℤ | 0 < k ∧ k ^ n + k ^ 2 - 1 ∣ k ^ m + k - 1}.Infinite} =
    answer({(5, 3)}) := by
  sorry
