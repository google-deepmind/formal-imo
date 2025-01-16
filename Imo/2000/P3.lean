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
Let $ n \geq 2$ be a positive integer and $ \lambda$ a positive real number.
Initially there are $ n$ fleas on a horizontal line, not all at the same point.
We define a move as choosing two fleas at some points $ A$ and $ B$, with $ A$
to the left of $ B$, and letting the flea from $ A$ jump over the flea from $ B$
to the point $ C$ so that $ \frac {BC}{AB} = \lambda$.

Determine all values of $ \lambda$ such that, for any point $ M$ on the line and
for any initial position of the $ n$ fleas, there exists a sequence of moves
that will take them all to the position right of $ M$.

Solution: $\lambda\ge1/(n-1)$
-/
@[imo_problem_subject algebra]
theorem imo_2000_p3 {n : ℕ} (hn : 2 ≤ n)
    {valid_jump : ℝ → (Fin n → ℝ) → (Fin n → ℝ) → Prop}
    (valid_jump_def : ∀ lambda pos next_pos, valid_jump lambda pos next_pos ↔
      ∃ i j A B C, pos i = A ∧ pos j = B ∧ A < B ∧ B < C ∧
      (C - B) / (B - A) = lambda ∧ next_pos = Function.update pos i C) :
    { lambda : ℝ | 0 < lambda ∧
      ∀ (M : ℝ) (init_pos : Fin n → ℝ), (∃ i j, init_pos i ≠ init_pos j) →
        ∃ seq : ℕ → Fin n → ℝ, seq 0 = init_pos ∧
          (∀ t, valid_jump lambda (seq t) (seq (t + 1))) ∧
          ∃ t, ∀ i, seq t i > M
    } = answer({ lambda | 1 / (n - 1) ≤ lambda }) := by
  sorry
