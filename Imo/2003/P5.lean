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

/-- Let $n$ be a positive integer and let $x_1\le x_2\le\cdots\le x_n$ be real numbers.
Prove that

             \[
          \left(\sum_{i,j=1}^{n}|x_i-x_j|\right)^2\le\frac{2(n^2-1)}{3}\sum_{i,j=1}^{n}(x_i-x_j)^2.
             \]
Show that equality holds if and only if $x_1, \ldots, x_n$ is an arithmetic sequence. -/
theorem imo_2003_p5.parts.a (n : ℕ) (x : ℕ → ℝ) (h₀ : Monotone x) (h₁ : 0 < n) :
    (∑ i ∈ Finset.Icc 1 n, ∑ j ∈ Finset.Icc 1 n, |x i - x j|) ^ 2 ≤
      2 * (n ^ 2 - 1) / 3 * ∑ i ∈ Finset.Icc 1 n, ∑ j ∈ Finset.Icc 1 n, (x i - x j) ^ 2 := by
  sorry

theorem imo_2003_p5.parts.b (n : ℕ) (x : ℕ → ℝ) (h₀ : Monotone x) (h₁ : 0 < n) :
    (∑ i ∈ Finset.Icc 1 n, ∑ j ∈ Finset.Icc 1 n, |x i - x j|) ^ 2 =
        2 * (n ^ 2 - 1) / 3 * ∑ i ∈ Finset.Icc 1 n, ∑ j ∈ Finset.Icc 1 n, (x i - x j) ^ 2 ↔
      ∃ a b, ∀ i, i ∈ Finset.Icc 1 n → x i = a * i + b := by
  sorry

/--
Given $n > 0$ and reals $x_1 \le x_2 \le \cdots \le x_n$, show that $(\sum_{i,j} |x_i - x_j|)^2 \le {2 \over 3}(n^2 - 1) \sum_{i,j} (x_i - x_j)^2$. Show that we have equality iff the sequence is an arithmetic progression. -/
@[imo_problem_subject algebra]
theorem imo_2003_p5 (n : ℕ) (x : ℕ → ℝ) (s t : ℝ) (h₀ : Monotone x) (h₁ : 0 < n)
    (h₂ : s = (∑ i ∈ Finset.Icc 1 n, ∑ j ∈ Finset.Icc 1 n, |x i - x j|) ^ 2)
    (h₃ : t = 2 * (n ^ 2 - 1) / 3 * ∑ i ∈ Finset.Icc 1 n, ∑ j ∈ Finset.Icc 1 n, (x i - x j) ^ 2) :
    s ≤ t ∧ (s = t ↔ ∃ a b, ∀ i, i ∈ Finset.Icc 1 n → x i = a * i + b) := by
  sorry
