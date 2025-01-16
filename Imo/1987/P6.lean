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

-- Derived from miniF2F's valid.lean
/--
Let $n\ge2$ be an integer. Prove that if $k^2+k+n$ is prime for all integers $k$ such that $0\le k\le\sqrt{n\over3}$, then $k^2+k+n$ is prime for all integers $k$ such that $0\le k\le n-2$. -/
@[imo_problem_subject number_theory]
theorem imo_1987_p6 (n : ℕ)
    (h₀ : ∀ k : ℕ, k ≤ Nat.floor (√(n / 3)) → Nat.Prime (k ^ 2 + k + n)) (h₁ : 2 ≤ n) :
    ∀ k ≤ n - 2, Nat.Prime (k ^ 2 + k + n) := by
  sorry
