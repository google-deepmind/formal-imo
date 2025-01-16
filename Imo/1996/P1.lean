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
We are given a positive integer $r$ and a rectangular board divided into $20 \times 12$ unit squares. The following moves are permitted on the board: one can move from one square to another only if the distance between the centers of the two squares is $\sqrt{r}$. The task is to find a sequence of moves leading between two adjacent corners of the board which lie along the long side.

\noindent (a) Show that the task cannot be done if $r$ is divisible by $2£$ or $3$.

\noindent (b) Prove that the task is possible for $r = 73$.

\noindent (c) Can the task be done for $r = 97$?
-/
@[imo_problem_subject combinatorics]
theorem imo_1996_p1 (r : ℕ) (hr : 0 < r) (A B : Fin 20 × Fin 12)
    -- Define squares by lower-left coordinate.
    (hAB : A = (0, 0) ∧ B = (19, 0))
    -- Position at step t → valid-or-not.
    (valid_moves : (ℕ → Fin 20 × Fin 12) → Prop)
    (h₀ :
      valid_moves = fun moves =>
        (moves 0 = A ∧
          ∀ (t) (P₁) (_ : P₁ = moves t) (P₂) (_ : P₂ = moves (t + 1)),
            -- Distance between lower left coordinate instead of centers.
            √((P₁.1 - P₂.1) ^ 2 + (P₁.2 - P₂.2) ^ 2) = √r) ∧
        -- Lands at B
        ∃ t, moves t = B) :
    (2 ∣ r ∨ 3 ∣ r → ¬∃ moves, valid_moves moves) ∧
      (r = 73 → ∃ moves, valid_moves moves) ∧ (r = 97 → ¬∃ moves, valid_moves moves) := by
  sorry

theorem imo_1996_p1.parts.a (r : ℕ) (hr : 0 < r) (A B : Fin 20 × Fin 12)
    -- Define squares by lower-left coordinate.
    (hAB : A = (0, 0) ∧ B = (19, 0))
    -- Position at step t → valid-or-not.
    (valid_moves : (ℕ → Fin 20 × Fin 12) → Prop)
    (h₀ :
      valid_moves = fun moves =>
        (moves 0 = A ∧
          ∀ (t) (P₁) (_ : P₁ = moves t) (P₂) (_ : P₂ = moves (t + 1)),
            -- Distance between lower left coordinate instead of centers.
            √((P₁.1 - P₂.1) ^ 2 + (P₁.2 - P₂.2) ^ 2) = √r) ∧
        -- Lands at B
        ∃ t, moves t = B) :
    2 ∣ r ∨ 3 ∣ r → ¬∃ moves, valid_moves moves := by
  sorry

theorem imo_1996_p1.parts.b (r : ℕ) (hr : 0 < r) (A B : Fin 20 × Fin 12)
    -- Define squares by lower-left coordinate.
    (hAB : A = (0, 0) ∧ B = (19, 0))
    -- Position at step t → valid-or-not.
    (valid_moves : (ℕ → Fin 20 × Fin 12) → Prop)
    (h₀ :
      valid_moves = fun moves =>
        (moves 0 = A ∧
          ∀ (t) (P₁) (_ : P₁ = moves t) (P₂) (_ : P₂ = moves (t + 1)),
            -- Distance between lower left coordinate instead of centers.
            √((P₁.1 - P₂.1) ^ 2 + (P₁.2 - P₂.2) ^ 2) = √r) ∧
        -- Lands at B
        ∃ t, moves t = B) :
    r = 73 → ∃ moves, valid_moves moves := by
  sorry

theorem imo_1996_p1.parts.c (r : ℕ) (hr : 0 < r) (A B : Fin 20 × Fin 12)
    -- Define squares by lower-left coordinate.
    (hAB : A = (0, 0) ∧ B = (19, 0))
    -- Position at step t → valid-or-not.
    (valid_moves : (ℕ → Fin 20 × Fin 12) → Prop)
    (h₀ :
      valid_moves = fun moves =>
        (moves 0 = A ∧
          ∀ (t) (P₁) (_ : P₁ = moves t) (P₂) (_ : P₂ = moves (t + 1)),
            -- Distance between lower left coordinate instead of centers.
            √((P₁.1 - P₂.1) ^ 2 + (P₁.2 - P₂.2) ^ 2) = √r) ∧
        -- Lands at B
        ∃ t, moves t = B) :
    r = 97 → ¬∃ moves, valid_moves moves := by
  sorry
