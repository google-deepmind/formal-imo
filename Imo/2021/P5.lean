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
open scoped Topology

/--
Two squirrels, Bushy and Jumpy, have collected 2021 walnuts for the winter. Jumpy numbers the walnuts from 1 through 2021, and digs 2021 little holes in a circular pattern in the ground around their favourite tree. The next morning Jumpy notices that Bushy had placed one walnut into each hole, but had paid no attention to the numbering. Unhappy, Jumpy decides to reorder the walnuts by performing a sequence of 2021 moves. In the $k$-th move, Jumpy swaps the positions of the two walnuts adjacent to walnut $k$.

Prove that there exists a value of $k$ such that, on the $k$-th move, Jumpy swaps some walnuts $a$ and $b$ such that $a< k< b$.
-/
@[imo_problem_subject combinatorics]
theorem imo_2021_p5
    /- We represent the state as a function from (time, hole) to nut label.
        Holes are elements of Z\Z[2021], reflecting the circular layout.
        In the problem statement we introduce s(k) which is the hole we swap around
        at time k (i.e. the hole which holds nut k at time k).
      -/
    (f : ℕ → ZMod 2021 → Fin 2021)
    (h0 : ∀ a b, a = b ∨ f 0 a ≠ f 0 b) (s : Fin 2021 → ZMod 2021)
    (h1 : ∀ k : Fin 2021, f k (s k) = k)
    (h2 :
      ∀ (k : Fin 2021) (h : ZMod 2021),
        h = s k + 1 ∧ f (k + 1) h = f k (h - 2) ∨
          h = s k - 1 ∧ f (k + 1) h = f k (h + 2) ∨
            h ≠ s k + 1 ∧ h ≠ s k - 1 ∧ f (k + 1) h = f k h) :
    ∃ k : Fin 2021, f k (s k - 1) < k ∧ k < f k (s k + 1) ∨ f k (s k - 1) > k ∧ k > f k (s k + 1) := by
  sorry
