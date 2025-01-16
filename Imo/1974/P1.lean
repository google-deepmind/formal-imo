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
Three players play the following game. There are three cards each with a different positive integer. In each round, the cards are randomly dealt to the players and each receives the number of counters on his card. After two or more rounds, one player has received $20$, another $10$ and the third $9$ counters. In the last round the player with $10$ received the largest number of counters. Who received the middle number on the first round?

Solution: C.
-/
@[imo_problem_subject combinatorics]
theorem imo_1974_p1 (p q r t : ℕ) (h₀ : 0 < p ∧ p < q ∧ q < r)
    -- time → player → points.
    (points : ℕ → Fin 3 → ℕ)
    (h₁ : ∀ tᵢ, Set.range (points tᵢ) = {p, q, r}) (h₂ : 2 ≤ t)
    (h₃ : ∑ tᵢ ∈ Finset.range t, points tᵢ = ![20, 10, 9]) (h₄ : points (t - 1) 1 = r) :
    points 0 2 = q := by
  sorry
