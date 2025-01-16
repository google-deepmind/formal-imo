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
Let $a_1, a_2, a_3, \ldots$ be a sequence of positive real numbers, and $s$ be a positive integer, such that
\[a_n = \max \{ a_k + a_{n-k} \mid 1 \leq k \leq n-1 \} \ \textrm{ for all } \ n > s.\]
Prove there exist positive integers $\ell \leq s$ and $N$, such that
\[a_n = a_{\ell} + a_{n - \ell} \ \textrm{ for all } \ n \geq N.\]

[i]Proposed by Morteza Saghafiyan, Iran[/i]
-/
@[imo_problem_subject algebra]
theorem imo_2010_p6 (a : ℕ → ℝ) (s : ℕ) (h₀ : 0 < s) (h₁ : ∀ i, 0 < a i)
    (h₂ : ∀ n > s, IsGreatest {a k + a (n - k) | (k : ℕ) (h : 1 ≤ k ∧ k ≤ n - 1)} (a n)) :
    -- We add the condition l < N (not in the statement) so that n - l is valid
    -- This supersedes the condition 0 < N which is in the problem statement
    ∃ l N : ℕ, 0 < l ∧ l ≤ s ∧ l < N ∧ ∀ n ≥ N, a n = a l + a (n - l) := by
  sorry
