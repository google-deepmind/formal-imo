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
For what real values of $x$ is $\sqrt{x+\sqrt{2x-1}}+\sqrt{x-\sqrt{2x-1}}=A$ given $A=\sqrt2$, (b) $A=1$, (c) $A=2$, where only non-negative real numbers are allowed in square roots and the root always denotes the non-negative root?

Solution:
(a) The equation holds for 1/2 ≤ x ≤ 1.
(b) The equation has no solution.
(c) The equation holds for 4x − 2=4 ⇒ x = 3/2.
-/
@[imo_problem_subject algebra]
theorem imo_1959_p2 (A : ℝ) (S)
    (hS : S = {x : ℝ | 0 ≤ 2 * x - 1 ∧ 0 ≤ x + √(2 * x - 1) ∧
      0 ≤ x - √(2 * x - 1) ∧ √(x + √(2 * x - 1)) +
      √(x - √(2 * x - 1)) = A}) :
    (A = √2 → S = Set.Icc (1 / 2) 1) ∧ (A = 1 → S = ∅) ∧ (A = 2 → S = {3 / 2}) := by
  sorry

/-- For what real values of $x$ is\[ \sqrt{x+\sqrt{2x-1}}+\sqrt{x-\sqrt{2x-1}}=A  \]
given

a) $A=\sqrt{2}$;

b) $A=1$;

c) $A=2$,

where only non-negative real numbers are admitted for square roots?

Solution:
(a) The equation holds for 1/2 ≤ x ≤ 1.
(b) The equation has no solution.
(c) The equation holds for 4x − 2=4 ⇒ x = 3/2.
-/
theorem imo_1959_p2.parts.a :
    {x : ℝ | 0 ≤ 2 * x - 1 ∧ 0 ≤ x + √(2 * x - 1) ∧
      0 ≤ x - √(2 * x - 1) ∧ √(x + √(2 * x - 1)) +
      √(x - √(2 * x - 1)) = √2} =
    answer(Set.Icc (1 / 2) 1) := by
  sorry

/-- For what real values of $x$ is\[ \sqrt{x+\sqrt{2x-1}}+\sqrt{x-\sqrt{2x-1}}=A  \]
given

a) $A=\sqrt{2}$;

b) $A=1$;

c) $A=2$,

where only non-negative real numbers are admitted for square roots?
Solution:
(a) The equation holds for 1/2 ≤ x ≤ 1.
(b) The equation has no solution.
(c) The equation holds for 4x − 2=4 ⇒ x = 3/2.
-/
theorem imo_1959_p2.parts.b :
    {x : ℝ | 0 ≤ 2 * x - 1 ∧ 0 ≤ x + √(2 * x - 1) ∧
      0 ≤ x - √(2 * x - 1) ∧ √(x + √(2 * x - 1)) +
      √(x - √(2 * x - 1)) = 1} =
    answer(∅) := by
  sorry

/-- For what real values of $x$ is\[ \sqrt{x+\sqrt{2x-1}}+\sqrt{x-\sqrt{2x-1}}=A  \]
given

a) $A=\sqrt{2}$;

b) $A=1$;

c) $A=2$,

where only non-negative real numbers are admitted for square roots?

Solution:
(a) The equation holds for 1/2 ≤ x ≤ 1.
(b) The equation has no solution.
(c) The equation holds for 4x − 2=4 ⇒ x = 3/2.
-/
theorem imo_1959_p2.parts.c :
    {x : ℝ | 0 ≤ 2 * x - 1 ∧ 0 ≤ x + √(2 * x - 1) ∧
      0 ≤ x - √(2 * x - 1) ∧ √(x + √(2 * x - 1)) +
      √(x - √(2 * x - 1)) = 2} = answer({3 / 2}) := by
  sorry
