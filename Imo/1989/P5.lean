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
Prove that for each positive integer $n$ there exist $n$ consecutive positive integers none of which is a prime or a prime power. -/
@[imo_problem_subject number_theory]
theorem imo_1989_p5 (n : ℕ) (h : 0 < n) : ∃ k, ∀ nᵢ ∈ Finset.Icc (k + 1) (k + n), ¬IsPrimePow nᵢ := by
  sorry
