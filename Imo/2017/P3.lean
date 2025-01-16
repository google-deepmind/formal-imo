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
open scoped EuclideanGeometry

/--
A hunter and an invisible rabbit play a game in the Euclidean plane. The rabbit's starting point, $A_0,$ and the hunter's starting point, $B_0$ are the same. After $n-1$ rounds of the game, the rabbit is at point $A_{n-1}$ and the hunter is at point $B_{n-1}.$ In the $n^{\text{th}}$ round of the game, three things occur in order:

[list=i]
[*]The rabbit moves invisibly to a point $A_n$ such that the distance between $A_{n-1}$ and $A_n$ is exactly $1.$

[*]A tracking device reports a point $P_n$ to the hunter. The only guarantee provided by the tracking device to the hunter is that the distance between $P_n$ and $A_n$ is at most $1.$

[*]The hunter moves visibly to a point $B_n$ such that the distance between $B_{n-1}$ and $B_n$ is exactly $1.$
[/list]
Is it always possible, no matter how the rabbit moves, and no matter what points are reported by the tracking device, for the hunter to choose her moves so that after $10^9$ rounds, she can ensure that the distance between her and the rabbit is at most $100?$

[i]Proposed by Gerhard Woeginger, Austria[/i]

Solution: No
-/
@[imo_problem_subject combinatorics]
theorem imo_2017_p3 :
    -- The existence of a hunter strategy (represented as map from P_n to B_n)
    (∃ B : (ℕ → ℝ²) → ℕ → ℝ²,
      -- Where the hunter starts at position P_0, which we assume for
      -- convenience to coincide with A_0
      (∀ P, B P 0 = P 0) ∧
      -- And the hunter moves a distance 1 at each step
      (∀ P i, dist (B P i) (B P (i + 1)) = 1) ∧
      -- And the strategy doesn't depend on future P_i
      (∀ (P1 : ℕ → ℝ²) (P2 : ℕ → ℝ²) (n), (∀ i ≤ n, P1 i = P2 i) → B P1 n = B P2 n) ∧
      -- And for any rabbit trajectory A_n and signal P_n
      ∀ (A : ℕ → ℝ²) (P : ℕ → ℝ²), (
        -- Moving a distance of exactly 1 each time
        (∀ i, dist (A i) (A (i + 1)) = 1) ∧
        -- With detector pings at most distance 1 from the Rabbit's position
        (∀ i, i ≠ 0 → dist (A i) (P i) ≤ 1) ∧
        -- And "fake" detector ping P_0 exactly at the Rabbit's position
        A 0 = P 0) →
      -- The rabbit does not escape
      dist (A (10 ^ 9)) (B P (10 ^ 9)) ≤ 100) ↔
    -- is impossible
    answer(False) := by
  sorry
