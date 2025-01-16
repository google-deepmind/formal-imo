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

theorem imo_2023_p3.parts.subset (k : ℕ) (hk : 2 ≤ k) :
    -- for simplicity we index our sequences from `0` not `1`.
    {a : ℕ → ℕ |
      (∀ i, 0 < a i) ∧
        ∃ P : Polynomial ℕ, P.degree = k ∧ P.Monic ∧ ∀ n, P.eval (a n) = ∏ i ∈ Finset.Ioc n (n + k), a i} ⊆
    {fun i => m*i + c | (m : ℕ) (c : ℕ) (hc : c > 0)} := by
  sorry

theorem imo_2023_p3.parts.superset (k : ℕ) (hk : 2 ≤ k) :
    -- for simplicity we index our sequences from `0` not `1`.
    {a : ℕ → ℕ |
      (∀ i, 0 < a i) ∧
        ∃ P : Polynomial ℕ, P.degree = k ∧ P.Monic ∧ ∀ n, P.eval (a n) = ∏ i ∈ Finset.Ioc n (n + k), a i} ⊇
    {fun i => m*i + c | (m : ℕ) (c : ℕ) (hc : c > 0)} := by
  sorry

/--
For each integer $k \geq 2$, determine all infinite sequences of positive integers $a_1, a_2, \dots$ for which there exists a polynomial $P$ of the form $P(x) = x^k + c_{k-1}x^{k-1} + \cdots + c_1x + c_0$, where $c_0, c_1, \dots, c_{k-1}$ are non-negative integers such that $P(a_n) = a_{n+1} a_{n+2} \cdots a_{n+k}$ for every integer $n \geq 1$.
Solution: $a_1, a_2, \dots$ is an increasing arithmetic sequence
-/
@[imo_problem_subject algebra]
theorem imo_2023_p3 (k : ℕ) (hk : 2 ≤ k) :
    -- for simplicity we index our sequences from `0` not `1`.
    {a : ℕ → ℕ |
      (∀ i, 0 < a i) ∧
        ∃ P : Polynomial ℕ, P.degree = k ∧ P.Monic ∧ ∀ n, P.eval (a n) = ∏ i ∈ Finset.Ioc n (n + k), a i} =
    answer({fun i => m*i + c | (m : ℕ) (c : ℕ) (hc : c > 0)}) := by
  apply Set.Subset.antisymm
  · exact imo_2023_p3.parts.subset _ hk
  · exact imo_2023_p3.parts.superset _ hk
