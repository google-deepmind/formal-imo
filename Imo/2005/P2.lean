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
Let $a_1,a_2,\ldots$ be a sequence of integers with infinitely many positive and negative terms. Suppose that for every positive integer $n$ the numbers $a_1,a_2,\ldots,a_n$ leave $n$ different remainders upon division by $n$.

Prove that every integer occurs exactly once in the sequence $a_1,a_2,\ldots$.
-/
-- Using explicit `Int.emod` to avoid `Int.instModInt` vs `Int.instModInt_1` issue
@[imo_problem_subject number_theory]
theorem imo_2005_p2 (a : ℕ → ℤ) (h₀ : ∀ i, ∃ j, i < j ∧ 0 < a j) (h₁ : ∀ i, ∃ j, i < j ∧ a j < 0)
    (h₂ : ∀ n : ℕ, 0 < n → ((Finset.Icc 1 n).image fun i => Int.emod (a i) n).card = n) :
    ∀ z : ℤ, ∃! i, 0 < i ∧ a i = z := by
  sorry
