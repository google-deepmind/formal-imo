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
Given a set $M$ of $1985$ distinct positive integers, none of which has a prime divisor greater than $23$, prove that $M$ contains a subset of $4$ elements whose product is the $4$th power of an integer. -/
@[imo_problem_subject combinatorics]
theorem imo_1985_p4 (M : Finset ℕ) (h₀ : M.card = 1985) (h₁ : ∀ m ∈ M, 0 < m)
    (h₃ : ∀ m ∈ M, ∀ p : ℕ, Nat.Prime p ∧ p ∣ m → p ≤ 23) :
    ∃ A ⊆ M, A.card = 4 ∧ ∃ k : ℕ, ∏ a ∈ A, a = k ^ 4 := by
  sorry
