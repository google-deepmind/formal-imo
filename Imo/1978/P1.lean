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
$m$ and $n$ are positive integers with $m< n$. The last three decimal digits of $1978^m$ are the same as the last three decimal digits of $1978^n$. Find $m$ and $n$ such that $m+n$ has the least possible value. -/
@[imo_problem_subject number_theory]
theorem imo_1978_p1 (S : Set (ℕ × ℕ))
    (h₀ : S = {(a, b) |
      (a : ℕ) (b : ℕ)
      (c₀ : 1 ≤ a ∧ a < b)
      (c₁ : (Nat.digits 10 (1978^a)).take 3 = (Nat.digits 10 (1978^b)).take 3)})
    (m n : ℕ) (h₁ : (m, n) ∈ S) (h₂ : ∀ a b, (a, b) ∈ S → m + n ≤ a + b) : (m, n) = (3, 103) := by
  sorry
