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
Determine all functions $f: R \to R$ such that $f(x - f(y)) = f(f(y)) + x f(y) + f(x) - 1$ for all $x, y$ in $R$. [$R$ is the reals.]

Solution: $f(x)=1-\frac{x^2}{2}$
-/
@[imo_problem_subject algebra]
theorem imo_1999_p6 (f : ℝ → ℝ) :
    (∀ x y, f (x - f y) = f (f y) + x * f y + f x - 1) ↔ ∀ x, f x = 1 - x ^ 2 / 2 := by
  sorry
