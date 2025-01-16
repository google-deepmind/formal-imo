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
Let $x_i, x_2, \dots, x_{2023}$ be pairwise distinct positive real numbers such that $a_n = \sqrt{(x_1 + x_2 + \dots + x_n)(\frac{1}{x_1} + \frac{1}{x_2} + \dots + \frac{1}{x_n})}$ is an integer for each $n = 1, 2, \dots, 2023$. Prove that $a_{2023} \geq 3034$. -/
@[imo_problem_subject algebra]
theorem imo_2023_p4 (x : ℕ → ℝ) (a : ℕ → ℕ)
    -- x_i are positive
    (h₀ : ∀ i ∈ Set.Icc 1 2023, 0 < x i)
    -- x_i are pairwise different
    (h₁ : Set.InjOn x (Set.Icc 1 2023))
    -- definition of a_n
    (h₂ : ∀ n ∈ Set.Icc 1 2023,
          a n = √((∑ i ∈ Finset.Icc 1 n, x i) * ∑ i ∈ Finset.Icc 1 n, 1 / x i)) :
    a 2023 ≥ 3034 := by
  sorry
