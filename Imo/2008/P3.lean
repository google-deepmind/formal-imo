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
Prove that there are infinitely many positive integers $ n$ such that $ n^{2} + 1$ has a prime divisor greater than $ 2n + \sqrt {2n}$.

[i]Author: Kestutis Cesnavicius, Lithuania[/i]
-/
@[imo_problem_subject number_theory]
theorem imo_2008_p3 :
    ∀ N : ℕ,
      ∃ n : ℕ, n ≥ N ∧ ∃ p : ℕ, Nat.Prime p ∧ p ∣ n ^ 2 + 1 ∧ (p : ℝ) > 2 * n + √(2 * n) := by
  sorry
