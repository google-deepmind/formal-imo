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

open scoped BigOperators EuclideanGeometry Nat Real
open EuclideanGeometry

/--
Let $P=A_1A_2\cdots A_k$ be a convex polygon in the plane. The vertices $A_1, A_2, \ldots, A_k$ have integral coordinates and lie on a circle. Let $S$ be the area of $P$. An odd positive integer $n$ is given such that the squares of the side lengths of $P$ are integers divisible by $n$. Prove that $2S$ is an integer divisible by $n$. -/
@[imo_problem_subject number_theory]
theorem imo_2016_p3
    (k : ℕ) [NeZero k]
    (x y : Fin k → ℤ)
    (hp : IsCcwConvexPolygon (P := ℝ²) fun i ↦ !₂[x i, y i])
    (cx cy r S : ℝ)
    (hc : ∀ i, dist (α := ℝ²) !₂[cx, cy] (!₂[x i, y i]) = r)
    -- `|·|` saves us having to think about oriented area
    (hS : S = |∑ i, triangle_area (P := ℝ²) !₂[cx, cy] (!₂[x i, y i]) (!₂[x (i + 1), y (i + 1)])|)
    (n : ℕ) (hn₁ : Odd n)
    (hn₂ : ∀ i, (n : ℤ) ∣ (x (i + 1) - x i) ^ 2 + (y (i + 1) - y i) ^ 2) :
    ∃ m : ℕ, 2 * S = m * n := by
  sorry
