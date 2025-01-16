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
open scoped Topology

/--
Find all functions $f$ defined on the set of positive reals which take positive real values and satisfy:

$f(xf(y))=yf(x)$ for all $x,y$; and $f(x)\to0$ as $x\to\infty$.
-/
@[imo_problem_subject algebra]
theorem imo_1983_p1 :
    {f : ℝ → ℝ |
        (∀ x : ℝ, 0 < x → 0 < f x) ∧
        (∀ x y : ℝ, 0 < x ∧ 0 < y → f (x * f y) = y * f x) ∧
        Filter.Tendsto f Filter.atTop (𝓝 0)} =
      -- Note that these functions are unconstrained on the reals <= 0, so this set is infinite.
      answer({f : ℝ → ℝ | ∀ x : ℝ, 0 < x → f x = 1 / x}) := by
  sorry
