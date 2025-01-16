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
open scoped Classical

/--
Take $n\ge3$ and consider a set $E$ of $2n-1$ distinct points on a circle. Suppose that exactly $k$ of these points are to be colored black. Such a coloring is {\it good} if there is at least one pair of black points such that the interior of one of the arcs between them contains exactly $n$ points from $E$. Find the smallest value of $k$ so that every such coloring of $k$ points of $E$ is good.
Solution: if 3 ∤ (2n-1) then k=n. Otherwise k = 3*⌊(2n-1)/6⌋+1
-/
@[imo_problem_subject combinatorics]
theorem imo_1990_p2
    --Take $n\ge3$
    {n : ℕ}  {hn : 3 ≤ n}
    (IsGood : ℝ² → Finset ℝ² → Finset ℝ² → Prop)
    (IsGood_def : ∀ E Black_points O, IsGood O E Black_points  ↔
      -- A coloring is {\it good} if there is at least one pair of black points
      ∃ P1 ∈ Black_points, ∃ P2 ∈ Black_points, P1 ≠ P2 ∧
      /- such that the interior of one of the arcs between them contains exactly
      $n$ points from $E$. (note that we will always take $E$ to be on a circle
      centered at $O$ and `Black_points ⊆ E` when using this. In that case, the
      `IsGood` predicate corresponds to the notion of a good coloring in the
      informal statement)-/
      n = (E.filter (fun Q => sbtw 0 (∡ P1 O Q) (∡ P1 O P2))).card ∨
      n = (E.filter (fun Q => sbtw 0 (∡ P2 O Q) (∡ P2 O P1))).card) :
    /- Find the smallest value of $k$ so that for any subset $E$ of $2n-1$ points on a
    circle, any coloring of $k$ points of $E$ is good.-/
    IsLeast
      {k : ℕ | ∀ (E : Finset ℝ²) (O : ℝ²), E.card = (2*n-1 : ℕ) →
        (∃ r, 0 < r ∧ ∀ P ∈ E, dist P O = r) →
        ∀ Black_points ⊆ E, Black_points.card = k → IsGood O E Black_points }
      -- Use `Nat.div` since we're taking floor of the usual division
      answer(if 3 ∣ (2*n-1 : ℕ) then 3*((2*n - 1)/6 : ℕ)+1 else n) := sorry
