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
Consider $9$ points in space, no $4$ coplanar. Each pair of points is joined by a line segment which is colored either blue or red or left uncolored. Find the smallest value of $n$ such that whenever exactly $n$ edges are colored, the set of colored edges necessarily contains a triangle all of whose edges have the same color.
Solution: n = 32
-/
@[imo_problem_subject combinatorics]
theorem imo_1992_p3
  --Consider $9$ points in space,
  {S : Finset (Fin 3 → ℝ)}
  {S_card : S.card = 9}
  --no $4$ coplanar. (Note that this is equivalent to the statement that no 4 points lie in an affine subspace of dimension ≤ 2, i.e.
  --an affine subspace that is not the whole ambiant space).
  {hS : ∀ T ⊆ S, T.card = 4 → (∃ (P : AffineSubspace ℝ (Fin 3 → ℝ)),
    T.toSet ⊆ P ∧ P < ⊤) → False} :
  IsLeast {n : ℕ |
    --Whenever we color exactly $n$ of the edges in either red or blue (edges are encoded as unordered pairs of points in S outside of the diagonal)
    ∀ Blue ⊆ S.sym2 \ S.image Sym2.diag, ∀ Red ⊆ S.sym2 \ S.image Sym2.diag, Blue ∩ Red = ⊥
      → (Blue ∪ Red).card = n →
    --the set of colored edges necessarily contains a triangle all of whose edges have the same color.
    ∃ P1 ∈ S, ∃ P2 ∈ S, ∃ P3 ∈ S, [P1, P2, P3].Nodup ∧ ({s(P1, P2), s(P2, P3), s(P3, P1)} ⊆ Blue
      ∨ {s(P1, P2), s(P2, P3), s(P3, P1)} ⊆ Red)}
    answer(32) := by
  sorry
