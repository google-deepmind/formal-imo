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
Let $P(x)$ be a polynomial with integer coefficients of degree $d>0$. Let $n$ be the number of distinct integer roots to $P(x)=1$ or $-1$. Prove that $n\le d+2$. -/
@[imo_problem_subject algebra]
theorem imo_1974_p6 (P : Polynomial ℤ) (h₀ : 1 ≤ degree P) (n : Finset ℤ)
    (h₁ : ∀ k, k ∈ n ↔ P.eval k ^ 2 = 1) : n.card - natDegree P ≤ 2 := by
  sorry
