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
Find all pairs $(m, n)$ of positive integers such that ${m^2 \over 2mn^2 - n^3 + 1}$ is a positive integer.

Solution: (2n, 1), (n, 2n), (8n^4 - n, 2n)
-/
@[imo_problem_subject number_theory]
theorem imo_2003_p2 :
    {(a, b) |
      (a : ℤ) (b : ℤ)
      (h₀ : 0 < a ∧ 0 < b)
      (h₁ : ∃ c : ℤ, 0 < c ∧ (a^2 : ℚ)/(2*a*(b^2) - b^3 + 1) = c)} =
    answer({(a, b) |
      (a : ℤ) (b : ℤ)
      (h₀ : ∃ n > 0,
        ((a = 2*n ∧ b = 1) ∨
        (a = n ∧ b = 2*n) ∨
        (a = 8*n^4 - n ∧ b = 2*n)))} ):= by
  sorry
