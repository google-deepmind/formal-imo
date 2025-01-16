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
open scoped Real

/--
Let $\mathcal{S}$ be a finite set of at least two points in the plane. Assume that no three points of $\mathcal S$ are collinear. A [i]windmill[/i] is a process that starts with a line $\ell$ going through a single point $P \in \mathcal S$. The line rotates clockwise about the [i]pivot[/i] $P$ until the first time that the line meets some other point belonging to $\mathcal S$. This point, $Q$, takes over as the new pivot, and the line now rotates clockwise about $Q$, until it next meets a point of $\mathcal S$. This process continues indefinitely.
Show that we can choose a point $P$ in $\mathcal S$ and a line $\ell$ going through $P$ such that the resulting windmill uses each point of $\mathcal S$ as a pivot infinitely many times.

[i]Proposed by Geoffrey Smith, United Kingdom[/i]
-/
@[imo_problem_subject combinatorics]
theorem imo_2011_p2
    (S : Finset ℝ²) (S_card : 2 ≤ S.card)
    (S_ncoll : (S : Set ℝ²).Triplewise (¬Collinear ℝ {·, ·, ·}))
    (windmillDist: ℝ² → ℝ² → ℝ² → ℝ)
    -- angle rotated from line PQ to line PQ' (i.e. P is the pivot point)
    (windmillDist_def : ∀ Q P Q', windmillDist Q P Q' =
      /-
      A line is symmetric w.r.t to rotation by π around a point.
      Take 0 to π so that going from PQ from PQ is a rotation by π, not 0.
      -/
      (∡ Q P Q').toReal + if (∡ Q P Q').toReal ≤ 0 then π else 0) :
    /-
    Choose a point $P$ = `P 1` in $\mathcal S$ and a line
    $\ell$ = `line (P 1) (P 0)`. This line will rotate to `line (P 2) (P 1)`,
    with `P 2` becoming the next pivot point. So `P` is the
    sequence of pivot points, more generally with
    `line (P (n + 1)) (P n)` rotating to `line (P (n + 2)) (P (n + 1))`.
    -/
    ∃ P : ℕ → ℝ²,
      /-
      `P (n + 1) ≠ P n` is for the `S.card = 2` case where all points have
      `windmillDist` of π. In all other cases the minimality of `windmillDist`
      uniquely determines the next point due to `S_ncoll`.
      -/
      (∀ n, P n ∈ S ∧ P (n + 1) ≠ P n ∧ ∀ p ∈ S,
        windmillDist (P n) (P (n + 1)) (P (n + 2)) ≤
        windmillDist (P n) (P (n + 1)) p) ∧
      ∀ p ∈ S, (P ⁻¹' {p}).Infinite := by
  sorry
