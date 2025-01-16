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
Let $n$ and $k$ be relatively prime positive integers with $k< n$. Each number in the set $M=\{1,2,3,\ldots,n-1\}$ is colored either blue or white. For each $i$ in $M$, both $i$ and $n-i$ have the same color. For each $i\ne k$ in $M$ both $i$ and $|i-k|$ have the same color. Prove that all numbers in $M$ must have the same color. -/
@[imo_problem_subject number_theory]
theorem imo_1985_p2 (n k : ℤ) (M : Finset ℤ) (h₀ : 0 < n ∧ 0 < k) (h₁ : k < n) (h₂ : IsCoprime k n)
    (h₃ : M = Finset.Icc 1 (n - 1)) (is_blue : ℤ → Prop) (h₄ : ∀ i ∈ M, is_blue i = is_blue (n - i))
    (h₅ : ∀ i ∈ M, i ≠ k → is_blue i = is_blue |i - k|) :
    ∀ i ∈ M, ∀ j ∈ M, is_blue i = is_blue j := by
  sorry
