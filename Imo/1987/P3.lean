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
Let $x_1,x_2,\ldots,x_n$ be real numbers satisfying $x_1^2+x_2^2+\ldots+x_n^2=1$. Prove that for every integer $k\ge2$ there are integers $a_1,a_2,\ldots,a_n$, not all zero, such that $|a_i|\le k-1$ for all $i$, and $|a_1x_1+a_2x_2+\ldots+a_nx_n|\le{(k-1)\sqrt n\over k^n-1}$. -/
@[imo_problem_subject algebra]
theorem imo_1987_p3
    (n : ℕ) (h₀ : 1 ≤ n) (x : ℕ → ℝ) (h₁ : ∑ i ∈ Finset.Icc 1 n, x i ^ 2 = 1)
    (k : ℕ)
    (h₂ : 2 ≤ k) :
    -- there are integers $a_1,a_2,\ldots,a_n$
    ∃ a : ℕ → ℤ,
      -- not all zero
      (∃ j ∈ Finset.Icc 1 n, a j ≠ 0) ∧
      -- such that $|a_i|\le k-1$ for all $i$
      (∀ i ∈ Finset.Icc 1 n, |a i| ≤ k - 1) ∧
      -- and $|a_1x_1+a_2x_2+\ldots+a_nx_n|\le{(k-1)\sqrt n\over k^n-1}$
      (|∑ i ∈ Finset.Icc 1 n, ↑(a i) * x i| ≤ (k - 1) * √↑n / (k ^ n - 1)) := by
  sorry
