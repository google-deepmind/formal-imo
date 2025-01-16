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

open scoped Affine BigOperators EuclideanGeometry Nat Real

/--
A set of lines in the plane is in [i]general position[/i] if no two are parallel and no three pass through the same point. A set of lines in general position cuts the plane into regions, some of which have finite area; we call these its [i]finite regions[/i]. Prove that for all sufficiently large $n$, in any set of $n$ lines in general position it is possible to colour at least $\sqrt{n}$ lines blue in such a way that none of its finite regions has a completely blue boundary.

[i]Note[/i]: Results with $\sqrt{n}$ replaced by $c\sqrt{n}$ will be awarded points depending on the value of the constant $c$.
-/
@[imo_problem_subject combinatorics]
theorem imo_2014_p6
    (IsLinesInGP : Set (AffineSubspace ℝ ℝ²) → Prop)
    (IsLinesInGP_def : ∀ s, IsLinesInGP s ↔
      (∀ l ∈ s, Module.finrank ℝ l.direction = 1) ∧
      (s.Pairwise fun l₁ l₂ ↦ ¬ l₁ ∥ l₂) ∧
      (s.Triplewise fun l₁ l₂ l₃ ↦ ↑l₁ ∩ ↑l₂ ∩ ↑l₃ = (∅ : Set ℝ²)))
    /- A non-constant scalar-valued affine map `g : ℝ² →ᵃ[ℝ] ℝ` partitions the plane into three
    subsets according to the sign of the map at each point; the zero set is a line. One can thus
    regard such a `g` as a line together with a concept of a positive and negative side (and also
    some irrelevant extra data since we can scale `g` by constants).

    Given an assignment of an affine map to each affine subset `f : AffineSubspace ℝ ℝ² → ℝ² →ᵃ[ℝ] ℝ`,
    together with a collection of affine subsets `lines`, `region f lines` is the intersection of
    all the positive sides of `lines` determined by this assignment. The values of `f` on affine
    subspaces of dimension ≠ 1 should be regarded as junk values. Additionally when `l` is
    1-dimensional, the assignment must satisfy `{p | f l p = 0} = l` in order for the intended
    meaning to hold. This is demanded where `region` is used below. -/
    (region : (AffineSubspace ℝ ℝ² → ℝ² →ᵃ[ℝ] ℝ) → Set (AffineSubspace ℝ ℝ²) → Set ℝ²)
    (region_def : ∀ f lines, region f lines = ⋂ l ∈ lines, {p | 0 < f l p})
    (IsFiniteBoundary : Set (AffineSubspace ℝ ℝ²) → Prop)
    (IsFiniteBoundary_def : ∀ lines,
      IsFiniteBoundary lines ↔ ∃ f : AffineSubspace ℝ ℝ² → ℝ² →ᵃ[ℝ] ℝ,
        (∀ l, Module.finrank ℝ l.direction = 1 → {p | f l p = 0} = l) ∧
        (region f lines).Nonempty ∧
        Bornology.IsBounded (region f lines) ∧
        (∀ lines' ⊆ lines, (region f lines') = (region f lines) → lines' = lines)) :
    ∃ N : ℕ, ∀ n ≥ N, ∀ lines, lines.ncard = n → IsLinesInGP lines →
      ∃ IsBlue : AffineSubspace ℝ ℝ² → Prop,
        √n ≤ {l | l ∈ lines ∧ IsBlue l}.ncard ∧
        ∀ lines' ⊆ lines, IsFiniteBoundary lines' → ∃ l ∈ lines', ¬ IsBlue l := by
  sorry
