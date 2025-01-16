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
We have $0\le x_i< b$ for $i=0,1,\ldots,n$ and $x_n>0,x_{n-1}>0$. If $a>b$, and $x_nx_{n-1}\ldots x_0$ represents the number $A$ base $a$ and $B$ base $b$, whilst $x_{n-1}x_{n-2}\ldots x_0$ represents the number $A'$ base $a$ and $B'$ base $b$, prove that $A'B< AB'$. -/
@[imo_problem_subject number_theory]
theorem imo_1970_p2 (a b n A A' B B' : ℕ) (x : ℕ → ℕ) (h₀ : 1 < n ∧ 1 < a ∧ 1 < b) (h₁ : x n ≠ 0)
    (h₂ : x (n - 1) ≠ 0) (h₃ : ∀ i, x i < a ∧ x i < b)
    (hA : A = ∑ i ∈ Finset.range (n + 1), x i * a ^ i)
    (hA' : A' = ∑ i ∈ Finset.range n, x i * a ^ i)
    (hB : B = ∑ i ∈ Finset.range (n + 1), x i * b ^ i)
    (hB' : B' = ∑ i ∈ Finset.range n, x i * b ^ i) : A' * B < A * B' ↔ b < a := by
  sorry
