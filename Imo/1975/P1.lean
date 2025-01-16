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
Let $x_1\ge x_2\ge\ldots\ge x_n$, and $y_1\ge y_2\ge\ldots\ge y_n$ be real numbers. Prove that if $z_i$ is any permutation of the $y_i$, then: $$\sum_1^n(x_i-y_i)^2\le\sum_1^n(x_i-z_i)^2.$$ -/
@[imo_problem_subject algebra]
theorem imo_1975_p1 (n : ℕ) (x : ℕ → ℝ) (y : ℕ → ℝ) (z : ℕ → ℝ)
    -- z is a permuation of y on 1 to n
    (h_perm : (Multiset.Icc 1 n).map y = (Multiset.Icc 1 n).map z)
    (h_x_inc : AntitoneOn x (Finset.Icc 1 n)) (h_y_inc : AntitoneOn y (Finset.Icc 1 n)) :
    ∑ i ∈ Finset.Icc 1 n, (x i - y i) ^ 2 ≤ ∑ i ∈ Finset.Icc 1 n, (x i - z i) ^ 2 := by
  sorry
