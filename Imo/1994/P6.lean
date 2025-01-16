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
Show that there exists a set $A$ of positive integers with the following property: for any infinite set $S$ of primes, there exist two positive integers $m\in A$ and $n\notin A$, each of which is a product of $k$ distinct elements of $S$ for some $k\ge 2$. -/
@[imo_problem_subject combinatorics]
theorem imo_1994_p6 (is_prod_of_k_distinct_elements : ℕ → ℕ → Set ℕ → Prop)
    (h₀ :
      is_prod_of_k_distinct_elements = fun n k S =>
        ∃ Sₙ : Finset ℕ, ↑Sₙ ⊆ S ∧ Finset.card Sₙ = k ∧ ∏ x ∈ Sₙ, x = n) :
    ∃ A : Set ℕ,
      (∀ a ∈ A, 0 < a) ∧
        ∀ S : Set ℕ,
          (S.Infinite ∧ ∀ s ∈ S, Nat.Prime s) →
            ∃ m ∈ A, ∃ n ∉ A, ∃ k ≥ 2, 0 < m ∧ 0 < n ∧
              is_prod_of_k_distinct_elements m k S ∧ is_prod_of_k_distinct_elements n k S := by
  sorry
