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
Let $n$ and $k$ be positive integers, and let $S$ be a set of $n$ points in the plane such that no three points of $S$ are collinear, and for any points $P$ of $S$ there are at least $k$ points of $S$ equidistant from $P$. Prove that $k<{1\over2}+\sqrt{2n}$. -/
@[imo_problem_subject combinatorics]
theorem imo_1989_p3 (n k : ℕ) (hn : 0 < n) (hk : 0 < k)
    (S : Finset ℝ²) (hS : S.card = n)
    (hS' : ∀ P1 ∈ S, ∀ P2 ∈ S, ∀ P3 ∈ S, [P1, P2, P3].Nodup → ¬ Collinear ℝ {P1, P2, P3})
    (hS'' : ∀ P ∈ S, ∃ (T : Finset ℝ²), T ⊆ S ∧ T.card = k ∧ ∃ a : ℝ, ∀ Q ∈ T, dist P Q = a) :
    (k : ℝ) < 1/2 + √(2*n) := by
  sorry
