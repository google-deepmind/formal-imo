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

/--
Define a "hook" to be a figure made up of six unit squares as shown below in the picture, or any of the figures obtained by applying rotations and reflections to this figure.

[asy]
unitsize(0.5 cm);

draw((0,0)--(1,0));
draw((0,1)--(1,1));
draw((2,1)--(3,1));
draw((0,2)--(3,2));
draw((0,3)--(3,3));
draw((0,0)--(0,3));
draw((1,0)--(1,3));
draw((2,1)--(2,3));
draw((3,1)--(3,3));
[/asy]

Determine all $ m\times n$ rectangles that can be covered without gaps and without overlaps with hooks such that

- the rectangle is covered without gaps and without overlaps;
- no part of a hook covers area outside the rectangle.

Solution:

All of the following must be true:

- $\{1, 2, 5\} \notin \{m, n\}$;
- $3 \mid m$ or $3 \mid n$;
- $4 \mid m$ or $4 \mid n$.

-/
@[imo_problem_subject combinatorics]
theorem imo_2004_p3
    -- The coordinates for each unit square of the example "hook" figure.
    (hook : Fin 6 → ℤ × ℤ)
    (hook_definition :
      hook = ![(0, 0), (0, 1), (0, 2), (1, 2), (2, 2), (2, 1)])
    -- The functions transforming the coordinates of each unit square to produce all the possible rotations and reflections.
    (transforms : Fin 8 → ℤ × ℤ → ℤ × ℤ)
    (transforms_definition : transforms = ![
      fun (x, y) ↦ (x, y),
      fun (x, y) ↦ (y, -x),
      fun (x, y) ↦ (-x, -y),
      fun (x, y) ↦ (-y, x),
      fun (x, y) ↦ (-x, y),
      fun (x, y) ↦ (y, x),
      fun (x, y) ↦ (x, -y),
      fun (x, y) ↦ (-y, -x)
    ])
    -- The coordinates of the given unit square of the hook after the given transform and shifting by the given offset.
    (hook_square_position :
      ∀ (transform : Fin 8) (square : Fin 6) (offset : ℤ × ℤ),
      ℤ × ℤ)
    (hook_square_position_definition : ∀ transform square offset,
      hook_square_position transform square offset =
      transforms transform (hook square) + offset)
    -- How many times the given tiling covers the unit square with the given coordinates. The tiling is defined as a list of hook positions. Each hook position is defined as the example "hook" after the given transform and shifting by the given offset.
    (coverage_count :
      ∀ (x y : ℤ) (tiling : List (Fin 8 × ℤ × ℤ)), ℕ)
    (coverage_count_definition : ∀ x y tiling, coverage_count x y tiling =
      (tiling.map (fun (transform, offset) ↦
        ∑ square : Fin 6,
        if hook_square_position transform square offset = (x, y) then 1 else 0)
      ).sum)
    -- Indicates that the given tiling is a correct tiling of the rectangle with the given sizes.
    (correct_tiling : ∀ (m n : ℕ) (tiling : List (Fin 8 × ℤ × ℤ)), Prop)
    (correct_tiling_definition : ∀ m n tiling,
      correct_tiling m n tiling ↔ ∀ x y : ℤ,
        coverage_count x y tiling =
          if x ∈ Finset.Ico 0 (m : ℤ) ∧ y ∈ Finset.Ico 0 (n : ℤ)
          then 1
          else 0)
    : {(m, n) : ℕ × ℕ |
        m > 0 ∧
        n > 0 ∧
        ∃ tiling, correct_tiling m n tiling} =
      answer({(m, n) : ℕ × ℕ |
        m > 0 ∧
        n > 0 ∧
        (m ∉ [1, 2, 5]) ∧
        (n ∉ [1, 2, 5]) ∧
        (3 ∣ m ∨ 3 ∣ n) ∧
        (4 ∣ m ∨ 4 ∣ n)}) := by
  sorry
