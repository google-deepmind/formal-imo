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
$a$ and $b$ are real numbers for which the equation $x^4+ax^3+bx^2+ax+1=0$ has at least one real solution. Find the least possible value of $a^2+b^2$. -/
@[imo_problem_subject algebra]
theorem imo_1973_p3 :
    IsLeast
      {(a^2 + b^2) | (a : ℝ) (b : ℝ) (h : ∃ x, x^4 + a * x^3 + b * x^2 + a * x + 1 = 0)}
      (4 / 5) := by
  sorry
