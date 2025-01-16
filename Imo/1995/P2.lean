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
Let $a, b, c$ be positive real numbers with $abc = 1$. Prove that: $${1 \over a^3(b+c)} + {1 \over b^3(c+a)} + {1 \over c^3(a+b)} \ge {3 \over 2}.$$ -/
@[imo_problem_subject algebra]
theorem imo_1995_p2 (a b c : ℝ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) (h₁ : a * b * c = 1) :
    (1 : ℝ) / (a ^ 3 * (b + c)) + (1 : ℝ) / (b ^ 3 * (c + a)) + (1 : ℝ) / (c ^ 3 * (a + b)) ≥
      (3 : ℝ) / (2 : ℝ) := by
  sorry
