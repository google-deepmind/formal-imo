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
$n$ is a positive integer and $m=2n$. $a_{ij}=0,1$ or $-1$ for $1\le i\le n,1\le j\le m$. The $m$ unknowns $x_1,x_2,\ldots,x_m$ satisfy the $n$ equations: $$a_{i1}x_1+a_{i2}x_2+\ldots+a_{im}x_m=0,$$ for $i=1,2,\ldots,n$. Prove that the system has a solution in integers of absolute value at most $m$, not all zero. -/
@[imo_problem_subject algebra]
theorem imo_1976_p5 (p q : ℕ)
    -- The following is isn't explicitly specified in the problem but is implied.
    (h₀ : 0 < p)
    (hpq : q = 2 * p) (a : Matrix (Fin p) (Fin q) ℤ) (h₁ : ∀ i, ∀ j, a i j ∈ ({-1, 0, 1} : Set ℤ)) :
    ∃ x : Fin q → ℤ, a.mulVec x = 0 ∧ (∃ j, x j ≠ 0) ∧ ∀ j, |x j| ≤ q := by
  sorry
