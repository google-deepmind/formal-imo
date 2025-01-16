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
Find the maximum value of $x_0$ for which there exists a sequence $x_0, x_1, \ldots , x_{1995}$ of positive reals with $x_0 = x_{1995}$ such that for $i = 1, \ldots , 1995$: $$x_{i-1}+{2 \over x_{i-1}} = 2x_i+{1 \over x_i}.$$ -/
@[imo_problem_subject algebra]
theorem imo_1995_p4 :
    IsGreatest
      {c : ℝ |
        ∃ x : ℕ → ℝ,
          x 0 = c ∧
            x 0 = x 1995 ∧
              (∀ i, 0 < x i) ∧ ∀ i ∈ Set.Icc 1 1995, x (i - 1) + 2 / x (i - 1) = 2 * x i + 1 / x i}
      (2 ^ 997) := by
  sorry
