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

-- TODO: This doesn't cover necessary and sufficient conditions for equality.
/--
Given real numbers $x_1,x_2,y_1,y_2,z_1,z_2$ satisfying $x_1>0,x_2>0,x_1y_1>z_1^2$, and $x_2y_2>z_2^2$, prove that: $${8\over(x_1+x_2)(y_1+y_2)-(z_1+z_2)^2}\le{1\over x_1y_1-z_1^2}+{1\over x_2y_2-z_2^2}.$$ Give necessary and sufficient conditions for equality. -/
@[imo_problem_subject algebra]
theorem imo_1969_p6 (x_1 x_2 y_1 y_2 z_1 z_2 : ℝ) (h₀ : 0 < x_1) (h₁ : 0 < x_2)
    (h₂ : x_1 * y_1 > z_1 ^ 2) (h₃ : x_2 * y_2 > z_2 ^ 2)
    (h₄ : (x_1 + x_2) * (y_1 + y_2) - (z_1 + z_2) ^ 2 ≠ 0) :
    8 / ((x_1 + x_2) * (y_1 + y_2) - (z_1 + z_2) ^ 2) ≤
      1 / (x_1 * y_1 - z_1 ^ 2) + 1 / (x_2 * y_2 - z_2 ^ 2) := by
  sorry
