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
Let $a$ and $b$ be positive integers. Show that if $4ab - 1$ divides $(4a^{2} - 1)^{2}$, then $a = b$.

[i]Author: Kevin Buzzard and Edward Crane, United Kingdom [/i]
-/
@[imo_problem_subject number_theory]
theorem imo_2007_p5 (a b : ℕ) (h₀ : 0 < a ∧ 0 < b) (h₁ : 4 * a * b - 1 ∣ (4 * a ^ 2 - 1) ^ 2) :
    a = b := by
  sorry
