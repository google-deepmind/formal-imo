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
Let $P(x)$ be a polynomial of degree $n > 1$ with integer coefficients and let $k$ be a positive integer. Consider the polynomial $Q(x) = P(P(\ldots P(P(x)) \ldots ))$, where $P$ occurs $k$ times. Prove that there are at most $n$ integers $t$ such that $Q(t) = t$. -/
@[imo_problem_subject number_theory]
theorem imo_2006_p5 (P Q : Polynomial ℤ)
    (k n : ℕ) (h₀ : P.natDegree = n ∧ n > 1) (h₁ : 0 < k)
    (h₂ : Q = P.comp^[k] Polynomial.X) :
    ∃ T : Finset ℤ, (∀ t, t ∈ T ↔ Q.eval t = t) ∧ T.card ≤ n := by
  sorry
