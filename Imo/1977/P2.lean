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
In a finite sequence of real numbers the sum of any seven successive terms is negative, and the sum of any eleven successive terms is positive. Determine the maximum number of terms in the sequence.

Solution: $16$
-/
@[imo_problem_subject algebra]
theorem imo_1977_p2 :
    IsGreatest
      {n : ℕ |
        ∃ x : ℕ → ℝ,
          (∀ i : ℕ, i + 7 ≤ n → ∑ k ∈ Finset.range 7, x (i + k) < 0) ∧
            ∀ i : ℕ, i + 11 ≤ n → ∑ k ∈ Finset.range 11, x (i + k) > 0}
      answer(16) := by
  sorry
