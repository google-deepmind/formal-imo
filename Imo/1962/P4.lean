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
/-- Find all real solutions to $\cos^2x+\cos^2{2x}+\cos^2{3x}=1$.
Solution: x = ± α + 2πℤ where α ∈ {π/2, π/4, π/6}
-/
@[imo_problem_subject algebra]
theorem imo_1962_p4 :
    {x : ℝ | Real.cos x ^ 2 + Real.cos (2 * x) ^ 2 + Real.cos (3 * x) ^ 2 = 1} =
    answer(
      {(m : ℝ) * π + π / 2 | m : ℤ} ∪
      {(m : ℝ) * π + π / 4 | m : ℤ} ∪
      {(m : ℝ) * π - π / 4 | m : ℤ} ∪
      {(m : ℝ) * π + π / 6 | m : ℤ} ∪
      {(m : ℝ) * π - π / 6 | m : ℤ}) := by
  sorry
