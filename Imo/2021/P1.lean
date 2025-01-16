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
Let $n \geqslant 100$ be an integer. Ivan writes the numbers $n, n+1, \ldots, 2 n$ each on different cards. He then shuffles these $n+1$ cards, and divides them into two piles. Prove that at least one of the piles contains two cards such that the sum of their numbers is a perfect square. -/
@[imo_problem_subject number_theory]
theorem imo_2021_p1 (n : ℕ) (hn : n ≥ 100) (U A B : Finset ℕ) (hU : U = Finset.Icc n (2 * n))
    (hAU : A ⊆ U) (hB : B = U \ A) :
    (∃ x ∈ A, ∃ y ∈ A, x ≠ y ∧ ∃ z : ℕ, x + y = z * z) ∨
      ∃ x ∈ B, ∃ y ∈ B, x ≠ y ∧ ∃ z : ℕ, x + y = z * z := by
  sorry
