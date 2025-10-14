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

/--
Given an $n \times n$ square board, with $n$ even. Two distinct squares of the board are said to be adjacent if they share a common side, but a square is not adjacent to itself. Find the minimum number of squares that can be marked so that every square (marked or not) is adjacent to at least one marked square.

Solution: $\frac {n(n+2)}{4}$
-/
@[imo_problem_subject combinatorics]
theorem imo_1999_p3 (n : ℕ) (h₀ : 0 < n ∧ Even n) [NeZero n]
    -- Bounded adjacent indices in 1D.
    (adj_idx : Fin n → Finset (Fin n))
    -- Bounded adjacent indices in 2D.
    (neighbors : Fin n × Fin n → Finset (Fin n × Fin n))
    (h₁ :
      adj_idx = fun i : Fin n =>
        (if i > 0 then {i - 1} else ∅) ∪ if i < Fin.last (n - 1) then {i + 1} else ∅)
    (h₂ : neighbors = fun c => adj_idx c.1 ×ˢ {c.2} ∪ {c.1} ×ˢ adj_idx c.2) :
    IsLeast
      {m : ℕ |
        ∃ (mark : Fin n × Fin n → Prop) (_ : DecidablePred mark),
          -- Exactly m marked cells
          (Finset.univ.filter mark).card = m ∧
          -- Each cell has a marked neighbor
          ∀ cell, ∃ cellₙ, cellₙ ∈ neighbors cell ∧ mark cellₙ}
      -- Divisibility is implied.
      (n * (n + 2) / 4) := by
  sorry
