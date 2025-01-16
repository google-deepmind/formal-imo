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

-- We formalise this "construct" problem as a "there exists" problem.
/--
Construct a function from the set of positive rational numbers into itself such that $f(xf(y))={f(x)\over y}$ for all $x,y$. -/
@[imo_problem_subject algebra]
theorem imo_1990_p4 :
    ∃ (f : ℚ → ℚ) (h : ∀ x, 0 < x → 0 < f x), ∀ x y, 0 < x ∧ 0 < y → f (x * f y) = f x / y := by
  sorry
