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

/-- The equation
$$(x-1)(x-2)\cdots(x-2016)=(x-1)(x-2)\cdots (x-2016)$$
is written on the board, with $2016$ linear factors on each side. What is the least possible value of $k$ for which it is possible to erase exactly $k$ of these $4032$ linear factors so that at least one factor remains on each side and the resulting equation has no real solutions?

Solution: $2016$
-/
@[imo_problem_subject algebra]
theorem imo_2016_p5 (C : Finset ℕ) (h₀ : C = Finset.Icc 1 2016) :
    IsLeast
      {k : ℕ | ∃ (LHS RHS : Finset ℕ)
        (h₁ : LHS.Nonempty ∧ RHS.Nonempty)
        (h₂ : LHS ⊆ C ∧ RHS ⊆ C)
        (h₃ : LHS.card + RHS.card + k = 2 * C.card),
          ¬∃ x : ℝ, ∏ c ∈ LHS, (x - c) = ∏ c ∈ RHS, (x - c)}
      answer(2016) := by
  sorry
