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

open scoped EuclideanGeometry Real

/--
Two circles in a plane intersect. $A$ is one of the points of intersection. Starting simultaneously from $A$ two points move with constant speed, each traveling along is own circle in the same sense. The two points return to $A$ simultaneously after one revolution. Prove that there is a fixed point $P$ in the plane such that the two points are always equidistant from $P$. -/
@[imo_problem_subject combinatorics]
theorem imo_1979_p3
    {c₁ c₂ A : ℝ²} {r₁ r₂ : ℝ}
    (hA : dist c₁ A = r₁ ∧ dist c₂ A = r₂) :
    ∃ P : ℝ², ∀ A₁ A₂ : ℝ², dist c₁ A₁ = r₁ → dist c₂ A₂ = r₂ →
      ∡ A c₁ A₁ = ∡ A c₂ A₂ → dist P A₁ = dist P A₂ := by
  sorry
