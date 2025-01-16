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
Is it possible to choose $1983$ distinct positive integers, all less than or equal to $10^5$, no three of which are consecutive terms of an arithmetic progression?

Solution: yes
-/
@[imo_problem_subject combinatorics]
theorem imo_1983_p5 :
    (∃ S : Finset ℕ,
      S.card = 1983 ∧
      (∀ s ∈ S, 0 < s ∧ s ≤ 10 ^ 5) ∧
      ¬∃ a ∈ S, ∃ b ∈ S, ∃ c ∈ S, ∃ (h : a ≠ b ∧ a ≠ c ∧ b ≠ c), a + c = 2 * b)
    ↔ answer(True) := by
  sorry
