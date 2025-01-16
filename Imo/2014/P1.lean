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
Let $a_0 < a_1 < a_2 \ldots$ be an infinite sequence of positive integers. Prove that there exists a unique integer $n\geq 1$ such that
\[a_n < \frac{a_0+a_1+a_2+\cdots+a_n}{n} \leq a_{n+1}.\]

[i]Proposed by Gerhard Wöginger, Austria.[/i]
-/
@[imo_problem_subject algebra]
theorem imo_2014_p1 (a : ℕ → ℕ) (h₀ : ∀ n, 0 < a n) (h₁ : StrictMono a) :
    ∃! n, 1 ≤ n ∧ (a n : ℚ) < (∑ i ∈ Finset.range (n + 1), a i) / n ∧
      ((∑ i ∈ Finset.range (n + 1), a i) / n : ℚ) ≤ a (n + 1) := by
  sorry
