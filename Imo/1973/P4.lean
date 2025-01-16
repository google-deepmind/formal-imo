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

-- AoPS URL: https://artofproblemsolving.com/community/c6h58587p357950
-- AoPS Wiki URL: https://artofproblemsolving.com/wiki/index.php/1973_IMO_Problems/Problem_4
-- IMO Official URL: https://www.imo-official.org/year_info.aspx?year=1973

import Imo.ProblemImports

open scoped ENNReal
open scoped EuclideanGeometry
open scoped Real

/--
A soldier needs to sweep a region with the shape of an equilateral triangle for mines. The detector has an effective radius equal to half the altitude of the triangle. He starts at a vertex of the triangle. What path should he follow in order to travel the least distance and still sweep the whole region?
-/
@[imo_problem_subject combinatorics]
theorem imo_1973_p4
    (A B C : ℝ²) (isEquilateral : dist A B = dist B C ∧ dist B C = dist A C)
    (radius : ℝ) (radius_def : radius = (dist A B) * √3 / 4)
    (isSweep : (ℝ → ℝ²) → Prop)
    (isSweep_def : ∀ path, isSweep path ↔
      path 0 = A ∧
      ∀ p ∈ convexHull ℝ {A, B, C}, ∃ t ∈ Set.Icc 0 1, dist (path t) p ≤ radius)
    (isShortestSweep : (ℝ → ℝ²) → Prop)
    -- Note: we don't need to require `path` to be continuous.
    -- The definition of `eVariationOn` is such that if the soldier
    -- teleports, the distance teleported is factored into the `eVariationOn`.
    (isShortestSweep_def : ∀ path, isShortestSweep path ↔
      isSweep path ∧ ∀ path', isSweep path' →
        eVariationOn path (Set.Icc 0 1) ≤ eVariationOn path' (Set.Icc 0 1)) :
    isShortestSweep fun t ↦
      -- This is a translation of the wiki solution:
      -- https://artofproblemsolving.com/wiki/index.php/1973_IMO_Problems/Problem_4
      -- Point $D$ translates to `midpoint ℝ A B`.
      -- Point $E$ translates to `midpoint ℝ (midpoint ℝ A B) C`.
      -- "the path from $A$ to $E$ to $F$" can be written as
      -- the path from $A$ to $E$ to $B$, stopping short between $E$ and $B$
      -- according to the ratio $EF / EB$, which we calculate to be
      -- `1 - √(3 / 7)`.
      if t < 1 / 2 then
        AffineMap.lineMap A (midpoint ℝ (midpoint ℝ A B) C) (2 * t)
      else
        AffineMap.lineMap (midpoint ℝ (midpoint ℝ A B) C) B
          ((2 * t - 1) * (1 - √(3 / 7))) := by
  sorry
