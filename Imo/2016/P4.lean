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
A set of positive integers is called [i]fragrant[/i] if it contains at least two elements and each of its elements has a prime factor in common with at least one of the other elements.  Let $P(n)=n^2+n+1$.  What is the least possible positive integer value of $b$ such that there exists a non-negative integer $a$ for which the set $$\{P(a+1),P(a+2),\ldots,P(a+b)\}$$ is fragrant? -/
@[imo_problem_subject number_theory]
theorem imo_2016_p4 (fragrant : Finset ℕ → Prop)
    (h₀ : fragrant = fun S => (∀ s ∈ S, 0 < s) ∧ 2 ≤ S.card ∧ ∀ a ∈ S, ∃ b ∈ S, a ≠ b ∧ gcd a b ≠ 1)
    (P : ℕ → ℕ)
    (h₁ : ∀ n, P n = n ^ 2 + n + 1) :
    IsLeast {b : ℕ | 0 < b ∧ ∃ a : ℕ, fragrant ((Finset.Icc (a + 1) (a + b)).image P)} answer(6) := by
  sorry
