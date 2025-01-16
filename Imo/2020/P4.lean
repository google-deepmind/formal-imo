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
There is an integer $n > 1$. There are $n^2$ stations on a slope of a mountain, all at different altitudes. Each of two cable car companies, $A$ and $B$, operates $k$ cable cars; each cable car provides a transfer from one of the stations to a higher one (with no intermediate stops). The $k$ cable cars of $A$ have $k$ different starting points and $k$ different finishing points, and a cable car which starts higher also finishes higher. The same conditions hold for $B$. We say that two stations are linked by a company if one can start from the lower station and reach the higher one by using one or more cars of that company (no other movements between stations are allowed). Determine the smallest positive integer $k$ for which one can guarantee that there are two stations that are linked by both companies.

[i]Proposed by Tejaswi Navilarekallu, India[/i]

Solution: $n^2 - n + 1$
-/
@[imo_problem_subject combinatorics]
theorem imo_2020_p4 (n : ℕ) (hn : 1 < n) :
    IsLeast
      {k : ℕ |
        0 < k ∧
          ∀
            -- for each company `c`, a start and finish station for each of their `k` cables
            (start : ∀ c : Fin 2, Fin k → Fin (n ^ 2))
            (finish : ∀ c : Fin 2, Fin k → Fin (n ^ 2))
            -- no cables within a company share a start or end station
            (h₁ : ∀ c, Function.Injective (start c))
            (h₂ : ∀ c, Function.Injective (finish c))
            -- each cable car provides a transfer from one of the stations to a higher one
            (h₃ : ∀ c i, start c i < finish c i)
            -- a cable car which starts higher also finishes higher
            (h₄ : ∀ c i j, start c i < start c j → finish c i < finish c j)
            -- we say two distinct stations `s₁`, `s₂` of company `c` are linked if...
            (linked : ∀ c : Fin 2, ∀ s₁ s₂ : Fin (n ^ 2), s₁ ≠ s₂ → Prop)
            (hlinked : ∀ c s₁ s₂ h,
              linked c s₁ s₂ h ↔
                -- there is a sequence of intermediate stations starting at the lower one and ending at the upper one, such that there is a cable car between adjacent elements
                ∃ l : List (Fin (n ^ 2)),
                  l.head? = some (min s₁ s₂) ∧
                  l.getLast? = some (max s₁ s₂) ∧
                  l.Chain' fun si sj => ∃ i, start c i = si ∧ finish c i = sj),
            -- there are two distinct stations linked by all (both) companies
            ∃ (s₁ s₂ : _) (h : s₁ ≠ s₂), ∀ c, linked c s₁ s₂ h}
      answer(n ^ 2 - n + 1) := by
  sorry
