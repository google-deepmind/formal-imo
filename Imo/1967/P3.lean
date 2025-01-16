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
Let $k,m,n$ be natural numbers such that $m+k+1$ is a prime greater than $n+1$. Let $c_s=s(s+1)$. Prove that $$(c_{m+1}-c_k)(c_{m+2}-c_k)\ldots(c_{m+n}-c_k)$$ is divisible by the product $c_1c_2\ldots c_n$. -/
@[imo_problem_subject number_theory]
theorem imo_1967_p3 (k m n : ℕ) (c : ℕ → ℕ) (h₀ : 0 < k ∧ 0 < m ∧ 0 < n)
    (h₁ : ∀ s, c s = s * (s + 1)) (h₂ : Nat.Prime (k + m + 1)) (h₃ : n + 1 < k + m + 1) :
    (∏ i ∈ Finset.Icc 1 n, c i : ℤ) ∣ (∏ i ∈ Finset.Icc 1 n, (c (m + i) - c k) : ℤ) := by
  sorry
