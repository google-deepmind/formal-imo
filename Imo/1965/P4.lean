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
Find all sets of four real numbers such that the sum of any one and the product of the other three is $2$. -/
@[imo_problem_subject algebra]
theorem imo_1965_p4 :
    {S : Multiset ℝ |
        ∃ x₁ x₂ x₃ x₄ : ℝ,
          x₁ + x₂ * x₃ * x₄ = 2 ∧
            x₂ + x₁ * x₃ * x₄ = 2 ∧
              x₃ + x₁ * x₂ * x₄ = 2 ∧ x₄ + x₁ * x₂ * x₃ = 2 ∧ S = {x₁, x₂, x₃, x₄}} =
      answer({{1, 1, 1, 1}, {3, -1, -1, -1}}) := by
  sorry
