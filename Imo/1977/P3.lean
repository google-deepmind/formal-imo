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
Given an integer $n>2$, let $V_n$ be the set of integers $1+kn$ for $k$ a positive integer. A number $m$ in $V_n$ is called indecomposable if it cannot be expressed as the product of two members of $V_n$. Prove that there is a number in $V_n$ which can be expressed as the product of indecomposable members of $V_n$ in more than one way (decompositions which differ solely in the order of factors are not regarded as different). -/
@[imo_problem_subject number_theory]
theorem imo_1977_p3 (n : ℕ) (V : Set ℕ) (indecomp : ℕ → Prop) (h₀ : 2 < n)
    (h₁ : V = (Set.Ici 1).image fun k => 1 + k * n)
    (h₂ : indecomp = fun m => ¬∃ p q, p ∈ V ∧ q ∈ V ∧ m = p * q) :
    ∃ r,
      r ∈ V ∧
        ∃ P₁ P₂ : Multiset ℕ,
          (∀ n, n ∈ P₁ → n ∈ V ∧ indecomp n) ∧
            (∀ n, n ∈ P₂ → n ∈ V ∧ indecomp n) ∧ r = P₁.prod ∧ r = P₂.prod ∧ P₁ ≠ P₂ := by
  sorry
