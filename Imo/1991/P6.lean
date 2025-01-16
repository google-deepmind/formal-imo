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

-- Formalise construction as existence.
/--
Given any real number $a>1$ construct a bounded infinite sequence $x_0,x_1,x_2,\ldots$ such that $|x_i-x_j||i-j|^a\ge 1$ for every pair of distinct $i,j$. -/
@[imo_problem_subject algebra]
theorem imo_1991_p6 (a : ℝ) (h₀ : 1 < a) :
    ∃ x : ℕ → ℝ, (∃ C, ∀ i, |x i| ≤ C) ∧ ∀ i j, i ≠ j → 1 ≤ |x i - x j| * |(i : ℤ) - j| ^ a := by
  sorry
