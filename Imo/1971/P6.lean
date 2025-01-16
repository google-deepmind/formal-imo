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
Let $A=(a_{ij})$, where $i,j=1,2,\ldots,n$, be a square matrix with all $a_{ij}$ non-negative integers. For each $i,j$ such that $a_{ij}=0$, the sum of the elements in the $i$th row and the $j$th column is at least $n$. Prove that the sum of all the elements in the matrix is at least $n^2\over2$. -/
@[imo_problem_subject combinatorics]
theorem imo_1971_p6 (n : ℕ) (a : ℕ → ℕ → ℕ)
    (h : ∀ i j, i < n → j < n → a i j = 0 → n ≤ ∑ k ∈ Finset.range n, a i k + ∑ k ∈ Finset.range n, a k j) :
    (n ^ 2 : ℚ) / 2 ≤ ∑ i ∈ Finset.range n, ∑ j ∈ Finset.range n, (a i j : ℚ) := by
  sorry
