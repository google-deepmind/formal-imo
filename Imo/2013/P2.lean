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

/--
A configuration of $4027$ points in the plane is called Colombian if it consists of $2013$ red points and $2014$ blue points, and no three of the points of the configuration are collinear. By drawing some lines, the plane is divided into several regions. An arrangement of lines is good for a Colombian configuration if the following two conditions are satisfied:

i) No line passes through any point of the configuration.

ii) No region contains points of both colors.

Find the least value of $k$ such that for any Colombian configuration of $4027$ points, there is a good arrangement of $k$ lines.

Proposed by [i]Ivan Guo[/i] from [i]Australia.[/i]

Solution: 2013
-/
@[imo_problem_subject combinatorics]
theorem imo_2013_p2 {colombian : Finset ℝ² → (ℝ² → Fin 2) → Prop}
    (colombian_def : ∀ points color, colombian points color ↔
      points.card = 4027 ∧ (points.filter (color · = 0)).card = 2013 ∧
      (points : Set ℝ²).Triplewise (¬Collinear ℝ {·, ·, ·}))
    -- Describe a line by `(a, b, c) : ℝ × ℝ × ℝ` i.e. `ax + by = c`
    {passesThrough : ℝ × ℝ × ℝ → ℝ² → Prop}
    (passesThrough_def : ∀ a b c p, passesThrough (a, b, c) p ↔
      a * p 0 + b * p 1 = c)
    {divides : ℝ × ℝ × ℝ → ℝ² → ℝ² → Prop}
    -- `p` and `q` are on opposite sides of `ax + by = c`
    (divides_def : ∀ a b c p q, divides (a, b, c) p q ↔
      (a * p 0 + b * p 1 < c ∧ c < a * q 0 + b * q 1) ∨
      (a * q 0 + b * q 1 < c ∧ c < a * p 0 + b * p 1))
    {good : Finset (ℝ × ℝ × ℝ) → Finset ℝ² → (ℝ² → Fin 2) → Prop}
    (good_def : ∀ lines points color, good lines points color ↔
      -- No duplicate lines, e.g. x + y = 1 and 2 * x + 2 * y = 2
      (lines : Set (ℝ × ℝ × ℝ)).InjOn (setOf <| passesThrough ·) ∧
      (∀ l ∈ lines, ∀ p ∈ points, ¬passesThrough l p) ∧
      -- points of different colors must belong to different regions
      ∀ p ∈ points, ∀ q ∈ points, color p ≠ color q →
        ∃ l ∈ lines, divides l p q) :
    IsLeast { k : ℕ | ∀ points color, colombian points color →
      ∃ lines, lines.card = k ∧ good lines points color
    } answer(2013) := by
  sorry
