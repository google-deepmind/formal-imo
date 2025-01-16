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
Let $n\geq2$ be a positive integer, with divisors $1=d_1< d_2<\,\ldots< d_k=n$.  Prove that $d_1d_2+d_2d_3+\,\ldots\,+d_{k-1}d_k$ is always less than $n^2$, and determine when it is a divisor of $n^2$.

Solution: $n$ prime.
-/
theorem imo_2002_p4.parts.a (n k : ℕ) (h₀ : 2 ≤ n) (d : ℕ → ℕ) (h₁ : d 1 = 1) (h₂ : d k = n)
    (h₃ : StrictMono d) (h₄ : ∀ i ∈ Finset.Icc 1 k, d i ∣ n)
    (h₅ : ∀ m ∈ n.divisors, ∃ i ∈ Finset.Icc 1 k, m = d i) :
    ∑ i ∈ Finset.Ico 1 k, d i * d (i + 1) < n ^ 2 := by
  sorry

theorem imo_2002_p4.parts.b {d : ℕ → ℕ → ℕ} {k : ℕ → ℕ}
    (hd1 : ∀ n, d n 1 = 1) (hdk : ∀ n, d n (k n) = n)
    (hd_mono : ∀ n, StrictMono (d n))
    (hd_div : ∀ n, ∀ i ∈ Finset.Icc 1 (k n), d n i ∣ n)
    (hd_surj : ∀ n, ∀ m ∈ n.divisors, ∃ i ∈ Finset.Icc 1 (k n), m = d n i) :
    { n : ℕ | 2 ≤ n ∧ ∑ i ∈ Finset.Ico 1 (k n), d n i * d n (i + 1) ∣ n ^ 2 }
    = answer({ n | n.Prime }) := by
  sorry

/--
The positive divisors of the integer $n > 1$ are $d_1 < d_2 < \ldots < d_k$, so that $d_1 = 1, d_k = n$. Let $d = d_1 d_2 + d_2 d_3 + \cdots + d_{k-1}d_k$. Show that $d < n^2$ and find all $n$ for which $d$ divides $n^2$.

Solution: $n$ prime.
-/
@[imo_problem_subject number_theory]
theorem imo_2002_p4 {d : ℕ → ℕ → ℕ} {k : ℕ → ℕ}
    (hd1 : ∀ n, d n 1 = 1) (hdk : ∀ n, d n (k n) = n)
    (hd_mono : ∀ n, StrictMono (d n))
    (hd_div : ∀ n, ∀ i ∈ Finset.Icc 1 (k n), d n i ∣ n)
    (hd_surj : ∀ n, ∀ m ∈ n.divisors, ∃ i ∈ Finset.Icc 1 (k n), m = d n i)
    {D : ℕ → ℕ}
    (D_def : ∀ n, D n = ∑ i ∈ Finset.Ico 1 (k n), d n i * d n (i + 1)) :
    (∀ n > 1, D n < n ^ 2) ∧
    { n : ℕ | 1 < n ∧ D n ∣ n ^ 2 } = answer({ n | n.Prime }) := by
  sorry
