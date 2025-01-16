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
Let $S=\{1,2,3,\ldots ,280\}$. Find the smallest integer $n$ such that each $n$-element subset of $S$ contains five numbers which are pairwise relatively prime.

Solution: 217
-/
@[imo_problem_subject combinatorics]
theorem imo_1991_p3 (pairwise_rel_prime : Finset ℕ → Prop)
    (h₀ : ∀ s, pairwise_rel_prime s ↔ ∀ a ∈ s, ∀ b ∈ s, a ≠ b → gcd a b = 1)
    (subset_property : Finset ℕ → Prop)
    (h₁ : ∀ s, subset_property s ↔ ∃ t ⊆ s, t.card = 5 ∧ pairwise_rel_prime t) :
    IsLeast {n : ℕ | ∀ s ⊆ Finset.Icc 1 280, s.card = n → subset_property s} 217 := by
  sorry
