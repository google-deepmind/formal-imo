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

-- Derived from miniF2F's valid.lean
/-- Determine all integers greater than $1$ such that $2^n+1\over n^2$ is an integer. -/
@[imo_problem_subject number_theory]
theorem imo_1990_p3 :
    { n : ℕ | 1 < n ∧ n ^ 2 ∣ 2 ^ n + 1} = answer({3}) := by
  sorry
