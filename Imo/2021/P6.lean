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
open scoped Topology

/--
Let $m\ge 2$ be an integer, $A$ a finite set of integers (not necessarily positive) and $B_1,B_2,...,B_m$ subsets of $A$. Suppose that, for every $k=1,2,...,m$, the sum of the elements of $B_k$ is $m^k$. Prove that $A$ contains at least $\dfrac{m}{2}$ elements. -/
@[imo_problem_subject algebra]
theorem imo_2021_p6 (m : ℕ) (hm : m ≥ 2) (A : Finset ℤ) (B : ℕ → Finset ℤ)
    (h0 : ∀ k : ℕ, k < m → B k ⊆ A) (h1 : ∀ k : ℕ, k < m → ∑ b ∈ B k, b = m ^ (k + 1)) :
    2 * A.card ≥ m := by
  sorry
