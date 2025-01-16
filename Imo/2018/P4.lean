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
A [i]site[/i] is any point $(x, y)$ in the plane such that $x$ and $y$ are both positive integers less than or equal to 20.

Initially, each of the 400 sites is unoccupied. Amy and Ben take turns placing stones with Amy going first. On her turn, Amy places a new red stone on an unoccupied site such that the distance between any two sites occupied by red stones is not equal to $\sqrt{5}$. On his turn, Ben places a new blue stone on any unoccupied site. (A site occupied by a blue stone is allowed to be at any distance from any other occupied site.) They stop as soon as a player cannot place a stone.

Find the greatest $K$ such that Amy can ensure that she places at least $K$ red stones, no matter how Ben places his blue stones.

[i]Proposed by Gurgen Asatryan, Armenia[/i]

Solution: 100
-/
@[imo_problem_subject combinatorics]
theorem imo_2018_p4
    (distSq : Fin 20 × Fin 20 → Fin 20 × Fin 20 → ℤ)
    (distSq_def : ∀ i₁ j₁ i₂ j₂,
      distSq (i₁, j₁) (i₂, j₂) = ((i₁ : ℤ) - i₂) ^ 2 + ((j₁ : ℤ) - j₂) ^ 2)
    /- `IsValidForAmy r R B` is the predicate that Amy can place a (red) stone at
       `r` given that there are already red stones at `R` and blue stones at `B`. -/
    (IsValidForAmy : Fin 20 × Fin 20 → Set (Fin 20 × Fin 20) → Set (Fin 20 × Fin 20) → Prop)
    (IsValidForAmy_def : ∀ r R B, IsValidForAmy r R B ↔ r ∉ B ∧ r ∉ R ∧ ¬ ∃ r' ∈ R, distSq r r' = 5)
    /- `L R B` is the greatest `k` such that Amy can ensure that she places at least `k`
       more red stones given that it is her turn to play and there are already red stones at `R`
       and blue stones at `B`, and no matter how Ben places his blue stones. -/
    (L : Set (Fin 20 × Fin 20) → Set (Fin 20 × Fin 20) → ℕ)
    (hL₀ : ∀ R B, (¬ ∃ r, IsValidForAmy r R B) → L R B = 0)
    (hL₁ : ∀ R B, (∃ r, IsValidForAmy r R B) →
      L R B = 1 + sSup {sInf {L (R.insert r) (B.insert b) | b ∉ B ∪ R ∪ {r}} |
        (r) (hr : IsValidForAmy r R B)}) :
    L ∅ ∅ = answer(100) := by
  sorry
