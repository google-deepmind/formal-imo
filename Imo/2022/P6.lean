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
Let $n$ be a positive integer. A [i]Nordic[/i] square is an $n \times n$ board containing all the integers from $1$ to $n^2$ so that each cell contains exactly one number. Two different cells are considered adjacent if they share a common side. Every cell that is adjacent only to cells containing larger numbers is called a [i]valley[/i]. An [i]uphill path[/i] is a sequence of one or more cells such that:

(i) the first cell in the sequence is a valley,

(ii) each subsequent cell in the sequence is adjacent to the previous cell, and

(iii) the numbers written in the cells in the sequence are in increasing order.

Find, as a function of $n$, the smallest possible total number of uphill paths in a Nordic square.

Solution: 2n^2 - 2n + 1

Author: Nikola Petrović
-/
@[imo_problem_subject combinatorics]
theorem imo_2022_p6 {n : ℕ} (hn : 0 < n)
    -- type for nordic squares
    (isNordic : (Fin n × Fin n → Fin (n ^ 2)) → Prop)
    -- B is nordic iff it's bijective as a function Fin n × Fin n → Fin (n ^ 2)
    (isNordic_spec : ∀ B, isNordic B ↔ Function.Bijective B)
    -- type for adjacency
    (isAdj : Fin n × Fin n → Fin n × Fin n → Prop)
    -- (a,b) is adjacent to (c,d) iff their L1 distance is 1
    (isAdj_spec : ∀ a b c d, isAdj (a, b) (c, d) ↔ Nat.dist a.1 c.1 + Nat.dist b.1 d.1 = 1)
    -- type for valleys
    (isValley : (Fin n × Fin n → Fin (n ^ 2)) → Fin n × Fin n → Prop)
    -- i is a valley in B iff for all adjacent j, B i < B j
    (isValley_spec : ∀ B i, isValley B i ↔ ∀ j, isAdj i j → B i < B j)
    -- type for uphill sequences
    (isUphill : (Fin n × Fin n → Fin (n ^ 2)) → List (Fin n × Fin n) → Prop)
    -- L is uphill in B if its head is minimal
    (isUphill_spec : ∀ B L, isUphill B L ↔
      L ≠ [] ∧
      (∀ i ∈ L.head?, isValley B i) ∧
      L.Chain' isAdj ∧
      L.Chain' (fun i j => B i ≤ B j)) :
    IsLeast {Set.ncard {L | isUphill B L} | (B : Fin n × Fin n → Fin (n ^ 2)) (hB : isNordic B)}
    answer((2 * n ^ 2 - 2 * n + 1 : ℕ)) := by
  sorry
