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
Show that the set of real numbers $x$ which satisfy the inequality: $${1\over x-1}+{2\over x-2}+{3\over x-3}+\ldots+{70\over x-70}\ge{5\over4}$$ is a union of disjoint intervals, the sum of whose lengths is $1988$. -/
@[imo_problem_subject algebra]
theorem imo_1988_p4 (S : Set ℝ)
    -- Exclude the points in [1, 70] to avoid division by 0.
    (h₁ :
      S =
        {x : ℝ |
          (¬∃ n : ℕ, n ∈ Finset.Icc (1 : ℕ) 70 ∧ x = n) ∧
            5 / 4 ≤ ∑ k ∈ Finset.Icc (1 : ℕ) 70, (k : ℝ) / (x - k)}) :
    -- n intervals [l_i, r_i]
    ∃ l r : ℕ → ℝ, ∃ n : ℕ,
      -- Disjoint intervals.
      (∀ k, k < n → l k < r k) ∧
      (∀ k, k < n - 1 → r k < l (k + 1)) ∧
      -- Lengths summing to 1988.
      ∑ k ∈ Finset.range n, (r k - l k) = 1988 ∧
      -- S is the union of them. The question does not specify whether the intervals are open or closed.
      -- In fact, the intervals are (k, k+r] for integers k. We give the openness away here.
      S = ⋃ k ∈ Finset.range n, Set.Ioc (l k) (r k) := by
  sorry
