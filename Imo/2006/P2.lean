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

-- TODO(iharbury): This would benefit from a definition of a regular polygon to be added to ForMathlib.Geometry.«2d».

/--
Let $P$ be a regular $2006$-gon. A diagonal is called [i]good[/i] if its endpoints divide the boundary of $P$ into two parts, each composed of an odd number of sides of $P$. The sides of $P$ are also called [i]good[/i].
Suppose $P$ has been dissected into triangles by $2003$ diagonals, no two of which have a common point in the interior of $P$. Find the maximum number of isosceles triangles having two good sides that could appear in such a configuration.

Solution: $1003$.
-/
@[imo_problem_subject combinatorics]
theorem imo_2006_p2
    -- Rotates the given point by the given angle around the given origin point.
    (rotate : ∀ (point origin : ℝ²) (angle : ℝ), ℝ²)
    (rotate_definition : ∀ x y x₀ y₀ angle, rotate !₂[x, y] (!₂[x₀, y₀]) angle =
      !₂[
        x₀ + angle.cos * (x - x₀) - angle.sin * (y - y₀),
        y₀ + angle.sin * (x - x₀) + angle.cos * (y - y₀)
      ])
    -- Calculates the position of the vertex with the given index belonging to the regular polygon with the given center, vertex count and initial vertex.
    (regular_polygon_vertex : ∀ (center : ℝ²) (vertex₀ : ℝ²) (vertex_count : {x : ℕ | x ≥ 3}), Fin vertex_count → ℝ²)
    (regular_polygon_vertex_definition : ∀ center vertex₀ vertex_count i,
      regular_polygon_vertex center vertex₀ vertex_count i = rotate vertex₀ center (2 * Real.pi / vertex_count))
    -- Determines whether the given vertices of a regular 2006-gon are the endpoints of its diagonal. The vertices are identified by their indexes.
    (is_diagonal : ∀ i j : Fin 2006, Bool)
    (is_diagonal_definition : ∀ i j, is_diagonal i j ↔ i ≠ j ∧ i ≠ j + 1 ∧ i ≠ j - 1)
    -- Determins whether the given vertices of a regular 2006-gon are the endpoints of its [i]good[/i] diagonal. The vertices are identified by their indexes.
    (is_good_diagonal : ∀ i j : Fin 2006, Bool)
    (is_good_diagonal_definition : ∀ i j, is_good_diagonal i j ↔ is_diagonal i j ∧ Odd (i - j) ∧ Odd (j - i))
    -- Determines whether the given vertices of a regular 2006-gon are the endpoints of its side. The vertices are identified by their indexes.
    (is_side : ∀ i j : Fin 2006, Bool)
    (is_side_definition : ∀ i j, is_side i j ↔ i = j + 1 ∨ i = j - 1)
    -- Determines whether the given vertices of a regular 2006-gon are the endpoints of a [i]good[/i] line segment. The vertices are identified by their indexes.
    (is_good_line_segment : ∀ i j : Fin 2006, Bool)
    (is_good_line_segment_definition : ∀ i j, is_good_line_segment i j ↔ is_good_diagonal i j ∨ is_side i j)
    -- Determines whether the given two diagonals of the given 2006-gon have no common point in interior. The diagonals are identified by the indexes of the given vertices of the 2006-gon which are the endpoints of the diagonal.
    (no_common_point_in_interior : ∀ (i₁ j₁ i₂ j₂ : Fin 2006) (P_vertices : Fin 2006 → ℝ²), Bool)
    (no_common_point_in_interior_definition : ∀ i₁ j₁ i₂ j₂ P_vertices, no_common_point_in_interior i₁ j₁ i₂ j₂ P_vertices ↔
      openSegment ℝ (P_vertices i₁) (P_vertices j₁) ∩ openSegment ℝ (P_vertices i₂) (P_vertices j₂) = ∅)
    -- Determines whether the given line segment has been constructed. The line segment is identified by the indexes of vertices of the regular 2006-gon which are the endpoints of the line segment. The constructed line segments include the sides of the 2006-gon and the given set of constructed diagonals. The diagonals are identified by the indexes of vertices of the 2006-gon which are the endpoints of the diagonal.
    (is_constructed_line_segment : ∀ (i j : Fin 2006) (constructed_diagonals : Finset {(i, j) : Fin 2006 × Fin 2006 | i ≤ j ∧ is_diagonal i j}), Bool)
    (is_constructed_line_segment_definition : ∀ i j constructed_diagonals,
      is_constructed_line_segment i j constructed_diagonals ↔
      is_side i j ∨
      (∃ h, ⟨(i, j), h⟩ ∈ constructed_diagonals) ∨
      (∃ h, ⟨(j, i), h⟩ ∈ constructed_diagonals))
    -- Determines whether the given vertices of the regular 2006-gon are the vertices of a triangle. The vertices are identified by their indexes.
    (is_triangle : ∀ i j k : Fin 2006, Bool)
    (is_triangle_definition : ∀ i j k, is_triangle i j k ↔
      i ≠ j ∧ i ≠ k ∧ j ≠ k)
    -- Determines whether the given vertices of the regular 2006-gon are the vertices of a triangle that has been constructed. The vertices are identified by their indexes. The constructed line segments include the sides of the 2006-gon and the given set of constructed diagonals. The diagonals are identified by the indexes of vertices of the 2006-gon which are the endpoints of the diagonal.
    (is_constructed_triangle : ∀ (i j k : Fin 2006) (constructed_diagonals : Finset {(i, j) : Fin 2006 × Fin 2006 | i ≤ j ∧ is_diagonal i j}), Bool)
    (is_constructed_triangle_definition : ∀ i j k constructed_diagonals, is_constructed_triangle i j k constructed_diagonals ↔
      is_triangle i j k ∧
      is_constructed_line_segment i j constructed_diagonals ∧
      is_constructed_line_segment i k constructed_diagonals ∧
      is_constructed_line_segment j k constructed_diagonals)
    -- Determines whether the given three vertices of the given 2006-gon are the vertices of an isosceles triangle. The vertices are identified by their indexes.
    (is_isosceles_triangle : ∀ (i j k : Fin 2006) (P_vertices : Fin 2006 → ℝ²), Bool)
    (is_isosceles_triangle_definition : ∀ i j k P_vertices, is_isosceles_triangle i j k P_vertices ↔
      is_triangle i j k ∧
      (
        dist (P_vertices i) (P_vertices j) = dist (P_vertices i) (P_vertices k) ∨
        dist (P_vertices i) (P_vertices j) = dist (P_vertices j) (P_vertices k) ∨
        dist (P_vertices i) (P_vertices k) = dist (P_vertices j) (P_vertices k)
      ))
    -- Calculates how many [i]good[/i] sides the given triangle has. The triangle is identified by its vertices which are also vertices of the regular 2006-gon. The vertices are identified by their indexes in the 2006-gon.
    (triangle_good_side_count : ∀ i j k : Fin 2006, ℕ)
    (triangle_good_side_count_definition : ∀ i j k, triangle_good_side_count i j k =
      ([(i, j), (i, k), (j, k)].filter (fun s ↦ is_good_line_segment s.1 s.2)).length)
    : IsGreatest
      {
        special_triangle_count : ℕ |
        ∃ P_vertices : Fin 2006 → ℝ²,
        ∃ P_center : ℝ²,
        ∃ P_vertex₀ : ℝ²,
        P_vertices = regular_polygon_vertex P_center P_vertex₀ ⟨2006, by decide⟩ ∧
        ∃ constructed_diagonals : Finset {(i, j) : Fin 2006 × Fin 2006 | i ≤ j ∧ is_diagonal i j},
        constructed_diagonals.card = 2003 ∧
        (∀ i₁ j₁ h₁ i₂ j₂ h₂,
          ⟨(i₁, j₁), h₁⟩ ∈ constructed_diagonals →
          ⟨(i₂, j₂), h₂⟩ ∈ constructed_diagonals →
          (i₁, j₁) ≠ (i₂, j₂) →
          no_common_point_in_interior i₁ j₁ i₂ j₂ P_vertices) ∧
        ∃ special_triangles : Finset {(i, j, k) : Fin 2006 × Fin 2006 × Fin 2006 |
          i ≤ j ∧
          j ≤ k ∧
          is_constructed_triangle i j k constructed_diagonals ∧
          is_isosceles_triangle i j k P_vertices ∧
          triangle_good_side_count i j k = 2},
        special_triangle_count = special_triangles.card
      }
      answer(1003) := by
  sorry
