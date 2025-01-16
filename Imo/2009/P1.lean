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
Let $ n$ be a positive integer and let $ a_1,a_2,a_3,\ldots,a_k$ $ ( k\ge 2)$ be distinct integers in the set $ { 1,2,\ldots,n}$ such that $ n$ divides $ a_i(a_{i + 1} - 1)$ for $ i = 1,2,\ldots,k - 1$. Prove that $ n$ does not divide $ a_k(a_1 - 1).$

[i]Proposed by Ross Atkins, Australia [/i]
-/
@[imo_problem_subject number_theory]
theorem imo_2009_p1 (n : ℕ) (k : ℕ) (a : ℕ → ℕ) (h₀ : n > 0) (h₁ : k ≥ 2)
    (h₂ : Set.InjOn a (Set.Icc 1 k)) (h₃ : Set.MapsTo a (Set.Icc 1 k) (Set.Icc 1 n))
    (h₄ : ∀ i : ℕ, i ∈ Set.Icc 1 (k - 1) → n ∣ a i * (a (i + 1) - 1)) :
    ¬ n ∣ a k * (a 1 - 1) := by
  sorry
