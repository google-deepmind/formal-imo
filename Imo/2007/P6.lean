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
open scoped Fin.CommRing

/-- Let $ n$ be a positive integer. Consider
\[ S = \left\{ (x,y,z) \mid x,y,z \in \{ 0, 1, \ldots, n\}, x + y + z > 0 \right \}
\]
as a set of $ (n + 1)^{3} - 1$ points in the three-dimensional space. Determine the smallest possible number of planes, the union of which contains $ S$ but does not include $ (0,0,0)$.

[i]Author: Gerhard Wöginger, Netherlands [/i]

Solution: $3n$
-/
@[imo_problem_subject algebra]
theorem imo_2007_p6
    (n : ℕ) (hn : 0 < n) (S : Finset (Fin 3 → ℕ))
    (hS : ∀ x y z, ![x, y, z] ∈ S ↔ x ∈ Set.Icc 0 n ∧ y ∈ Set.Icc 0 n ∧ z ∈ Set.Icc 0 n ∧ x + y + z > 0) :
    IsLeast
      {(planes.card) |
        (planes : Finset {p : AffineSubspace ℝ ℝ³ // Module.rank ℝ p.direction = 2})
        (hunion : (S : Set _) ⊆ ⋃ p ∈ planes, {x : Fin 3 → ℕ | (WithLp.equiv _ (Fin 3 → ℝ)).symm (x ·) ∈ p.1})
        (h0 : ∀ p ∈ planes, !₂[0, 0, 0] ∉ p.1)}
      answer((3 * n)) := by
  sorry
