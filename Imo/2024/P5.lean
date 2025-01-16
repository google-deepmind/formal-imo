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
open scoped Classical

/--
Turbo the snail plays a game on a board with $2024$ rows and 2023 columns. There
are hidden monsters in 2022 of the cells. Initially, Turbo does not know where any of the monsters
are, but he knows that there is exactly one monster in each row except the first row and the last
row, and that each column contains at most one monster.

Turbo makes a series of attempts to go from the first row to the last row. On each attempt, he chooses
to start on any cell in the first row, then repeatedly moves to an adjacent cell sharing a common
side. (He is allowed to return to a previously visited cell.) If he reaches a cell with a monster, his
attempt ends and he is transported back to the first row to start a new attempt. The monsters do
not move, and Turbo remembers whether or not each cell he has visited contains a monster. If he
reaches any cell in the last row, his attempt ends and the game is over.

Determine the minimum value of $n$ for which Turbo has a strategy that guarantees reaching the last
row on the $n^\mathrm{th}$ attempt or earlier, regardless of the locations of the monsters.

Solution: 3
-/
@[imo_problem_subject combinatorics]
theorem imo_2024_p5
    -- view the board by coordinates ℕ × ℕ,
    -- where the first row is represented by (n,0)
    -- therefore the last row is represented by (n, 2023)

    (isAdj : ℕ × ℕ → ℕ × ℕ → Prop)
    (isAdj_spec : ∀ i j : ℕ × ℕ, isAdj i j ↔ Nat.dist i.1 j.1 + Nat.dist i.2 j.2 = 1)
    -- the property of being a move sequence
    (isMoveSeq : (ℕ → ℕ × ℕ) → Prop)
    (isMoveSeq_spec : ∀ f : ℕ → ℕ × ℕ, isMoveSeq f ↔
      (f 0).2 = 0 ∧ (∀ i, isAdj (f i) (f (i + 1))) ∧
      (∀ i, (f i).1 < 2023) ∧ (∀ i, (f i).2 < 2024) ∧
      (∃ i, (f i).2 = 2023))

    -- for every row, say the column where the monster is
    (isMonsterSetup : (ℕ → ℕ) → Prop)
    (isMonsterSetup_spec : ∀ m, isMonsterSetup m ↔
      -- for every row in the range (0, 2023), the monster is in a valid column
      (∀ r ∈ Finset.Ioo 0 2023, m r < 2023) ∧
      -- the function m is injective on the set (0, 2023)
      Set.InjOn m (Finset.Ioo 0 2023))
    -- the property of being a valid strategy
    -- the first argument is the length of the strategy
    (isStrategy : (n : ℕ) → (∀ k < n, (∀ i < k, (ℕ → ℕ × ℕ) × ℕ) → ℕ → ℕ × ℕ) → Prop)
    (isStrategy_spec : ∀ n S, isStrategy n S ↔
      -- n is the length of the strategy, S is the strategy
      -- the strategy is valid iff, for every history consisting of valid move sequences,
      -- the strategy produces a valid move sequence
      ∀ k hk h, (∀ i hi, isMoveSeq (h i hi).1) → isMoveSeq (S k hk h))

    (trajectory : (n : ℕ) → (∀ k < n, (∀ i < k, (ℕ → ℕ × ℕ) × ℕ) → ℕ → ℕ × ℕ) →
      (ℕ → ℕ) → ∀ k < n, (ℕ → ℕ × ℕ))
    (breakPoint : (n : ℕ) → (∀ k < n, (∀ i < k, (ℕ → ℕ × ℕ) × ℕ) → ℕ → ℕ × ℕ) →
      (ℕ → ℕ) → ∀ k < n, ℕ)
    (breakPoint_spec : ∀ n S m k hk, isStrategy n S → isMonsterSetup m →
        IsLeast
          {i | (((trajectory n S m k hk i).2 ∈ Finset.Ioo 0 2023) ∧
                m (trajectory n S m k hk i).2 = (trajectory n S m k hk i).1) ∨
               (trajectory n S m k hk i).2 = 2023}
          (breakPoint n S m k hk))
    (trajectory_ind : ∀ n S m k (hk : k < n), isStrategy n S → isMonsterSetup m →
      trajectory n S m k (by omega) =
        S k hk fun i hi =>
          (trajectory n S m i (by omega), breakPoint n S m i (by omega)))

    (isWinningFor : (n : ℕ) → (∀ k < n, (∀ i < k, (ℕ → ℕ × ℕ) × ℕ) → ℕ → ℕ × ℕ) →
        (ℕ → ℕ) → Prop)
    (isWinningFor_spec : ∀ n S m, isStrategy n S → isMonsterSetup m →
      (isWinningFor n S m ↔ ∃ (i : ℕ) (H : i < n), ∃ j, (trajectory n S m i H j).2 = 2023)) :
    IsLeast {n | ∃ S, isStrategy n S ∧ ∀ m, isMonsterSetup m → isWinningFor n S m}
    answer(3) := by
  sorry
