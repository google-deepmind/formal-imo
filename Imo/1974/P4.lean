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

open Classical
open scoped Function
open scoped Fin.CommRing

/--
An $8\times8$ chessboard is divided into $p$ disjoint rectangles (along the lines between the squares), so that each rectangle has the same number of white squares as black squares, and each rectangle has a different number of squares. Find the maximum possible value of $p$ and all possible sets of rectangle sizes.

Express the possible sets of rectangle sizes as a count of how many white squares each rectange
contains, ordered from smallest to largest.

Solution: p = 7

$\{ a_1, a_2, \ldots, a_7 \} =
 \{ 1, 2, 3, 4, 5, 8, 9 \}$ or
$\{ 1, 2, 3, 4, 6, 7, 9 \}$ or
$\{ 1, 2, 3, 5, 6, 7, 8 \}$ or
$\{ 1, 2, 3, 4, 5, 7, 10\}$.
-/
@[imo_problem_subject combinatorics]
theorem imo_1974_p4
    (is_white : Fin 8 × Fin 8 → Prop)
    (is_white_def : ∀ i j, is_white ⟨i, j⟩ ↔ Odd (i + j))
    (a : Finset (Fin 8 × Fin 8) → ℕ)
    (a_def : ∀ s, a s = (s.filter is_white).card)
    (valid_decomposition : (p : ℕ) → (Fin p → Finset (Fin 8 × Fin 8)) → Prop)
    (valid_decomposition_def : ∀ p D, valid_decomposition p D ↔
      Finset.univ.biUnion D = Finset.univ ∧
      Pairwise (Disjoint on D) ∧
      (∀ i, (D i).Nonempty) ∧
      (∀ i, ∃ x₁ x₂ y₁ y₂, D i = Finset.Icc x₁ x₂ ×ˢ Finset.Icc y₁ y₂) ∧
      (∀ i, a (D i) = ((D i).filter (Not ∘ is_white)).card) ∧
      StrictMono (a ∘ D)) :
    IsGreatest {p | ∃ D, valid_decomposition p D} 7 ∧
      {c | ∃ D, valid_decomposition 7 D ∧ c = a ∘ D} =
      {![1, 2, 3, 4, 5, 8, 9],
       ![1, 2, 3, 4, 6, 7, 9],
       ![1, 2, 3, 5, 6, 7, 8],
       ![1, 2, 3, 4, 5, 7, 10]} := by
  sorry
