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

-- Derived from miniF2F's test.lean
import Imo.ProblemImports

open scoped Real
open scoped Nat

/--
Let $a,b$ and $c$ be the lengths of the sides of a triangle. Prove that $$a^2b(a-b)+b^2c(b-c)+c^2a(c-a)\ge0.$$ Determine when equality occurs. -/
@[imo_problem_subject algebra]
theorem imo_1983_p6 (a b c : ℝ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) (h₁ : c < a + b) (h₂ : b < a + c)
    (h₃ : a < b + c) :
    0 ≤ a ^ 2 * b * (a - b) + b ^ 2 * c * (b - c) + c ^ 2 * a * (c - a) ∧
      (a ^ 2 * b * (a - b) + b ^ 2 * c * (b - c) + c ^ 2 * a * (c - a) = 0 ↔ answer(a = b ∧ b = c)) := by
  sorry

theorem imo_1983_p6.parts.i (a b c : ℝ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) (h₁ : c < a + b)
    (h₂ : b < a + c) (h₃ : a < b + c) :
    0 ≤ a ^ 2 * b * (a - b) + b ^ 2 * c * (b - c) + c ^ 2 * a * (c - a) := by
  sorry

theorem imo_1983_p6.parts.ii (a b c : ℝ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) (h₁ : c < a + b)
    (h₂ : b < a + c) (h₃ : a < b + c) :
    a ^ 2 * b * (a - b) + b ^ 2 * c * (b - c) + c ^ 2 * a * (c - a) = 0 ↔ answer(a = b ∧ b = c) := by
  sorry
