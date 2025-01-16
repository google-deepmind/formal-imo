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

/-- For each integer $a_0 > 1$, define the sequence $a_0, a_1, a_2, \ldots$ for $n \geq 0$ as
$$a_{n+1} =
\begin{cases}
\sqrt{a_n} & \text{if } \sqrt{a_n} \text{ is an integer,} \\
a_n + 3 & \text{otherwise.}
\end{cases}
$$
Determine all values of $a_0$ such that there exists a number $A$ such that $a_n = A$ for infinitely many values of $n$.

[i]Proposed by Stephan Wagner, South Africa[/i]

Solution: 3 divides $a_0$
[i]Proposed by Stephan Wagner, South Africa[/i]
-/
@[imo_problem_subject number_theory]
theorem imo_2017_p1 (a : ℕ → ℕ) (h₁ : a 0 > 1)
    (h₂ : ∀ n, IsSquare (a n) → a (n + 1) = Nat.sqrt (a n))
    (h₃ : ∀ n, ¬IsSquare (a n) → a (n + 1) = a n + 3) :
    (∃ A : ℕ, {n : ℕ | a n = A}.Infinite) ↔ answer(a 0 ≡ 0 [MOD 3]) := by
  sorry
