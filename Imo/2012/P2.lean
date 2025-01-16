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
Let $n\ge 3$ be an integer, and let $a_2,a_3,\ldots ,a_n$ be positive real numbers such that $a_{2}a_{3}\cdots a_{n}=1$. Prove that
\[(1 + a_2)^2 (1 + a_3)^3 \dotsm (1 + a_n)^n > n^n.\]

[i]Proposed by Angelo Di Pasquale, Australia[/i]
-/
@[imo_problem_subject algebra]
theorem imo_2012_p2 (n : ℕ) (h₀ : n ≥ 3) (a : ℕ → ℝ) (h₁ : ∀ m, 0 < a m)
    (h₂ : ∏ x ∈ Finset.Icc 2 n, a x = 1) :
    ∏ x ∈ Finset.Icc 2 n, (1 + a x) ^ x > n ^ n := by
  sorry
