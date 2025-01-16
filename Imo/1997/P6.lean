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
For each positive integer $n$, let $f(n)$ denote the number of ways of representing $n$ as a sum of powers of $2$ with non-negative integer exponents. Representations which differ only in the ordering of their summands are considered to be the same. For example, $f(4) = 4$, because $4$ can be represented as $4, 2+2, 2+1+1$ or $1+1+1+1$. Prove that for any integer $n \ge 3, 2^{n^2/4} < f(2^n) < 2^{n^2/2}$. -/
@[imo_problem_subject algebra]
theorem imo_1997_p6 (f : ℕ → ℕ) (repr : ℕ → Finset (Multiset ℕ))
    -- Finite number of representations.
    (h₀ : ∀ n, 0 < n → ∀ S : Multiset ℕ, S ∈ repr n ↔ S.sum = n ∧ ∀ v ∈ S, ∃ p : ℕ, v = 2 ^ p)
    (h₁ : ∀ n, 0 < n → f n = (repr n).card) :
    ∀ n : ℕ,
      n ≥ 3 → (2 : ℝ) ^ (n ^ 2 / 4 : ℝ) < f (2 ^ n) ∧ ↑(f (2 ^ n)) < (2 : ℝ) ^ (n ^ 2 / 2 : ℝ) := by
  sorry
