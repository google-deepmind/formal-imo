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
Let $p,q,n$ be three positive integers with $p+q < n$. Let $x_0, x_1, \ldots , x_n$ be integers such that $x_0 = x_n = 0$, and for each $1\le i \le n, x_i - x_{i-1} = p$ or $-q$. Show that there exist indices $i< j$ with $(i,j)$ not $(0,n)$ such that $x_i=x_j$. -/
@[imo_problem_subject algebra]
theorem imo_1996_p6 (p q n : ℕ) (h₀ : 0 < p ∧ 0 < q ∧ 0 < n) (h₁ : p + q < n) (x : Fin (n + 1) → ℤ)
    (h₂ : x 0 = 0 ∧ x n = 0)
    (h₃ : ∀ i, 0 < i ∧ i ≤ n → x i - x (i - 1) = p ∨ x i - x (i - 1) = -q) :
    ∃ i j : Fin (n + 1), i < j ∧ (i, j) ≠ (0, n) ∧ x i = x j := by
  sorry
