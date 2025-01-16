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
A deck of $n > 1$ cards is given. A positive integer is written on each card. The deck has the property that the arithmetic mean of the numbers on each pair of cards is also the geometric mean of the numbers on some collection of one or more cards.
For which $n$ does it follow that the numbers on the cards are all equal?

[i]Proposed by Oleg Košik, Estonia[/i]
-/
@[imo_problem_subject number_theory]
theorem imo_2020_p5 :
    {n : ℕ | 1 < n ∧
      -- each card is assigned a positive integer
      ∀ (value : Fin n → ℕ+)
        (h : ∀ i j : Fin n, i ≠ j →
          ∃ cs : Finset (Fin n), cs.Nonempty ∧
            -- AM of pair equals GM of set
            (value i + value j : ℝ) / 2 = (∏ c ∈ cs, value c) ^ (cs.card⁻¹ : ℝ)),
        -- numbers on the cards are all equal
        ∃ v, value = Function.const _ v} =
    -- it follows for all n > 1
    answer(Set.Ioi 1) := by
  sorry
