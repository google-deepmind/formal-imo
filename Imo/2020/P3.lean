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
There are $4n$ pebbles of weights $1, 2, 3, \dots, 4n.$ Each pebble is coloured in one of $n$ colours and there are four pebbles of each colour. Show that we can arrange the pebbles into two piles so that the following two conditions are both satisfied:
[list]
 [*]The total weights of both piles are the same.
[*] Each pile contains two pebbles of each colour.
[/list]
[i]Proposed by Milan Haiman, Hungary and Carl Schildkraut, USA[/i]
-/
@[imo_problem_subject combinatorics]
theorem imo_2020_p3 (n : ℕ) (color : Set.Icc 1 (4 * n) → Fin n)
    (h₀ : ∀ c : Fin n, (Finset.univ.filter fun p => color p = c).card = 4) :
    ∃ (S₁ S₂ : Finset (Set.Icc 1 (4 * n))) (h₁ : IsCompl S₁ S₂),
      (∑ w₁ ∈ S₁, (w₁ : ℕ)) = ∑ w₂ ∈ S₂, (w₂ : ℕ) ∧
        ∀ c : Fin n,
          (S₁.filter fun p => color p = c).card = 2 ∧ (S₂.filter fun p => color p = c).card = 2 := by
  sorry
