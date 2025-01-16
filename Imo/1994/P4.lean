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
Determine all ordered pairs $(m, n)$ of positive integers for which ${n^3+1 \over mn-1}$ is an integer. -/
@[imo_problem_subject number_theory]
theorem imo_1994_p4 :
    -- A fraction is an integer if and only if the numerator is divisible by the denominator.
    {(m, n) | (m : ℕ) (n : ℕ)
        (h₀ : 0 < m ∧ 0 < n)
        (h₁ : (m * n - 1) ∣ (n^3 + 1))} =
      answer({(1, 2), (2, 1), (1, 3), (3, 1), (2, 2), (2, 5), (5, 2), (3, 5), (5, 3)}) := by
  sorry
