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
/--
Find one pair of positive integers $a,b$ such that $ab(a+b)$ is not divisible by $7$, but $(a+b)^7-a^7-b^7$ is divisible by $7^7$. -/
@[imo_problem_subject number_theory]
theorem imo_1984_p2 :
    ∃ (a : ℕ) (b : ℕ), 0 < a ∧ 0 < b ∧ ¬7 ∣ a * b * (a + b) ∧ 7 ^ 7 ∣ (a + b) ^ 7 - a ^ 7 - b ^ 7 := by
  sorry
