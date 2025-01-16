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
Let $x_1, x_2, \ldots , x_n$ be real numbers satisfying $|x_1 + x_2 + \cdots + x_n| = 1$ and $|x_i| \le (n+1)/2$ for all $i$. Show that there exists a permutation $y_i$ of $x_i$ such that $|y_1 + 2 y_2 + \cdots + n y_n| \le (n+1)/2$. -/
@[imo_problem_subject algebra]
theorem imo_1997_p3 (n : ℕ) (x : ℕ → ℝ) (h₀ : 0 < n) (h₁ : |(Finset.Icc 1 n).sum x| = 1)
    (h₂ : ∀ i, 0 < i ∧ i ≤ n → |x i| ≤ (n + 1) / 2) :
    ∃ (y : ℕ → ℝ) (h : (Multiset.Icc 1 n).map x = (Multiset.Icc 1 n).map y),
      |∑ i ∈ Finset.Icc 1 n, ↑i * y i| ≤ (n + 1) / 2 := by
  sorry
