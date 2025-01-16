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
Find all functions $ f: (0, \infty) \mapsto (0, \infty)$ (so $ f$ is a function from the positive real numbers) such that
\[ \frac {\left( f(w) \right)^2 + \left( f(x) \right)^2}{f(y^2) + f(z^2) } = \frac {w^2 + x^2}{y^2 + z^2}
\]
for all positive real numbers $ w,x,y,z,$ satisfying $ wx = yz.$


[i]Author: Hojoo Lee, South Korea[/i]

Solution: $f(x) = x$, $f(x) = \frac{1}{x}$.
-/
@[imo_problem_subject algebra]
theorem imo_2008_p4 (f : ℝ → ℝ) (h₁ : ∀ x > 0, f x > 0) :
    (∀ w x y z : ℝ, 0 < w → 0 < x → 0 < y → 0 < z → w * x = y * z →
      (f w ^ 2 + f x ^ 2) / (f (y ^ 2) + f (z ^ 2)) = (w ^ 2 + x ^ 2) / (y ^ 2 + z ^ 2)) ↔
    answer((∀ x > 0, f x = x) ∨ ∀ x > 0, f x = 1 / x) := by
  sorry
