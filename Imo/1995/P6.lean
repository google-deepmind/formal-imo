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
Let $p$ be an odd prime number. How many $p$-element subsets $A$ of $\{1, 2, \ldots , 2p\}$ are there, the sum of whose elements is divisible by $p$?

Solution: 2 + (2pCp - 2)/p, where 2pCp is the binomial coefficient (2p)!/(p!p!).
-/
@[imo_problem_subject number_theory]
theorem imo_1995_p6 (p : ℕ) (h₀ : Nat.Prime p) (h₁ : Odd p) (S : Set (Finset ℕ))
    (h₂ : S = {A : Finset ℕ | A ⊂ Finset.Icc 1 (2 * p) ∧ A.card = p ∧ p ∣ A.sum id})
    -- Slightly simplify by assuming that S is finite, but the core of the problem
    -- is proving the cardinal anyway.
    (h₃ : Fintype S) :
    S.toFinset.card = 2 + (Nat.choose (2 * p) p - 2) / p := by
  sorry
