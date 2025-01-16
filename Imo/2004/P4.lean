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
Let $n \geq 3$ be an integer. Let $t_1$, $t_2$, ..., $t_n$ be positive real numbers such that \[n^2 + 1 > \left( t_1 + t_2 + \cdots + t_n \right) \left( \frac{1}{t_1} + \frac{1}{t_2} + \cdots + \frac{1}{t_n} \right).\] Show that $t_i$, $t_j$, $t_k$ are side lengths of a triangle for all $i$, $j$, $k$ with $1 \leq i < j < k \leq n$. -/
@[imo_problem_subject algebra]
theorem imo_2004_p4 (n : ℕ) (h₀ : 3 ≤ n) (t : ℕ → ℝ) (h₁ : ∀ i, 0 < t i)
    (h₂ : (∑ i ∈ Finset.Icc 1 n, t i) * ∑ i ∈ Finset.Icc 1 n, 1 / t i < ↑n ^ 2 + 1) (i j k : ℕ)
    (h₃ : i ∈ Finset.Icc 1 n ∧ j ∈ Finset.Icc 1 n ∧ k ∈ Finset.Icc 1 n) (h₄ : i < j ∧ j < k) :
    t i < t j + t k ∧ t j < t i + t k ∧ t k < t i + t j := by
  sorry
