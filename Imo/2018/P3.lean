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
An [i]anti-Pascal[/i] triangle is an equilateral triangular array of numbers such that, except for the numbers in the bottom row, each number is the absolute value of the difference of the two numbers immediately below it. For example, the following is an anti-Pascal triangle with four rows which contains every integer from $1$ to $10$.
\[\begin{array}{
c@{\hspace{4pt}}c@{\hspace{4pt}}
c@{\hspace{4pt}}c@{\hspace{2pt}}c@{\hspace{2pt}}c@{\hspace{4pt}}c
} \vspace{4pt}
 & & & 4 & & &  \\\vspace{4pt}
 & & 2 & & 6 & &  \\\vspace{4pt}
 & 5 & & 7 & & 1 & \\\vspace{4pt}
 8 & & 3 & & 10 & & 9 \\\vspace{4pt}
\end{array}\]
Does there exist an anti-Pascal triangle with $2018$ rows which contains every integer from $1$ to $1 + 2 + 3 + \dots + 2018$?

[i]Proposed by Morteza Saghafian, Iran[/i]
-/
@[imo_problem_subject combinatorics]
theorem imo_2018_p3
    -- Define anti-pascal as lower-triangular matrix.
    -- Easier to define with 2018 directly than generic n.
    -- It's not specified that the numbers in lowest row must be positive.
    (is_anti_pascal : Matrix (Fin 2018) (Fin 2018) ℤ → Prop)
    (h₁ : is_anti_pascal = fun M =>
        (∀ r c, r < c → M r c = 0) ∧
          ∀ r, r < 2017 → ∀ c ≤ r, M r c = |M (r + 1) c - M (r + 1) (c + 1)|) :
    (∃ M, is_anti_pascal M ∧
      ∀ v ∈ Finset.Icc 1 (∑ i ∈ Finset.Icc 1 2018, i), ∃ i j, j ≤ i ∧ M i j = v) ↔ answer(False) := by
  sorry
