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
We call a positive integer [i]alternating[/i] if every two consecutive digits in its decimal representation are of different parity.

Find all positive integers $n$ such that $n$ has a multiple which is alternating.

Solution: all numbers except multiples of 20.
-/
@[imo_problem_subject number_theory]
theorem imo_2004_p6 (alternating : ℕ → Prop)
    (h₀ : ∀ n, alternating n ↔
      (Nat.digits 10 n).Chain' fun d1 d2 => (Odd d1 ↔ Even d2) ∧ (Even d1 ↔ Odd d2)) :
    {n : ℕ | 0 < n ∧ ∃ m, 0 < m ∧ n ∣ m ∧ alternating m} = answer({n : ℕ | 0 < n ∧ ¬20 ∣ n}) := by
  sorry
