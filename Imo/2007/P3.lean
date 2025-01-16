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
In a mathematical competition some competitors are friends. Friendship is always mutual. Call a group of competitors a [i]clique[/i] if each two of them are friends. (In particular, any group of fewer than two competitiors is a clique.) The number of members of a clique is called its [i]size[/i].

Given that, in this competition, the largest size of a clique is even, prove that the competitors can be arranged into two rooms such that the largest size of a clique contained in one room is the same as the largest size of a clique contained in the other room.

[i]Author: Vasily Astakhov, Russia[/i]
-/
@[imo_problem_subject combinatorics]
theorem imo_2007_p3 (n : ℕ)
    (C : SimpleGraph (Fin n)) [DecidableRel C.Adj] (largest_clique_size_in : Finset (Fin n) → ℕ)
    (h₀ : largest_clique_size_in = fun S =>
      (S.powerset.filter fun s : Finset (Fin n) => C.IsClique s).sup Finset.card)
    (h₁ : Even (largest_clique_size_in Finset.univ)) :
    ∃ R₁ R₂, IsCompl R₁ R₂ ∧ largest_clique_size_in R₁ = largest_clique_size_in R₂ := by
  sorry
