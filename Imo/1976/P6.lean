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
The sequence $u_0,u_1,u_2,\ldots$ is defined by: $u_0,u_1={5\over2},u_{n+1}=u_n(u_{n-1}^2-2)-u_1$ for $n=1,2,\ldots$. Prove that $[u_n]=2^{2^n-(-1)^n\over3}$, where $[x]$ denotes the greatest integer less than or equal to $x$. -/
@[imo_problem_subject algebra]
theorem imo_1976_p6 (u : ℕ → ℝ) (h₀ : u 0 = 2) (h₁ : u 1 = 5 / 2)
    (h₂ : ∀ n, 1 ≤ n → u (n + 1) = u n * (u (n - 1) ^ 2 - 2) - u 1) :
    ∀ n, 0 < n → ↑⌊u n⌋ = (2 : ℝ) ^ ((2 ^ n - (-1) ^ n) / 3 : ℝ) := by
  sorry
