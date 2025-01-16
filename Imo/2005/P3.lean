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

/-- Let $x,y,z$ be three positive reals such that $xyz\geq 1$. Prove that
\[ \frac { x^5-x^2 }{x^5+y^2+z^2} + \frac {y^5-y^2}{x^2+y^5+z^2} + \frac {z^5-z^2}{x^2+y^2+z^5} \geq 0 . \]
[i]Hojoo Lee, Korea[/i]
-/
@[imo_problem_subject algebra]
theorem imo_2005_p3 (x y z : ℝ) (h₀ : 0 < x ∧ 0 < y ∧ 0 < z) (h₁ : x * y * z ≥ 1) :
    0 ≤ (x ^ 5 - x ^ 2) / (x ^ 5 + y ^ 2 + z ^ 2) +
        (y ^ 5 - y ^ 2) / (x ^ 2 + y ^ 5 + z ^ 2) +
        (z ^ 5 - z ^ 2) / (x ^ 2 + y ^ 2 + z ^ 5) := by
  sorry
