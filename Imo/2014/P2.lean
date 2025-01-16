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
Let $n \ge 2$ be an integer. Consider an $n \times n$ chessboard consisting of $n^2$ unit squares. A configuration of $n$ rooks on this board is [i]peaceful[/i] if every row and every column contains exactly one rook. Find the greatest positive integer $k$ such that, for each peaceful configuration of $n$ rooks, there is a $k \times k$ square which does not contain a rook on any of its $k^2$ unit squares.

Solution: $k = \lceil \sqrt{n}\rceil  - 1$
-/
@[imo_problem_subject combinatorics]
theorem imo_2014_p2 (n : ℕ) (h₁ : 2 ≤ n)
    -- Define peaceful - unique rook in each row and column.
    (peaceful : (Fin n → Fin n × Fin n) → Prop)
    (h₂ : peaceful = fun r => ∀ x, (∃! y, (r y).1 = x) ∧ ∃! y, (r y).2 = x)
    -- Define k_empty - the property of having an empty k × k square.
    (k_empty : Fin n → (Fin n → Fin n × Fin n) → Prop)
    (h₃ : ∀ k : Fin n, k_empty k = fun r => ∃ x y : Fin n,
      -- The square is in bounds.
      (x : ℕ) + k ≤ n ∧
      (y : ℕ) + k ≤ n ∧
      -- No (r t) is in [x, x+k) × [y, y+k).
      ∀ t, ¬ (x ≤ (r t).1 ∧ ↑(r t).1 < (x : ℕ) + k ∧ y ≤ (r t).2 ∧ ↑(r t).2 < (y : ℕ) + k)) :
    IsGreatest
      {(k : ℕ) | (k : Fin n) (H : ∀ r : Fin n → (Fin n × Fin n), peaceful r → (k_empty k) r)}
      answer(⌈√n⌉₊ - 1) := by
  sorry
