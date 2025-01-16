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
For any positive integer $k$, let $f(k)$ be the number of elements in the set $\{k+1, k+2, \ldots, 2k\}$ which have exactly three $1$s when written in base $2$. Prove that for each positive integer $m$, there is at least one $k$ with $f(k)=m$, and determine all $m$ for which there is exactly one $k$.

Solution: $m=\frac{a(a-1)}2+1,\ a\ge 2$.
-/
@[imo_problem_subject number_theory]
theorem imo_1994_p3 (f : ℕ → ℕ)
    (h₀ : ∀ k, 0 < k →
      f k = ((Finset.Icc (k + 1) (2 * k)).filter fun n => (Nat.digits 2 n).count 1 = 3).card) :
    (∀ m, 0 < m → ∃ k, 0 < k ∧ f k = m) ∧
      {m | 0 < m ∧ ∃! k, 0 < k ∧ f k = m} =
        answer({a*(a - 1) / 2 + 1 | (a : ℕ) (h : a ≥ 2)}) := by
  sorry

/-- For any positive integer $ k$, let $ f_k$ be the number of elements in the set $
\{ k + 1, k + 2, \ldots, 2k\}$ whose base 2 representation contains exactly
three 1s.

(a) Prove that for any positive integer $ m$, there exists at least one positive
integer $ k$ such that $ f(k) = m$.

(b) Determine all positive integers $ m$ for which there exists exactly one $ k$
with $ f(k) = m$.

Solution: $m=\frac{a(a-1)}2+1,\ a\ge 2$.
-/
theorem imo_1994_p3.parts.a (f : ℕ → ℕ)
    (h₀ : ∀ k, 0 < k →
      f k = ((Finset.Icc (k + 1) (2 * k)).filter fun n => (Nat.digits 2 n).count 1 = 3).card)
    (m : ℕ) (h₁ : 0 < m) : ∃ k, 0 < k ∧ f k = m := by
  sorry

/-- For any positive integer $ k$, let $ f_k$ be the number of elements in the set $
\{ k + 1, k + 2, \ldots, 2k\}$ whose base 2 representation contains exactly
three 1s.

(a) Prove that for any positive integer $ m$, there exists at least one positive
integer $ k$ such that $ f(k) = m$.

(b) Determine all positive integers $ m$ for which there exists exactly one $ k$
with $ f(k) = m$.

Solution: $m=\frac{a(a-1)}2+1,\ a\ge 2$.
-/
theorem imo_1994_p3.parts.b (f : ℕ → ℕ)
    (h₀ : ∀ k, 0 < k →
      f k = ((Finset.Icc (k + 1) (2 * k)).filter fun n => (Nat.digits 2 n).count 1 = 3).card) :
    {m | 0 < m ∧ ∃! k, 0 < k ∧ f k = m} = answer({(a*(a - 1) / 2 + 1) | (a : ℕ) (h : a ≥ 2)}) := by
  sorry
