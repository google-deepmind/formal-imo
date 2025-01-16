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
Prove that we can find an infinite set of positive integers of the from $2^n-3$ (where $n$ is a positive integer) every pair of which are relatively prime. -/
@[imo_problem_subject number_theory]
theorem imo_1971_p3 :
    ∃ S : Set ℕ, (∀ s ∈ S, (∃ n : ℕ, n > 0 ∧ s = 2 ^ n - 3) ∧ s > 0) ∧ S.Pairwise Nat.Coprime ∧ S.Infinite := by
  sorry
