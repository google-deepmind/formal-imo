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
Given any set $A = \{a_1, a_2, a_3, a_4\}$ of four distinct positive integers, we denote the sum $a_1 +a_2 +a_3 +a_4$ by $s_A$. Let $n_A$ denote the number of pairs $(i, j)$ with $1 \leq  i < j \leq 4$ for which $a_i +a_j$ divides $s_A$. Find all sets $A$ of four distinct positive integers which achieve the largest possible value of $n_A$.

[i]Proposed by Fernando Campos, Mexico[/i]

Solution: http://screen/A7qLXLjrArVuK8F
-/
@[imo_problem_subject algebra]
theorem imo_2011_p1 (valid : Finset ℕ → Prop) (allpairs : Finset ℕ → Finset (Finset ℕ))
    (n : Finset ℕ → ℕ) (has_greatest_n : Finset ℕ → Prop)
    (h₀ : ∀ A, valid A = (A.card = 4 ∧ ∀ v ∈ A, 0 < v))
    (h₁ : ∀ A P, P ∈ allpairs A ↔ P ⊆ A ∧ P.card = 2)
    (h₂ : ∀ A, n A = ((allpairs A).filter fun p : Finset ℕ => p.sum id ∣ A.sum id).card)
    (h₃ : ∀ A, has_greatest_n A = ¬∃ A₁, valid A₁ ∧ n A < n A₁) :
    {A | valid A ∧ has_greatest_n A} =
      answer({({x, 5*x, 7*x, 11*x}) | (x : ℕ) (h : 0 < x)} ∪
      {({x, 11*x, 19*x, 29*x}) | (x : ℕ) (h : 0 < x)}) := by
  sorry
