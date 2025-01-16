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
An ordered pair $(x, y)$ of integers is a primitive point if the greatest common divisor of $x$ and $y$ is $1$. Given a finite set $S$ of primitive points, prove that there exist a positive integer $n$ and integers $a_0, a_1, \ldots , a_n$ such that, for each $(x, y)$ in $S$, we have:
$$a_0x^n + a_1x^{n-1} y + a_2x^{n-2}y^2 + \cdots + a_{n-1}xy^{n-1} + a_ny^n = 1.$$

[i]Proposed by John Berman, United States[/i]
-/
@[imo_problem_subject number_theory]
theorem imo_2017_p6 (S : Finset (ℤ × ℤ)) (h₀ : ∀ u v, (u, v) ∈ S → Int.gcd u v = 1) :
    ∃ (n : ℕ) (h : 0 < n) (a : ℕ → ℤ),
      ∀ x y, (x, y) ∈ S → ∑ i ∈ Finset.Icc 0 n, a i * x ^ (n - i) * y ^ i = 1 := by
  sorry
