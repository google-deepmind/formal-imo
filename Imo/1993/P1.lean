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
open Polynomial

/--
Let $f(x)=x^n+5x^{n-1}+3$, where $n>1$ is an integer. Prove that $f(x)$ cannot be expressed as the produce of two non-constant polynomials with integer coefficients. -/
@[imo_problem_subject algebra]
theorem imo_1993_p1 (n : ℕ) (h₀ : 1 < n)
    -- Working over ℤ is a convenient way to ensure that G and H have integer
    -- coefficients, and is fine because P=G*H in ℤ is equivalent to the same in
    -- ℝ.
    (P : Polynomial ℤ)
    (h₁ : P = X ^ n + C 5 * X ^ (n - 1) + C 3) :
    ∀ G H : Polynomial ℤ, G.degree ≥ 1 ∧ H.degree ≥ 1 → P ≠ G * H := by
  sorry
