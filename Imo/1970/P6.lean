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

open scoped BigOperators Classical EuclideanGeometry Real

/--
Given $100$ coplanar points, no three collinear, prove that at most $70\%$ of the triangles formed by the points have all angles acute.
-/
@[imo_problem_subject combinatorics]
theorem imo_1970_p6
    (S : Finset ℝ²) (S_card : S.card = 100)
    (S_ncoll : Set.Triplewise S.toSet (¬Collinear ℝ {·, ·, ·}))
    (acute : Finset ℝ² → Prop)
    (acute_def : ∀ T, acute T ↔ ∀ A ∈ T, ∀ B ∈ T, ∀ C ∈ T,
      A ≠ B → B ≠ C → C ≠ A → ∠ A B C < π / 2) :
    (S.powersetCard 3 |>.filter acute |>.card) ≤
      (S.powersetCard 3).card * (70 / 100 : ℚ) := by
  sorry
