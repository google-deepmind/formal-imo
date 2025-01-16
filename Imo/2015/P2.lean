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

/-- Find all positive integers $(a,b,c)$ such that
$$ab-c,\quad bc-a,\quad ca-b$$ are all powers of $2$.

[i]Proposed by Serbia[/i]
-/
@[imo_problem_subject number_theory]
theorem imo_2015_p2 :
    {(a, b, c) | (a : ℤ) (b : ℤ) (c : ℤ)
      (h₀ : 0 < a ∧ 0 < b ∧ 0 < c)
      (h₁ : a ≤ b ∧ b ≤ c)
      (h₂ : ∃ d : ℕ, a * b - c = 2^d)
      (h₃ : ∃ d : ℕ, b * c - a = 2^d)
      (h₄ : ∃ d : ℕ, c * a - b = 2^d)} =
    answer({(2, 2, 2), (2, 2, 3), (2, 6, 11), (3, 5, 7)}) := by
  sorry
