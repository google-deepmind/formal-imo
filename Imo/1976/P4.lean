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

/-- Determine the largest number which is the product of positive integers with sum $1976$.

Solution: $2 * (3 ^ 658)$
-/
@[imo_problem_subject number_theory]
theorem imo_1976_p4 :
    IsGreatest {m : ℕ | ∃ A : Multiset ℕ, A.prod = m ∧ A.sum = 1976} answer(2 * 3 ^ 658) := by
  sorry
