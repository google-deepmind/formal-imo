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
Integers are placed in each of the $441$ cells of a $21 \times 21$ array. Each row and each column has at most $6$ different integers in it. Prove that some integer is in at least 3 rows and at least 3 columns. -/
@[imo_problem_subject algebra]
theorem imo_2001_p3 (g : Fin 21 → Finset ℕ)
    -- Problems each girl solved
    (b : Fin 21 → Finset ℕ)
    -- Problems each boy solved
    (hg : ∀ i, (g i).card ≤ 6)
    (hb : ∀ j, (b j).card ≤ 6) (hc : ∀ i, ∀ j, ∃ p, p ∈ g i ∧ p ∈ b j) :
    ∃ (p : ℕ) (G : Finset (Fin 21)) (B : Finset (Fin 21)),
      (∀ i ∈ G, p ∈ g i) ∧ (∀ j ∈ B, p ∈ b j) ∧ G.card ≥ 3 ∧ B.card ≥ 3 := by
  sorry
