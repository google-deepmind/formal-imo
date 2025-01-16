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
Each pair from $17$ people exchange letters on one of three topics. Prove that there are at least $3$ people who write to each other on the same topic. [In other words, if we color the edges of the complete graph $K_17$ with three colors, then we can find a triangle all the same color.] -/
@[imo_problem_subject combinatorics]
theorem imo_1964_p4
    -- a topic corresponding to each unordered pair of distinct people
    (topic : Sym2 (Fin 17) → Fin 3) :
    ∃ (s : Finset (Fin 17)) (t : Fin 3),
      3 ≤ s.card ∧ ∀ x ∈ s, ∀ y ∈ s, ∀ (h : x ≠ y), topic s(x, y) = t := by
  sorry
