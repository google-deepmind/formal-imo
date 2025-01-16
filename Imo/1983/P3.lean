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
Let $a,b$ and $c$ be positive integers, no two of which have a common divisor greater than $1$. Show that $2abc-ab-bc-ca$ is the largest integer which cannot be expressed in the form $xbc+yca+zab$, where $x,y,z$ are non-negative integers. -/
@[imo_problem_subject number_theory]
theorem imo_1983_p3 (a b c : ℕ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c)
    (h₁ : Nat.gcd a b = 1 ∧ Nat.gcd a c = 1 ∧ Nat.gcd b c = 1) :
    IsGreatest
      -- ℤ to avoid subtraction issues.
      {n : ℤ | ¬∃ x y z : ℕ, n = x * b * c + y * c * a + z * a * b}
      (2 * a * b * c - a * b - b * c - a * c) := by
  sorry
