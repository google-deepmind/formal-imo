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
Let $d$ be the sum of the lengths of all the diagonals of a plane convex polygon with $n>3$ vertices. Let $p$ be its perimeter. Prove that: $$n-3<{2d\over p}<\Bigl[{n\over2}\Bigr]\Bigl[{n+1\over 2}\Bigr]-2,$$ where $[x]$ denotes the greatest integer not exceeding $x$. -/
@[imo_problem_subject combinatorics]
theorem imo_1984_p5
    --`n > 3` is the number of vertices of the polygon. The `NeZero` instance is there so we can consider the element `1 : Fin n`
    {n d p : ℕ} [NeZero n] {hn : n > 3}
    --The `P i` are the vertices of the polygon
    (P : Fin n → ℝ²)
    --The polygon is convex
    (hP : ∀ i j, j ≠ i-1 → j ≠ i → (∡ (P (i-1)) (P i) (P j)).sign = 1)
    --`p` is the perimeter of the polygon
    (hp : p = ∑ i, dist (P i) (P (i+1)))
    --`d` is the sum of the lengths of all the diagonals, i.e. the sum of all distances `d(P i, P j)` where `P i` and `P j` are distinct points that do not share an edge.
    (hd : d = 1/2 * ∑ i, ∑ j ∈ (Finset.univ \ {i-1, i, i+1}), dist (P i) (P j))
    : (n-3 : ℝ) < 2*d / p ∧ (2*d / p : ℝ) <  ⌊ (n/2 : ℝ)⌋ * ⌊ (n+1 : ℝ)/2 ⌋ - 2 := by
  sorry
