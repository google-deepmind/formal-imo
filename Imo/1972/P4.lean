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

-- solution: all x_i are equal.
/-- Find all positive real solutions to:

$(x_1^2-x_3x_5)(x_2^2-x_3x_5)\le0$

$(x_2^2-x_4x_1)(x_3^2-x_4x_1)\le0$

$(x_3^2-x_5x_2)(x_4^2-x_5x_2)\le0$

$(x_4^2-x_1x_3)(x_5^2-x_1x_3)\le0$

$(x_5^2-x_2x_4)(x_1^2-x_2x_4)\le0$

Solution: $x_1 = x_2 = x_3 = x_4 = x_5$
-/
@[imo_problem_subject algebra]
theorem imo_1972_p4 (x₁ x₂ x₃ x₄ x₅ : ℝ) (h₀ : 0 < x₁ ∧ 0 < x₂ ∧ 0 < x₃ ∧ 0 < x₄ ∧ 0 < x₅)
    (h₁ : (x₁ ^ 2 - x₃ * x₅) * (x₂ ^ 2 - x₃ * x₅) ≤ 0)
    (h₂ : (x₂ ^ 2 - x₄ * x₁) * (x₃ ^ 2 - x₄ * x₁) ≤ 0)
    (h₃ : (x₃ ^ 2 - x₅ * x₂) * (x₄ ^ 2 - x₅ * x₂) ≤ 0)
    (h₄ : (x₄ ^ 2 - x₁ * x₃) * (x₅ ^ 2 - x₁ * x₃) ≤ 0)
    (h₅ : (x₅ ^ 2 - x₂ * x₄) * (x₁ ^ 2 - x₂ * x₄) ≤ 0) : x₁ = x₂ ∧ x₂ = x₃ ∧ x₃ = x₄ ∧ x₄ = x₅ := by
  sorry
