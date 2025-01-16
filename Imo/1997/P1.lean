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

theorem imo_1997_p1.parts.a
    (next_square : ℤ → ℤ → Set (ℝ × ℝ))
    (next_square_definition :
      ∀ x y, next_square x y = Set.Icc ((x : ℝ), (y : ℝ)) (x + 1, y + 1))
    (next_square_color : ℤ → ℤ → Fin 2)
    (colors_alternate :
      ∀ x y,
      next_square_color x y ≠ next_square_color (x + 1) y ∧
      next_square_color x y ≠ next_square_color x (y + 1))
    (m n : {x : ℤ // x > 0})
    (triangle : Set (ℝ × ℝ))
    (triangle_definition :
      triangle = convexHull ℝ {(0, 0), ((m : ℝ), 0), (0, (n : ℝ))})
    (color_part_area : Fin 2 → ℝ)
    (color_part_area_definition : ∀ c, color_part_area c =
      (MeasureTheory.volume (
        (⋃ x, ⋃ y, ⋃ h : next_square_color x y = c, next_square x y)
        ∩ triangle)).toReal)
    (S₁ S₂ : ℝ)
    (S₁_definition : S₁ = color_part_area 0)
    (S₂_definition : S₂ = color_part_area 1)
    (f : ℝ)
    (f_definition : f = |S₁ - S₂|) :
    (Even (m : ℤ) → Even (n : ℤ) → f = 0) ∧
    (Odd (m : ℤ) → Odd (n : ℤ) → f = 1 / 2) := by
  sorry

theorem imo_1997_p1.parts.b
    (next_square : ℤ → ℤ → Set (ℝ × ℝ))
    (next_square_definition :
      ∀ x y, next_square x y = Set.Icc ((x : ℝ), (y : ℝ)) (x + 1, y + 1))
    (next_square_color : ℤ → ℤ → Fin 2)
    (colors_alternate :
      ∀ x y,
      next_square_color x y ≠ next_square_color (x + 1) y ∧
      next_square_color x y ≠ next_square_color x (y + 1))
    (m n : {x : ℤ // x > 0})
    (triangle : Set (ℝ × ℝ))
    (triangle_definition :
      triangle = convexHull ℝ {(0, 0), ((m : ℝ), 0), (0, (n : ℝ))})
    (color_part_area : Fin 2 → ℝ)
    (color_part_area_definition : ∀ c, color_part_area c =
      (MeasureTheory.volume (
        (⋃ x, ⋃ y, ⋃ h : next_square_color x y = c, next_square x y)
        ∩ triangle)).toReal)
    (S₁ S₂ : ℝ)
    (S₁_definition : S₁ = color_part_area 0)
    (S₂_definition : S₂ = color_part_area 1)
    (f : ℝ)
    (f_definition : f = |S₁ - S₂|) :
    f ≤ max m n / 2 := by
  sorry

theorem imo_1997_p1.parts.c
    (next_square : ℤ → ℤ → Set (ℝ × ℝ))
    (next_square_definition :
      ∀ x y, next_square x y = Set.Icc ((x : ℝ), (y : ℝ)) (x + 1, y + 1))
    (next_square_color : ℤ → ℤ → Fin 2)
    (colors_alternate :
      ∀ x y,
      next_square_color x y ≠ next_square_color (x + 1) y ∧
      next_square_color x y ≠ next_square_color x (y + 1))
    (triangle : ∀ m n : {x : ℤ // x > 0}, Set (ℝ × ℝ))
    (triangle_definition : ∀ m n,
      triangle m n = convexHull ℝ {(0, 0), ((m : ℝ), 0), (0, (n : ℝ))})
    (color_part_area : ∀ (m n : {x : ℤ // x > 0}) (c : Fin 2), ℝ)
    (color_part_area_definition : ∀ m n c, color_part_area m n c =
      (MeasureTheory.volume (
        (⋃ x, ⋃ y, ⋃ h : next_square_color x y = c, next_square x y)
        ∩ triangle m n)).toReal)
    (S₁ S₂ : ∀ (m n : {x : ℤ // x > 0}), ℝ)
    (S₁_definition : ∀ m n, S₁ m n = color_part_area m n 0)
    (S₂_definition : ∀ m n, S₂ m n = color_part_area m n 1)
    (f : ∀ (m n : {x : ℤ // x > 0}), ℝ)
    (f_definition : ∀ m n, f m n = |S₁ m n - S₂ m n|) :
    ¬(∃ C, ∀ m n, f m n < C) := by
  sorry

/--
In the plane the points with integer coordinates are the vertices of unit squares. The squares are colored alternately black and white as on a chessboard. For any pair of positive integers $m$ and $n$, consider a right-angled triangle whose vertices have integer coordinates and whose legs, of lengths $m$ and $n$, lie along the edges of the squares. Let $S_1$ be the total area of the black part of the triangle, and $S_2$ be the total area of the white part. Let $f(m, n) = |S_1 - S_2|$.

(a) Calculate $f(m,n)$ for all positive integers $m$ and $n$ which are either both even or both odd.

(b) Prove that $f(m,n) \le max(m,n)/2$ for all $m$, $n$.

(c) Show that there is no constant $C$ such that $f(m,n) < C$ for all $m$, $n$.

Solution for (a): $f(m, n) = 0$ when both $m$ and $n$ are even; $f(m, n) = \frac{1}{2}$ when both $m$ and $n$ are odd.
-/
@[imo_problem_subject combinatorics]
theorem imo_1997_p1
    (next_square : ℤ → ℤ → Set (ℝ × ℝ))
    (next_square_definition :
      ∀ x y, next_square x y = Set.Icc ((x : ℝ), (y : ℝ)) (x + 1, y + 1))
    (next_square_color : ℤ → ℤ → Fin 2)
    (colors_alternate :
      ∀ x y,
      next_square_color x y ≠ next_square_color (x + 1) y ∧
      next_square_color x y ≠ next_square_color x (y + 1))
    (triangle : ∀ m n : {x : ℤ // x > 0}, Set (ℝ × ℝ))
    (triangle_definition : ∀ m n,
      triangle m n = convexHull ℝ {(0, 0), ((m : ℝ), 0), (0, (n : ℝ))})
    (color_part_area : ∀ (m n : {x : ℤ // x > 0}) (c : Fin 2), ℝ)
    (color_part_area_definition : ∀ m n c, color_part_area m n c =
      (MeasureTheory.volume (
        (⋃ x, ⋃ y, ⋃ h : next_square_color x y = c, next_square x y)
        ∩ triangle m n)).toReal)
    (S₁ S₂ : ∀ (m n : {x : ℤ // x > 0}), ℝ)
    (S₁_definition : ∀ m n, S₁ m n = color_part_area m n 0)
    (S₂_definition : ∀ m n, S₂ m n = color_part_area m n 1)
    (f : ∀ (m n : {x : ℤ // x > 0}), ℝ)
    (f_definition : ∀ m n, f m n = |S₁ m n - S₂ m n|) :
    (∀ m n : {x : ℤ // x > 0},
      (Even (m : ℤ) → Even (n : ℤ) → f m n = 0) ∧
      (Odd (m : ℤ) → Odd (n : ℤ) → f m n = 1 / 2)) ∧
    (∀ m n, f m n ≤ max m n / 2) ∧
    ¬(∃ C, ∀ m n, f m n < C) := by
  refine ⟨?_, ?_, ?_⟩
  · intros m n
    exact (imo_1997_p1.parts.a
      _
      next_square_definition
      _
      colors_alternate
      _
      _
      _
      (triangle_definition m n)
      _
      (color_part_area_definition m n)
      _
      _
      (S₁_definition m n)
      (S₂_definition m n)
      _
      (f_definition m n))
  · intros m n
    exact (imo_1997_p1.parts.b
      _
      next_square_definition
      _
      colors_alternate
      _
      _
      _
      (triangle_definition m n)
      _
      (color_part_area_definition m n)
      _
      _
      (S₁_definition m n)
      (S₂_definition m n)
      _
      (f_definition m n))
  · exact (imo_1997_p1.parts.c
      _
      next_square_definition
      _
      colors_alternate
      _
      triangle_definition
      _
      color_part_area_definition
      _
      _
      S₁_definition
      S₂_definition
      _
      f_definition)
