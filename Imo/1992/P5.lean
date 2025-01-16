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
Let $S$ be a finite set of points in three-dimensional space. Let $S_x,S_y,S_z$ be the sets consisting of the orthogonal projections of the points of $S$ onto the $yz$-plane, $zx$-plane, $xy$-plane respectively. Prove that: $$|S|^2\le |S_x||S_y||S_z|,$$ where $|A|$ denotes the number of points in the set $A$. The orthogonal projection of a point onto a plane is the foot of the perpendicular from the point to the plane. -/
-- REVIEWED (llwu@)
@[imo_problem_subject combinatorics]
theorem imo_1992_p5 {α : Type*} [DecidableEq α]
    (S : Finset (Fin 3 → α))
    (S_x S_y S_z : Finset (Fin 2 → α))
    (S_x_def : S_x = S.image fun p ↦ ![p 1, p 2])
    (S_y_def : S_y = S.image fun p ↦ ![p 0, p 2])
    (S_z_def : S_z = S.image fun p ↦ ![p 0, p 1]) :
    S.card ^ 2 ≤ S_x.card * S_y.card * S_z.card := by
  sorry
