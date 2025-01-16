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
Let $m$ and $n$ be positive integers such that $${m\over n}=1-{1\over2}+{1\over3}-{1\over4}+\ldots-{1\over1318}+{1\over1319}.$$ Prove that $m$ is divisible by $1979$. -/
@[imo_problem_subject number_theory]
theorem imo_1979_p1 (p q : ℕ) (h₀ : 0 < q)
    (h₁ : ∑ k ∈ Finset.Icc (1 : ℕ) 1319, (-1) ^ (k + 1) * ((1 : ℝ) / k) = p / q) : 1979 ∣ p := by
  sorry
