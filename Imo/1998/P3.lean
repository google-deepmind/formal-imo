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
For any positive integer $n$, let $d(n)$ denote the number of positive divisors of $n$ (including $1$ and $n$). Determine all positive integers $k$ such that $d(n^2) = k d(n)$ for some $n$. -/
@[imo_problem_subject number_theory]
theorem imo_1998_p3 (τ : ℕ → ℕ) (h₁ : ∀ n, 0 < n → τ n = n.divisors.card) :
    -- We do a small rearrangement of the division to save having to deal with
    -- extra conditions for integer division.
    {m | 0 < m ∧ ∃ n, 0 < n ∧ τ (n ^ 2) = τ n * m} =
      answer({m | Odd m}) := by
  sorry
