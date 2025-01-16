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
Let $n$ be a positive integer and let $A_1,A_2,\ldots,A_{2n+1}$ be subsets of a set $B$. Suppose that:

(i) Each $A_i$ has exactly $2n$ elements,

(ii) The intersection of every two distinct $A_i$ contains exactly one element, and

(iii) Every element of $B$ belongs to at least two of the $A_i$.

\noindent For which values of $n$ can one assign to every element of $B$ one of the numbers $0$ and $1$ in such a way that each $A_i$ has $0$ assigned to exactly $n$ of its elements?

Solution: $n$ such that $2 | n$.
-/
@[imo_problem_subject combinatorics]
theorem imo_1988_p2 :
    {(n) | (n : ℕ) (h₀ : 0 < n)
      -- "$ A_1, A_2, \ldots, A_{2n+1}$ be subsets of a set B"
      (A : Fin (2 * n + 1) → Finset ℕ)
      (B : Finset ℕ)
      (h₀ : ∀ i, A i ⊆ B)
      -- "(i) Each $A_i$ has exactly $2n$ elements,"
      (h₁ : ∀ i, (A i).card = 2 * n)
      -- "(ii) The intersection of every two distinct $A_i$ contains exactly one element, and"
      (h₂ : ∀ i j, i ≠ j → (A i ∩ A j).card = 1)
      -- "(iii) Every element of $B$ belongs to at least two of the $A_i$."
      (h₃ : ∀ x ∈ B, ∃ i j, i ≠ j ∧ x ∈ A i ∧ x ∈ A j)
      -- Assignment from every member of the union to {0, 1}
      (h₅ : ∃ f : ℕ → ℕ, (∀ x : ℕ, x ∈ B → f x = 0 ∨ f x = 1) ∧
        ∀ i, ((A i).filter (f · = 0)).card = n)} =
    answer({n : ℕ | 0 < n ∧ 2 ∣ n}) := by
  sorry
