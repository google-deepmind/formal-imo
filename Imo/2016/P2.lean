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
Find all integers $n$ for which each cell of $n \times n$ table can be filled with one of the letters $I,M$ and $O$ in such a way that:
[LIST]
[*] in each row and each column, one third of the entries are $I$, one third are $M$ and one third are $O$; and [/*]
[*]in any diagonal, if the number of entries on the diagonal is a multiple of three, then one third of the entries are $I$, one third are $M$ and one third are $O$.[/*]
[/LIST]
[b]Note.[/b] The rows and columns of an $n \times n$ table are each labelled $1$ to $n$ in a natural order. Thus each cell corresponds to a pair of positive integer $(i,j)$ with $1 \le i,j \le n$. For $n>1$, the table has $4n-2$ diagonals of two types. A diagonal of first type consists all cells $(i,j)$  for which $i+j$ is a constant, and the diagonal of this second type consists all cells $(i,j)$ for which $i-j$ is constant.

Solution: All multiples of 9.
-/
@[imo_problem_subject combinatorics]
theorem imo_2016_p2 (I M O : Fin 3) (h₀ : ![I, M, O] = ![0, 1, 2])
    (valid_table : ∀ {n}, Matrix (Fin n) (Fin n) (Fin 3) → Prop)
    -- table → set-of-indices → whether it has equal number of I, M, O.
    (equal_IMO) (hequal_IMO :
        equal_IMO =
        fun {n} (f : Matrix (Fin n) (Fin n) (Fin 3)) (idx : Finset (Fin n × Fin n)) =>
        3 ∣ idx.card →
          (idx.filter fun i : Fin n × Fin n => f i.1 i.2 = I).card = idx.card / 3 ∧
          (idx.filter fun i : Fin n × Fin n => f i.1 i.2 = M).card = idx.card / 3 ∧
          (idx.filter fun i : Fin n × Fin n => f i.1 i.2 = O).card = idx.card / 3)
    (h_valid_table : ∀ {n} (table : Matrix (Fin n) (Fin n) (Fin 3)),
        valid_table table ↔
          3 ∣ n ∧
          -- rows
          (∀ r, equal_IMO table (Finset.univ.filter fun i => i.1 = r)) ∧
          -- columns
          (∀ c, equal_IMO table (Finset.univ.filter fun i => i.2 = c)) ∧
          -- diagonals
          (∀ d ∈ Finset.Ioo (-n : ℤ) n,
            equal_IMO table (Finset.univ.filter fun i => d = ↑i.1 - i.2)) ∧
          -- anti-diagonal
          (∀ d ∈ Finset.Ico 0 (2 * n - 1),
            equal_IMO table (Finset.univ.filter fun i => d = ↑i.1 + i.2)))
    (n : ℕ) :
    (∃ table : Matrix (Fin n) (Fin n) (Fin 3), valid_table table) ↔ answer(9 ∣ n) := by
  sorry
