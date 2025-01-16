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
open scoped NNReal
open scoped Pointwise
open scoped EuclideanGeometry
open MeasureTheory


-- this docstring is from the IMO website, AOPS has a weird version
/--
A rectangular box can be completely filled with unit cubes. If one places as many cubes as possible, each with volume 2, in the box, with their edges parallel to the edges of the box, one can fill exactly 40\% of the box. Determine the possible dimensions of the box. -/
@[imo_problem_subject combinatorics]
theorem imo_1976_p3
    -- auxiliary helpers; axis-aligned cubes of side-length 1 and volume 2 exist
    (cube1 : Set ℝ³) (hcube1 : cube1 = (WithLp.equiv _ _).symm '' Set.Icc 0 1)
    (cube2 : Set ℝ³)
    (hcube2 : MeasureSpace.volume cube2 = 2 ∧ ∃ l, cube2 = (WithLp.equiv _ _).symm '' Set.Icc 0 fun _ => l) :
  -- the set of order-independent lengths
  { ({↑dx, ↑dy, ↑dz} : Multiset ℝ) |
    -- of the sides forming a box
    (dx : ℝ≥0) (dy : ℝ≥0) (dz : ℝ≥0)
    (box : Set ℝ³)
    -- that is axis-aligned
    (hbox : box = (WithLp.equiv _ _).symm '' Set.Icc 0 ![↑dx, ↑dy, ↑dz]  )
    (hbox' : MeasureSpace.volume box ≠ 0) -- not in the prose, but implied by "40%" being meaningful
    -- which for an appropriate set of translations
    (h1 : ∃ (os : Set ℝ³),
      -- ...applied to `cube` fill the box
      (⋃ o ∈ os, o +ᵥ cube1) = box ∧
      -- with zero overlap
      (os.Pairwise fun o₁ o₂ => MeasureSpace.volume ((o₁ +ᵥ cube1) ∩ (o₂ +ᵥ cube1)) = 0)
      )
    -- the property that a set of translations packs copies of `cube2` into  `box`
    (is_cube2_packing : Finset ℝ³ → Prop)
    (is_cube2_packing_iff : ∀ ts,
      is_cube2_packing ts ↔
        (∀ t ∈ ts, t +ᵥ cube1 ⊆ box) ∧
        (ts : Set ℝ³).Pairwise fun o₁ o₂ => MeasureSpace.volume ((o₁ +ᵥ cube2) ∩ (o₂ +ᵥ cube2)) = 0)
    -- there is a packing
    (ts : Finset ℝ³) (hts : is_cube2_packing ts)
    -- of maximum size
    (htsc : IsGreatest {(ts'.card) | (ts' : Finset ℝ³) (hts' : is_cube2_packing ts')} ts.card)
    -- that fills exactly 40% of the box
    (hv : MeasureSpace.volume (⋃ o ∈ ts, o +ᵥ cube2) = (40/100) * MeasureSpace.volume box) } =
      answer({{2, 5, 3}, {2, 5, 6}}) := by
  sorry
