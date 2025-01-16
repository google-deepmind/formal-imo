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

-- Derived from miniF2F's test.lean
import Imo.ProblemImports

open scoped Real
open scoped Nat

/--
Find all integers $a,b,c$ satisfying $1< a< b< c$ such that $(a-1)(b-1)(c-1)$ is a divisor of $abc-1$. -/
@[imo_problem_subject number_theory]
theorem imo_1992_p1 :
    {(a, b, c) |
      (a : ℤ) (b : ℤ) (c : ℤ)
      (h₀ : 1 < a ∧ a < b ∧ b < c)
      (h₁ : (a - 1) * (b - 1) * (c - 1)∣(a * b * c - 1))} =
        answer({(2, 4, 8), (3, 5, 15)}) := by
  sorry
