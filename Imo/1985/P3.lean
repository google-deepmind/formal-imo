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
For any polynomial $P(x)=a_0+a_1x+\ldots+a_kx^k$ with integer coefficients, the number of odd coefficients is denoted by $o(P)$. For $i-0,1,2,\ldots$ let $Q_i(x)=(1+x)^i$. Prove that if $i_1,i_2,\ldots,i_n$ are integers satisfying $0\le i_1< i_2<\ldots< i_n$, then: $$o(Q_{i_1}+Q_{i_2}+\ldots+Q_{i_n})\ge o(Q_{i_1}).$$ -/
@[imo_problem_subject algebra]
theorem imo_1985_p3 (w : Polynomial ℤ → ℕ) (Q : ℕ → Polynomial ℤ) (i : ℕ → ℕ) (n : ℕ)
    (h₀ : ∀ P, w P = ((Finset.Icc 0 P.natDegree).filter fun i => Odd (P.coeff i)).card)
    (h₁ : ∀ j, Q j = (C 1 + X) ^ j) (h₂ : 0 < n) (h₃ : StrictMonoOn i (Set.Icc 1 n)) :
    w (∑ j ∈ Finset.Icc 1 n, Q (i j)) ≥ w (Q (i 1)) := by
  sorry
