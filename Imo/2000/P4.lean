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

open scoped Fin.CommRing


-- Solution: 12
/--
$100$ cards are numbered $1$ to $100$ (each card different) and placed in $3$ boxes (at least one card in each box). How many ways can this be done so that if two boxes are selected and a card is taken from each, then the knowledge of their sum alone is always sufficient to identify the third box? -/
@[imo_problem_subject combinatorics]
theorem imo_2000_p4
    -- We represent assignments as function (fin 100 → fin 3).
    -- For a box i and an assignment f, (sums i f) is the set of sums that can be
    -- made by taking cards from the two boxes other than i. So for an assignment
    -- f, the trick works iff (sums i f) are disjoint for distinct i.
    (sums : Fin 3 → (Fin 100 → Fin 3) → Set ℕ)
    (h₀ :
      ∀ i, sums i = fun f => {n : ℕ | ∃ b c : Fin 100, (b + c : ℕ) = n ∧ f b ≠ f c ∧ f b ≠ i ∧ f c ≠ i})
    (valid : (Fin 100 → Fin 3) → Prop)
    (h₁ : valid = fun f => (∀ (i j) (h : i ≠ j), sums i f ∩ sums j f = ∅) ∧ f.Surjective)
    (valid_set : Finset (Fin 100 → Fin 3)) (h₂ : ∀ f, f ∈ valid_set ↔ valid f) :
    valid_set.card = answer(12) := by
  sorry
