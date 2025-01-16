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
For each positive integer $\,n,\;S(n)\,$ is defined to be the greatest integer such that, for every positive integer $\,k\leq S(n),\;n^{2}\,$ can be written as the sum of $\,k\,$ positive squares.

[b]a.)[/b] Prove that $\,S(n)\leq n^{2}-14\,$ for each $\,n\geq 4$.
[b]b.)[/b] Find an integer $\,n\,$ such that $\,S(n)=n^{2}-14$.
[b]c.)[/b] Prove that there are infintely many integers $\,n\,$ such that $S(n)=n^{2}-14.$ -/
theorem imo_1992_p6.parts.a (S : ℕ → ℕ) (p : ℕ → ℕ → Prop)
    (hₚ :
      ∀ n a,
        p n a =
          ∀ k, 0 < k ∧ k ≤ a → ∃ f : ℕ → ℕ, (∀ x, f x > 0) ∧ ∑ i ∈ Finset.range k, f i ^ 2 = n ^ 2)
    (h₁ : ∀ n > 0, p n (S n) ∧ ¬∃ m > S n, p n m) (n : ℕ) (h₂ : 4 ≤ n) : S n ≤ n ^ 2 - 14 := by
  sorry

-- Formalise finding an integer as existence.
theorem imo_1992_p6.parts.b (S : ℕ → ℕ) (p : ℕ → ℕ → Prop)
    (hₚ :
      ∀ n a,
        p n a =
          ∀ k, 0 < k ∧ k ≤ a → ∃ f : ℕ → ℕ, (∀ x, f x > 0) ∧ ∑ i ∈ Finset.range k, f i ^ 2 = n ^ 2)
    (h₁ : ∀ n > 0, p n (S n) ∧ ¬∃ m > S n, p n m) : ∃ n, 0 < n ∧ S n = n ^ 2 - 14 := by
  sorry

theorem imo_1992_p6.parts.c (S : ℕ → ℕ) (p : ℕ → ℕ → Prop)
    (hₚ :
      ∀ n a,
        p n a =
          ∀ k, 0 < k ∧ k ≤ a → ∃ f : ℕ → ℕ, (∀ x, f x > 0) ∧ ∑ i ∈ Finset.range k, f i ^ 2 = n ^ 2)
    (h₁ : ∀ n > 0, p n (S n) ∧ ¬∃ m > S n, p n m) : {n | S n = n ^ 2 - 14}.Infinite := by
  sorry

/--
For each positive integer $n,S(n)$ is defined as the greatest integer such that for every positive integer $k\le S(n),n^2$ can be written as the sum of $k$ positive squares.

(a) Prove that $S(n)\le n^2-14$ for each $n\ge4$.

(b) Find an integer $n$ such that $S(n)=n^2-14$.

(c) Prove that there are infinitely many integers $n$ such that $S(n)=n^2-14$.
-/
@[imo_problem_subject algebra]
theorem imo_1992_p6 (S : ℕ → ℕ) (p : ℕ → ℕ → Prop)
    (hₚ :
      ∀ n a,
        p n a =
          ∀ k, 0 < k ∧ k ≤ a → ∃ f : ℕ → ℕ, (∀ x, f x > 0) ∧ ∑ i ∈ Finset.range k, f i ^ 2 = n ^ 2)
    (h₁ : ∀ n > 0, p n (S n) ∧ ¬∃ m > S n, p n m) (n : ℕ) (h₂ : 4 ≤ n) :
    S n ≤ n ^ 2 - 14 ∧ (∃ m, 0 < m ∧ S m = m ^ 2 - 14) ∧ {m | S m = m ^ 2 - 14}.Infinite := by
  sorry
