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
Determine all pairs $(a, b)$ of positive integers for which there exist positive integers $g$ and $N$ such that
$$
\operatorname{gcd}(a^n + b, b^n + a) = g
$$
holds for all integers $n \ge N$.
(Note that $\operatorname{gcd}(x, y)$ denotes the greatest common divisor of integers $x$ and $y$.)

Solution: $a = 1$ and $b = 1$
-/
@[imo_problem_subject number_theory]
theorem imo_2024_p2 :
    {(a, b) | 0 < a ∧ 0 < b ∧ ∃ g N, 0 < g ∧ 0 < N ∧
      ∀ n ≥ N, Nat.gcd (a ^ n + b) (b ^ n + a) = g} =
    answer({(1, 1)}) := by
  sorry
