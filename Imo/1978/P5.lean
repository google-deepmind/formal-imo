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
$\{a_k\}$ is a sequence of distinct positive integers. Prove that for all positive integers $n, \sum_1^n{a_k\over k^2}\ge\sum_1^n{1\over k}$. -/
@[imo_problem_subject algebra]
theorem imo_1978_p5 (n : ℕ+) (f : ℕ+ → ℕ+) (h₀ : Function.Injective f)
    (h₁ : Set.MapsTo f (Set.Ici 1) (Set.Ici 1)) :
    ∑ k ∈ Finset.Icc 1 n, (1 : ℝ) / k ≤ ∑ k ∈ Finset.Icc 1 n, (f k / k ^ 2 : ℝ) := by
  sorry
