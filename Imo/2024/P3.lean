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
Let $a_1, a_2, a_3, \dots$ be an infinite sequence of positive integers,
and let $N$ be a positive integer.
Suppose that, for each $n > N$,
$a_n$ is equal to the number of times $a_{n-1}$ appears in the list $a_1, a_2, a_3, \dots, a_{n-1}$.

Prove that at least one of the sequences $a_1, a_3, a_5, \dots$ and $a_2, a_4, a_6, \dots$ is eventually periodic.

(An infinite sequence $b_1, b_2, b_3, \dots$ is \emph{eventually periodic} if there exist positive integers $p$ and $M$ such
that $b_{m+p} = b_m$ for all $m \ge M$.)
-/
@[imo_problem_subject combinatorics]
theorem imo_2024_p3 (a : ℕ → ℕ) (ha : ∀ n > 0, a n > 0)
    (N : ℕ) (hN : 0 < N)
    (haN : ∀ n > N, a n = ((Finset.Ico 1 n).filter fun i => a i = a (n - 1 : ℕ)).card)
    (isEventuallyPeriodic : (ℕ → ℕ) → Prop)
    (isEventuallyPeriodic_spec : ∀ b, isEventuallyPeriodic b ↔
        ∃ p M, 0 < p ∧ 0 < M ∧ ∀ m ≥ M, b (m + p) = b m) :
    isEventuallyPeriodic (fun i => a (2 * i + 1)) ∨
    isEventuallyPeriodic (fun i => a (2 * i + 2)) := by
  sorry
