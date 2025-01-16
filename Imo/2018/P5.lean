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
Let $a_1$, $a_2$, $\ldots$ be an infinite sequence of positive integers. Suppose that there is an integer $N > 1$ such that, for each $n \geq N$, the number
$$\frac{a_1}{a_2} + \frac{a_2}{a_3} + \cdots + \frac{a_{n-1}}{a_n} + \frac{a_n}{a_1}$$
is an integer. Prove that there is a positive integer $M$ such that $a_m = a_{m+1}$ for all $m \geq M$.

[i]Proposed by Bayarmagnai Gombodorj, Mongolia[/i]
-/
@[imo_problem_subject number_theory]
theorem imo_2018_p5 (a : ℕ → ℕ) (h₀ : ∀ i, 0 < i → 0 < a i)
    (hN : ∃ N > 1, ∀ n ≥ N, ∃ z : ℕ,
      ∑ i ∈ Finset.Ico 1 n, (a i : ℚ) / a (i + 1) + (a n : ℚ) / (a 1 : ℚ) = z) :
    ∃ M, 0 < M ∧ ∀ m ≥ M, a m = a (m + 1) := by
  sorry
