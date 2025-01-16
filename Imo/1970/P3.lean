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
The real numbers $a_0,a_1,a_2,\ldots$ satisfy $1=a_0\le a_1\le a_2\le\ldots. b_1,b_2,b_3,\ldots$ are defined by $b_n=\sum_1^n{1-{a_{k-1}\over a_k}\over\sqrt a_k}$.

(a) Prove that $0\le b_n< 2$.

(b) Given $c$ satisfying $0\le c< 2$, prove that we can find $a_n$ so that $b_n>c$ for all sufficiently large $n$.
-/
@[imo_problem_subject algebra]
theorem imo_1970_p3 (a_cond : (ℕ → ℝ) → Prop) (b : (ℕ → ℝ) → ℕ → ℝ)
    (h₀ : ∀ a, a_cond a ↔ a 0 = 1 ∧ Monotone a)
    (h₁ :
      ∀ a n, 0 < n → b a n = ∑ k ∈ Finset.Icc 1 n, (1 - a (k - 1) / a k) * 1 / √(a k)) :
    (∀ a n, a_cond a ∧ 0 < n → 0 ≤ b a n ∧ b a n < 2) ∧
      ∀ c, 0 ≤ c ∧ c < 2 → ∃ a N, a_cond a ∧ ∀ n > N, b a n > c := by
  sorry

/-- The real numbers $a_0,a_1,a_2,\ldots$ satisfy the condition:

\[ $1=a_0\le a_1\le a_2\le\ldots \]

The numbers $b_1,b_2,b_3,\ldots$ are defined by

\[b_n=\sum_{k=1}^n{1-{a_{k-1}\over a_k}1\over\sqrt a_k}\]

[b]a.)[/b] Prove that $0\le b_n< 2$ for all n.

[b]b.)[/b] Given $c$ with $0\le c< 2$, prove that there exist numbers
$a_0,a_1,\ldots$ with the above properties such that $b_n>c$ for large enough
$n$
-/
theorem imo_1970_p3.parts.a (a b : ℕ → ℝ) (h₀ : a 0 = 1) (h₁ : Monotone a)
    (h₂ : ∀ n, 0 < n → b n = ∑ k ∈ Finset.Icc 1 n, (1 - a (k - 1) / a k) * 1 / √(a k)) :
    ∀ n, 0 < n → 0 ≤ b n ∧ b n < 2 := by
  sorry

/-- The real numbers $a_0,a_1,a_2,\ldots$ satisfy the condition:

\[ $1=a_0\le a_1\le a_2\le\ldots \]

The numbers $b_1,b_2,b_3,\ldots$ are defined by

\[b_n=\sum_{k=1}^n{1-{a_{k-1}\over a_k}1\over\sqrt a_k}\]

[b]a.)[/b] Prove that $0\le b_n< 2$ for all n.

[b]b.)[/b] Given $c$ with $0\le c< 2$, prove that there exist numbers
$a_0,a_1,\ldots$ with the above properties such that $b_n>c$ for large enough
$n$
-/
theorem imo_1970_p3.parts.b (a_cond : (ℕ → ℝ) → Prop) (b : (ℕ → ℝ) → ℕ → ℝ)
    (h₀ : ∀ a, a_cond a ↔ a 0 = 1 ∧ Monotone a)
    (h₁ :
      ∀ a n, 0 < n → b a n = ∑ k ∈ Finset.Icc 1 n, (1 - a (k - 1) / a k) * 1 / √(a k)) :
    ∀ c, 0 ≤ c ∧ c < 2 → ∃ a N, a_cond a ∧ ∀ n > N, b a n > c := by
  sorry
