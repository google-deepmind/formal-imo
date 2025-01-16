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
Let $m$ and $n$ be positive integers. Let $a_1, a_2, \ldots , a_m$ be distinct elements of $\{1, 2, \ldots , n\}$ such that whenever $a_i+a_j \le n$ for some $i,j$ (possibly the same) we have $a_i+a_j=a_k$ for some $k$. Prove that: $$(a_1+\ldots a_m)\ge {(n+1) \over 2}.$$ -/
@[imo_problem_subject algebra]
theorem imo_1994_p1 (m n : ℕ) (a : ℕ → ℕ) (h₀ : 0 < m ∧ 0 < n)
    (h₁ : Set.MapsTo a (Set.Icc 1 m) (Set.Icc 1 n)) (h₂ : Set.InjOn a (Set.Icc 1 m))
    (h₃ :
      ∀ i ∈ Finset.Icc 1 m, ∀ j ∈ Finset.Icc 1 m,
        i ≤ j ∧ a i + a j ≤ n → ∃ k ∈ Finset.Icc 1 m, a i + a j = a k) :
    (n + 1 : ℚ) / 2 ≤ (∑ i ∈ Finset.Icc 1 m, a i : ℚ) / m := by
  sorry
