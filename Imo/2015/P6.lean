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

/-- The sequence $a_1,a_2,\dots$ of integers satisfies the conditions:

(i) $1\le a_j\le2015$ for all $j\ge1$,
(ii) $k+a_k\neq \ell+a_\ell$ for all $1\le k<\ell$.

Prove that there exist two positive integers $b$ and $N$ for which\[\left\vert\sum_{j=m+1}^n(a_j-b)\right\vert\le1007^2\]for all integers $m$ and $n$ such that $n>m\ge N$.

[i]Proposed by Ivan Guo and Ross Atkins, Australia[/i]
-/
@[imo_problem_subject combinatorics]
theorem imo_2015_p6 (a : ℕ+ → ℤ) (hi : ∀ j, 1 ≤ a j ∧ a j ≤ 2015)
    (hii : ∀ l k, 1 ≤ k ∧ k < l → ↑k + a k ≠ ↑l + a l) :
    ∃ b N : ℕ+, ∀ (m n) (h : m < n ∧ N ≤ m),
      abs (∑ j ∈ Finset.Icc (m + 1) n, (a j - b)) ≤ 1007 ^ 2 := by
  sorry
