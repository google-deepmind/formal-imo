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
Let $n \ge 2$ be a fixed integer. Find the smallest constant $C$ such that for all non-negative reals $x_1, \ldots , x_n$: $$\sum_{i< j} x_i x_j (x_i^2 + x_j^2) \le C (\sum_i x_i)^4.$$ Determine when equality occurs.

Solution:
(a) C = $\frac{1}{8}$
(b the equality holds when two $x_i$ are equal and the rest are zero.
-/
@[imo_problem_subject algebra]
theorem imo_1999_p2 (n : ℕ) (h₀ : n ≥ 2) [NeZero n] (LHS RHS : (Fin n → ℝ) → ℝ)
    (h₁ :
      LHS = fun x =>
        ∑ i ∈ Finset.Ico 0 ((n - 1) : Fin _),
          ∑ j ∈ Finset.Ioc i ((n - 1) : Fin _), x i * x j * (x i ^ 2 + x j ^ 2))
    (h₃ : RHS = fun x => (∑ i ∈ Finset.univ, x i) ^ 4) :
    IsLeast {C : ℝ | ∀ (x : Fin n → ℝ) (hx : ∀ i, 0 ≤ x i), LHS x ≤ C * RHS x} answer(1 / 8) ∧
      ∀ (x : Fin n → ℝ) (hx : ∀ i, 0 ≤ x i),
        LHS x = 1 / 8 * RHS x ↔ answer(∃ i j, i ≠ j ∧ x i = x j ∧ ∀ k, k ≠ i ∧ k ≠ j → x k = 0) := by
  sorry

/-- Let $n$ be a fixed integer, with $n ≥ 2$.

(a) Determine the least constant $C$ such that the inequality

\[\sum_{1 \leq i < j \leq n} x_{i}x_{j} \left(x^{2}_{i}+x^{2}_{j} \right) \leq C
\left(\sum_{1 \leq i \leq n}x_{i} \right)^4\]

holds for all real numbers $x_{1}, \ldots ,x_{n} \geq 0$

(b) For this constant $C$, determine when equality holds.

Solution:
(a) C = $\frac{1}{8}$
(b the equality holds when two $x_i$ are equal and the rest are zero.
-/
theorem imo_1999_p2.parts.a (n : ℕ) (h₀ : n ≥ 2) [NeZero n] (LHS RHS : (Fin n → ℝ) → ℝ)
    (h₁ :
      LHS = fun x =>
        ∑ i ∈ Finset.Ico 0 ((n - 1) : Fin _),
          ∑ j ∈ Finset.Ioc i ((n - 1) : Fin _), x i * x j * (x i ^ 2 + x j ^ 2))
    (h₃ : RHS = fun x => (∑ i ∈ Finset.univ, x i) ^ 4) :
    IsLeast {C : ℝ | ∀ (x : Fin n → ℝ) (hx : ∀ i, 0 ≤ x i), LHS x ≤ C * RHS x} answer(1 / 8) := by
  sorry

/-- Let $n$ be a fixed integer, with $n ≥ 2$.

(a) Determine the least constant $C$ such that the inequality

\[\sum_{1 \leq i < j \leq n} x_{i}x_{j} \left(x^{2}_{i}+x^{2}_{j} \right) \leq C
\left(\sum_{1 \leq i \leq n}x_{i} \right)^4\]

holds for all real numbers $x_{1}, \ldots ,x_{n} \geq 0$

(b) For this constant $C$, determine when equality holds.

Solution:
(a) C = $\frac{1}{8}$
(b the equality holds when two $x_i$ are equal and the rest are zero.
-/
theorem imo_1999_p2.parts.b (n : ℕ) (h₀ : n ≥ 2) [NeZero n] (LHS RHS : (Fin n → ℝ) → ℝ)
    (h₁ :
      LHS = fun x =>
        ∑ i ∈ Finset.Ico 0 ((n - 1) : Fin _),
          ∑ j ∈ Finset.Ioc i ((n - 1) : Fin _), x i * x j * (x i ^ 2 + x j ^ 2))
    (h₃ : RHS = fun x => (∑ i ∈ Finset.univ, x i) ^ 4) :
    ∀ (x : Fin n → ℝ) (hx : ∀ i, 0 ≤ x i),
      LHS x = 1 / 8 * RHS x ↔ answer(∃ i j, i ≠ j ∧ x i = x j ∧ ∀ k, k ≠ i ∧ k ≠ j → x k = 0) := by
  sorry
