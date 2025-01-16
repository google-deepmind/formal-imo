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

open scoped Real
open scoped Nat

/--
For what real values of $x$ does the following inequality hold: $${4x^2\over(1-\sqrt{1+2x})^2}< 2x+9?$$

Solution: $-\frac{1}{2} \le x<\frac{45}{8}$, except $x=0$.
-/
@[imo_problem_subject algebra]
theorem imo_1960_p2 :
    {x : ℝ | 0 ≤ 1 + 2 * x ∧ (1 - √(1 + 2 * x)) ^ 2 ≠ 0 ∧
      4 * x ^ 2 / (1 - √(1 + 2 * x)) ^ 2 < 2 * x + 9} =
    answer(Set.Ico (-(1 / 2)) (45 / 8) \ {0}) := by
  sorry
