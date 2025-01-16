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
Prove that ${1\over\sin{2x}}+{1\over\sin{4x}}+\ldots+{1\over\sin{2^nx}}=\cot x-\cot{2^nx}$ for any natural number $n$ and any real $x$ (with $\sin{2^nx}$ non-zero). -/
@[imo_problem_subject algebra]
theorem imo_1966_p4 (n : ℕ) (x : ℝ) (h₀ : ∀ t : ℕ, t ≤ n → ∀ k : ℤ, x ≠ k * π / 2 ^ t)
    (h₁ : 0 < n) :
    ∑ i ∈ Finset.Icc 1 n, 1 / Real.sin (2 ^ i * x) = 1 / Real.tan x - 1 / Real.tan (2 ^ n * x) := by
  sorry
