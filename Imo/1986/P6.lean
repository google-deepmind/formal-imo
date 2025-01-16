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
open Affine

/--
Given a finite set of points in the plane, each with integer coordinates, is it always possible to color the points red or white so that for any straight line $L$ parallel to one of the coordinate axes the difference (in absolute value) between the numbers of white and red points on $L$ is not greater than $1$?
Solution: Yes
-/
@[imo_problem_subject combinatorics]
theorem imo_1986_p6
    --Given a finite set of points in the plane, each with integer coordinates
    {S : Finset (ℤ × ℤ)}
    --Define x and y axes for later
    (x_axis : AffineSubspace ℝ (ℝ × ℝ))
    (y_axis :  AffineSubspace ℝ (ℝ × ℝ))
    --The x axis is just the affine subspace spanned by (1, 0) and 0
    (hx_axis : x_axis = affineSpan ℝ {(1, 0), 0})
    --The y axis is just the affine subspace spanned by (0, 1) and 0
    (hy_axis : y_axis = affineSpan ℝ {(0, 1), 0}) :
    --is it always possible to color the points red or white
    (∃ (Red White : Finset (ℤ × ℤ)), Disjoint Red White ∧ Red ∪ White = S ∧
    --so that for any straight line $L$ parallel to one of the coordinate axes
    ∀ (L : AffineSubspace ℝ (ℝ × ℝ)), ⊥ < L → L < ⊤ → L ∥ x_axis ∨ L ∥ y_axis
    --the difference (in absolute value) between the numbers of white and red points on $L$ is not greater than $1$?
    → Int.natAbs ((Red.filter (fun P => (P.1, P.2) ∈ L)).card - (White.filter (fun P => (P.1, P.2) ∈ L)).card : ℤ) ≤ 1)
    --Solution: Yes
    ↔ answer(True) := by
  sorry
