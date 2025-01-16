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

-- Derived from miniF2F's test.lean
import Imo.ProblemImports

open scoped Real
open scoped Nat

/-- The coefficients $a_{ij}$ of the following equations

$a_{11}x_1+a_{12}x_2+a_{13}x_3=0$

$a_{21}x_1+a_{22}x_2+a_{23}x_3=0$

$a_{31}x_1+a_{32}x_2+a_{33}x_3=0$

\noindent satisfy the following: (a) $a_{11},a_{22},a_{33}$ are positive, (b) other $a_{ij}$ are negative, (c) the sum of the coefficients in each equation is positive. Prove that the only solution is $x_1=x_2=x_3=0$.
-/
@[imo_problem_subject algebra]
theorem imo_1965_p2 (x y z : ℝ) (a₁₁ a₁₂ a₁₃ a₂₁ a₂₂ a₂₃ a₃₁ a₃₂ a₃₃ : ℝ)
    (h₀ : 0 < a₁₁ ∧ 0 < a₂₂ ∧ 0 < a₃₃) (h₁ : a₁₂ < 0 ∧ a₁₃ < 0) (h₂ : a₂₁ < 0 ∧ a₂₃ < 0)
    (h₃ : a₃₁ < 0 ∧ a₃₂ < 0) (h₄ : 0 < a₁₁ + a₁₂ + a₁₃) (h₅ : 0 < a₂₁ + a₂₂ + a₂₃)
    (h₆ : 0 < a₃₁ + a₃₂ + a₃₃) (h₇ : a₁₁ * x + a₁₂ * y + a₁₃ * z = 0)
    (h₈ : a₂₁ * x + a₂₂ * y + a₂₃ * z = 0) (h₉ : a₃₁ * x + a₃₂ * y + a₃₃ * z = 0) :
    x = 0 ∧ y = 0 ∧ z = 0 := by
  sorry
