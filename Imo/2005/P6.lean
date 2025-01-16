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
In a mathematical competition, in which $6$ problems were posed to the participants, every two of these problems were solved by more than $\frac 25$ of the contestants. Moreover, no contestant solved all the $6$ problems. Show that there are at least $2$ contestants who solved exactly $5$ problems each.

[i]Radu Gologan and Dan Schwartz[/i]
-/
@[imo_problem_subject combinatorics]
theorem imo_2005_p6 {S : Type _} [Fintype S] [DecidableEq S] (n : ℕ) (h₀ : 0 < n)
    (solved : S → Finset (Fin 6))
    (h₁ : Fintype.card S = n)
    (h₂ : ∀ p₁ p₂, p₁ ≠ p₂ →
      (2 : ℚ) / 5 * n < ((Finset.univ.filter fun s => p₁ ∈ solved s) ∩
                          Finset.univ.filter fun s => p₂ ∈ solved s).card)
    (h₃ : ∀ s, (solved s).card < 6) :
    2 ≤ (Finset.univ.filter fun s => (solved s).card = 5).card := by
  sorry
