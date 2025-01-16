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
Let $a$ and $b$ be positive integers such that $ab+1$ divides $a^2+b^2$. Show that $a^2+b^2\over ab+1$ is a perfect square. -/
@[imo_problem_subject number_theory]
theorem imo_1988_p6 (a b : ℕ) (h₀ : 0 < a ∧ 0 < b) (h₁ : a * b + 1 ∣ a ^ 2 + b ^ 2) :
    ∃ x : ℕ, (x ^ 2 : ℚ) = (a ^ 2 + b ^ 2) / (a * b + 1) := by
  sorry

