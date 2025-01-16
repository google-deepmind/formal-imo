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
Determine all composite integers $n > 1$ that satisfy the following property: if $d_1, d_2, \dots, d_k$ are all the positive divisors of $n$ with $1 = d_1 < d_2 < ⋯ < d_k = n$, then $d_i$ divides $d_{i+1}+d_{i+2}$ for every $1 \leq i \leq k-2$.
Solution: ${p^m}$ where $p$ is any prime number, and $m$ is any positive integer with $1 < m$.
-/
@[imo_problem_subject number_theory]
theorem imo_2023_p1 (d : ℕ → ℕ → ℕ)
    (h₀ : ∀ n i : ℕ, 1 < n ∧ 0 < i ∧ i ≤ n.divisors.card → d n i ∣ n)
    (h₁ : ∀ n i : ℕ, 1 < n ∧ 0 < i ∧ i + 1 ≤ n.divisors.card → d n i < d n (i + 1)) :
  {(n) |
    (n : ℕ) (h₂ : 1 < n)
    (h₃ : ¬ Nat.Prime n)
    (h₄ : ∀ i : ℕ, 0 < i ∧ i + 2 ≤ n.divisors.card → d n i ∣ (d n (i + 1) + d n (i + 2)))}
    = answer({(p^m) | (p : ℕ) (m : ℕ) (h₅ : Nat.Prime p) (h₆ : 1 < m)}) := by
  sorry
