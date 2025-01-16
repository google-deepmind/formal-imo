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

open scoped EuclideanGeometry

/--
Find $1975$ points on the circumference of a unit circle such that the distance between each pair is rational, or prove it impossible. -/
@[imo_problem_subject algebra]
theorem imo_1975_p5 :
  -- find _ or prove the nonexistence of...
  (fun P ans => Option.recOn ans (∀ x, ¬P x) P)
    -- a family of points
    (fun p : Fin 1975 → ℝ² =>
      -- on the unit circle
      ∀ i, p i ∈ Metric.sphere 0 1 ∧
      -- which are distinct
      Function.Injective p ∧
      -- and have rational pairwise distances
      Pairwise fun i j => dist (p i) (p j) ∈ Set.range Rat.cast)
    -- a solution exists:
    (some <| fun i : Fin _ =>
      ((Matrix.toEuclideanLin !![3/5, 4/5; -4/5, 3/5] : ℝ² →ₗ[ℝ] ℝ²)^(2*i : ℕ))
        <| !₂[1, 0]) := sorry
