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

/--
Let $k$ be a positive integer and let $S$ be a finite set of odd prime numbers. Prove that there is at most one way (up to rotation and reflection) to place the elements of $S$ around the circle such that the product of any two neighbors is of the form $x^2+x+k$ for some positive integer $x$. -/
@[imo_problem_subject number_theory]
theorem imo_2022_p3
    -- Let $k$ be a positive integer
    (k : ℕ) (hk : 0 < k)
    -- let $S$ be a finite set of odd prime numbers
    (S : Finset ℕ) (hs : ∀ n ∈ S, n.Prime ∧ Odd n)
    -- the relation "up to rotation and reflection"
    (same : Setoid (Fin S.card → ℕ))
    (hRel_iff : ∀ x y, same.Rel x y ↔ (∃ i : Fin S.card, x ∘ (i + ·) = y) ∨ (∃ i, x ∘ (i - ·) = y) ∨ S.card = 0)
    -- the set of all possible solutions up to the relation, which are genuinely arrangements and satisfy the required constraint
    (sols : Set (Quotient same))
    (hS : ∀ p : Fin S.card → ℕ,
      ⟦p⟧ ∈ sols ↔ Set.range p = S ∧ ∀ i, ∃ x, p i * p (finRotate _ i) = x^2 + x + k) :
  -- has cardinality at most one
  Cardinal.mk sols ≤ 1 := by
  sorry
