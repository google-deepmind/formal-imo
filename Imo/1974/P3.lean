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
Prove that $\sum_0^n{2n+1\choose2k+1}2^{3k}$ is not divisible by $5$ for any non-negative integer $n$. -/
@[imo_problem_subject number_theory]
theorem imo_1974_p3 (n : ℕ) :
    ¬5 ∣ ∑ k ∈ Finset.range (n + 1), Nat.choose (2 * n + 1) (2 * k + 1) * 2 ^ (3 * k) := by
  sorry
