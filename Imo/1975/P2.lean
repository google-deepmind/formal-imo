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
Let $a_1< a_2< a_3<\ldots$ be positive integers. Prove that for every $i\ge1$, there are infinitely many $a_n$ that can be written in the form $a_n=ra_i+sa_j$, with $r,s$ positive integers and $j>i$. -/
@[imo_problem_subject number_theory]
theorem imo_1975_p2 (a : ℕ → ℕ) (h₀ : ∀ n : ℕ, 0 < a n) (h₁ : ∀ n : ℕ, a n < a (n + 1)) :
    Set.Infinite {m : ℕ | ∃ p q x y, x > 0 ∧ y > 0 ∧ p ≠ q ∧ a m = x * a p + y * a q} := by
  sorry
