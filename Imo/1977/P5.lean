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
Let $a$ and $b$ be positive integers. When $a^2+b^2$ is divided by $a+b$, the quotient is $q$ and the remainder is $r$. Find all pairs $a,b$ such that $q^2+r=1977$. -/
@[imo_problem_subject number_theory]
theorem imo_1977_p5 :
    {(a, b) | (a : ℕ) (b : ℕ) (q : ℕ) (r : ℕ)
      (h₀ : r < a + b)
      (h₁ : a^2 + b^2 = (a + b) * q + r)
      (h₂ : q^2 + r = 1977)} =
    answer({(37, 50), (7, 50), (50, 37), (50, 7)}) := by
  sorry
