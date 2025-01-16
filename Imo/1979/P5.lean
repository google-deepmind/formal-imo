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
Find all real numbers $a$ for which there exist non-negative real numbes $x_1,x_2,x_3,x_4,x_5$ satisfying:

$x_1+2x_2+3x_3+4x_4+5x_5=a,$

$x_1+2^3x_2+3^3x_3+4^3x_4+5^3x_5=a^2,$

$x_1+2^5x_2+3^5x_3+4^5x_4+5^5x_5=a^3.$

Solution: $0, 1, 4, 9, 16, 25$
-/
@[imo_problem_subject algebra]
theorem imo_1979_p5 :
    {a : ℝ |
        ∃ x : ℕ → ℝ,
          (∀ k ∈ Finset.Icc 1 5, 0 ≤ x k) ∧
            ∑ k ∈ Finset.Icc 1 5, ↑k * x k = a ∧
              ∑ k ∈ Finset.Icc 1 5, ↑k ^ 3 * x k = a ^ 2 ∧
                ∑ k ∈ Finset.Icc 1 5, ↑k ^ 5 * x k = a ^ 3} =
      answer({0, 1, 4, 9, 16, 25}) := by
  sorry
