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
Find all functions $f$ defined on the set of all real numbers with real values, such that $f(x^2+f(y))=y+f(x)^2$ for all $x,y$. -/
@[imo_problem_subject algebra]
theorem imo_1992_p2 (f : ℝ → ℝ) : (∀ x y, f (x ^ 2 + f y) = y + f x ^ 2) ↔ ∀ x, f x = x := by
  sorry
