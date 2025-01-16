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
$a_1,\ldots,a_8$ are reals, not all zero. Let $c_n=a_1^n+a_2^n+\ldots+a_8^n$ for $n=1,2,3,\ldots$. Given that an infinite number of $c_n$ are zero, find all $n$ for which $c_n$ is zero.

Solution: $c_n = 0.$ implies $n$ is odd.
-/
@[imo_problem_subject number_theory]
theorem imo_1967_p5 (a : ℕ → ℝ) (c : ℕ → ℝ) (h₀ : ∃ k ∈ Finset.Icc 1 8, a k ≠ 0)
    (h₁ : ∀ n, c n = ∑ k ∈ Finset.Icc 1 8, a k ^ n) (h₂ : Set.Infinite {n : ℕ | c n = 0}) :
    ∀ n, c n = 0 ↔ Odd n := by
  sorry
