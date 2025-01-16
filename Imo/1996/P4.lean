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
The positive integers $a,b$ are such that $15a+16b$ and $16a-15b$ are both squares of positive integers. What is the least possible value that can be taken by the smaller of these two squares?

Solution: $481^2$
-/
@[imo_problem_subject number_theory]
theorem imo_1996_p4 :
    IsLeast
      {c : ℕ |
        ∃ a b : ℕ,
          0 < a ∧
            0 < b ∧
              (∃ x, 0 < x ∧ 15 * a + 16 * b = x ^ 2) ∧
                (∃ x, 0 < x ∧ 16 * a - 15 * b = x ^ 2) ∧
                  min (16 * a - 15 * b) (15 * a + 16 * b) = c}
      (481 ^ 2) := by
  sorry
