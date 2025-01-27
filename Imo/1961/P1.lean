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

-- Derived from miniF2F's valid.lean
/--
Solve the following equations for $x,y$ and $z$: $$x+y+z=a; x^2+y^2+z^2=b^2; xy=z^2.$$ What conditions must $a$ and $b$ satisfy for $x,y$ and $z$ to be distinct positive numbers?
Solution: a > 0 and b^2 < a^2 < 3b^2.
-/
/-
Note: the informal question also asks to solve for $x, y$ and $z$, however we diverge slightly from this
in only asking for the conditions on $a$ and $b$ for the solutions to be distinct positive reals. This is
because we do not support multiple `answer` in problem statements.
-/
@[imo_problem_subject algebra]
theorem imo_1961_p1 (a b : ℝ) :
    (∃ᵉ (x > 0) (y > 0) (z > 0),
      x + y + z = a ∧
      x ^ 2 + y ^ 2 + z ^ 2 = b ^ 2 ∧
      x * y = z ^ 2 ∧
      [x, y, z].Nodup) ↔
    answer(b ^ 2 < a ^ 2 ∧ a ^ 2 < 3 * b ^ 2) := by
  sorry
