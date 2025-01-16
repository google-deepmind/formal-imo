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

open scoped Classical
open scoped EuclideanGeometry
open scoped Nat
open scoped Real

/--
Given $n>4$ points in the plane, no three collinear. Prove that there are at least $(n-3)(n-4)\over2$ convex quadrilaterals with vertices amongst the $n$ points.
-/
@[imo_problem_subject combinatorics]
theorem imo_1969_p5
    (n : ℕ) (hn : 4 < n)
    (S : Finset ℝ²) (S_card : S.card = n)
    (S_ncoll : Set.Triplewise S.toSet (¬Collinear ℝ {·, ·, ·}))
    (convex : Finset ℝ² → Prop)
    (convex_def : ∀ P, convex P ↔ ∀ p ∈ P, p ∉ convexHull ℝ (P \ {p})) :
    Nat.choose (n - 3) 2 ≤ (S.powersetCard 4 |>.filter convex |>.card) := by
  sorry
