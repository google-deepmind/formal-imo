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

/-- $a,b,c$ are real with $a$ non-zero. $x_1,x_2,\ldots,x_n$ satisfy the $n$ equations:

$ax_i^2+bx_i+c=x_{i+1}$, for $1\le i< n$

$ax_n^2+bx_n+c=x_1$

\noindent Prove that the system has zero, $1$ or $>1$ real solutions according as $(b-1)^2-4ac$ is $< 0,=0$, or $>0$.
-/
@[imo_problem_subject algebra]
theorem imo_1968_p3 (n : ℕ) (hn : 2 < n) [NeZero n] (a b c : ℝ) (ha : a ≠ 0) (S : Set (Fin n → ℝ))
    (hS : S = {x : Fin n → ℝ | ∀ i, a * x i ^ 2 + b * x i + c = x (i + 1)}) (d : ℝ)
    (hd : d = (b - 1) ^ 2 - 4 * a * c) :
    (d < 0 → S = ∅) ∧ (d = 0 → ∃ s, S = {s}) ∧ (d > 0 → ∃ s t, s ≠ t ∧ s ∈ S ∧ t ∈ S) := by
  sorry

theorem imo_1968_p3.parts.negative (n : ℕ) (hn : 2 < n) [NeZero n] (a b c : ℝ) (ha : a ≠ 0)
    (hd : (b - 1) ^ 2 - 4 * a * c < 0) :
    ¬∃ x : Fin n → ℝ, ∀ i, a * x i ^ 2 + b * x i + c = x (i + 1) := by
  sorry

theorem imo_1968_p3.parts.zero (n : ℕ) (hn : 2 < n) [NeZero n] (a b c : ℝ) (ha : a ≠ 0)
    (hd : (b - 1) ^ 2 - 4 * a * c = 0) :
    ∃! x : Fin n → ℝ, ∀ i, a * x i ^ 2 + b * x i + c = x (i + 1) := by
  sorry

theorem imo_1968_p3.parts.positive (n : ℕ) (hn : 2 < n) [NeZero n] (a b c : ℝ) (ha : a ≠ 0)
    (hd : (b - 1) ^ 2 - 4 * a * c > 0) :
    ∃ x y : Fin n → ℝ,
      x ≠ y ∧ ∀ i, a * x i ^ 2 + b * x i + c = x (i + 1) ∧ a * y i ^ 2 + b * y i + c = y (i + 1) := by
  sorry
