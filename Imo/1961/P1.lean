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
@[imo_problem_subject algebra]
theorem imo_1961_p1 :
    {(a, b) | (a) (b) (x) (y) (z) (_ : x + y + z = a) (_ : x ^ 2 + y ^ 2 + z ^ 2 = b ^ 2)
      (_ : x * y = z ^ 2) (_ : 0 < x) (_ : 0 < y) (_ : 0 < z) (_ : [x, y, z].Nodup)}
    = answer({(a, b) | (a) (b) (_ : 0 < a) (_ : b^2 < a^2) (_ : a^2 < 3*b^2) }) := by
  sorry
