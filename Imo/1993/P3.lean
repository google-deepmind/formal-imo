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
On an infinite chessboard a game is played as follows. At the start $n^2$ pieces are arranged in an $n\times n$ block of adjoining squares, one piece on each square. A move in the game is a jump in a horizontal or vertical direction over an adjacent occupied square to an unoccupied square immediately beyond. The piece which has been jumped over is removed. Find those values of $n$ for which the game can end with only one piece remaining on the board.
-/
@[imo_problem_subject combinatorics]
theorem imo_1993_p3 :
    { n : ℕ | 0 < n ∧
      ∃ (pieces : ℕ → Finset (ℤ × ℤ)) (jump_start : ℕ → ℤ × ℤ) (jump_dir : ℕ → ℤ × ℤ),
        pieces 0 = Finset.Icc 1 (n : ℤ) ×ˢ Finset.Icc 1 (n : ℤ) ∧
        -- Since each jump removes one piece, leaving one piece is equivalent to making n - 1 jumps
        ∀ i, i + 1 < n * n →
          jump_dir i ∈ ({(0, 1), (1, 0), (-1, 0), (0, -1)} : Set (ℤ × ℤ)) ∧
          jump_start i ∈ pieces i ∧ jump_start i + jump_dir i ∈ pieces i ∧
          jump_start i + 2 * jump_dir i ∉ pieces i ∧
          pieces (i + 1) = pieces i \ {jump_start i, jump_start i + jump_dir i}
            ∪ {jump_start i + 2 * jump_dir i}
    } = { n : ℕ | ¬3 ∣ n } := by
  sorry
