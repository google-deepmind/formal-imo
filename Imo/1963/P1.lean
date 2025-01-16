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
For which real values of $p$ does the equation $$\sqrt{x^2-p}+2\sqrt{x^2-1}=x$$ have real roots? What are the roots?

Solution: $x = \frac {4 - p}{2\sqrt {4 - 2p}}$ when $p\geq 0$ and
$p \leq \frac {4}{3}$, otherwise no solution.
-/
@[imo_problem_subject algebra]
theorem imo_1963_p1 (p : ℝ) :
  {x : ℝ | 0 ≤ x ^ 2 - p ∧ 0 ≤ x ^ 2 - 1 ∧ √(x ^ 2 - p) + 2 * √(x ^ 2 - 1) = x}
    = answer(if 0 ≤ p ∧ p ≤ 4 / 3 then {(4 - p) / (2 * √(4 - 2 * p))} else ∅) := by
  sorry
