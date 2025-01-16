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
An integer $N \ge 2$ is given. A collection of $N(N + 1)$ soccer players, no two of whom are of the same height, stand in a row. Sir Alex wants to remove $N(N - 1)$ players from this row leaving a new row of $2N$ players in which the following $N$ conditions hold:
($1$) no one stands between the two tallest players,
($2$) no one stands between the third and fourth tallest players,
$\;\;\vdots$
($N$) no one stands between the two shortest players.

Show that this is always possible.

[i]Proposed by Grigory Chelnokov, Russia[/i]
-/
@[imo_problem_subject combinatorics]
theorem imo_2017_p5 (n t k : ℕ) (h₀ : 2 ≤ n) (h₁ : t = n * (n + 1)) (h₂ : k = 2 * n)
    -- Rather than using arbitrary heights, we assume that the heights are
    -- (1, ..., t); this is clearly equivalent and makes stating the theorem easier.
    -- f(i) is the position of the player with height i.
    (f : ℕ → ℕ)
    (h₃ : Set.BijOn f (Set.Icc 1 t) (Set.Icc 1 t)) :
    -- We represent the remaining 2N players as a monotonic function g from
    -- (1, ..., 2N) to (1, ..., N(N+1)), corresponding to the heights kept. Hence
    -- the remaining row positions after removal is the image of f ∘ g.
    ∃ g : ℕ → ℕ,
      Set.MapsTo g (Set.Icc 1 k) (Set.Icc 1 t) ∧
      StrictMonoOn g (Set.Icc 1 k) ∧
      -- We formalize the conditions that no player stands between
      -- the pairs of players specified in the question.
      -- The heights of the remaining players are the image of g, and
      -- the positions are the image of f ∘ g.
      -- g is monotone, so the pairs we care about have height
      -- g(2x-1), g(2x) and positions fg(2x-1), fg(2x) for 1 ≤ x ≤ n.
      -- Hence the condition is that no fg(y) lies between fg(2x-1)
      -- and fg(2x), for y ∉ {2x-1, 2x}.
      ∀ x y : ℕ, 1 ≤ x ∧ x ≤ n ∧ 1 ≤ y ∧ y ≤ k ∧ y ≠ 2 * x ∧ y ≠ 2 * x - 1 →
        (f (g y) < f (g (2 * x - 1)) ↔ f (g y) < f (g (2 * x))) := by
  sorry
