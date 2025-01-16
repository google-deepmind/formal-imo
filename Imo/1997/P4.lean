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
An $n \times n$ matrix whose entries come from the set $S = \{1, 2, \ldots , 2n-1\}$ is called a silver matrix if, for each $i = 1, 2, \ldots , n$, the $i\/$th row and the $i\/$th column together contain all elements of $S$. Show that:

(a) there is no silver matrix for $n = 1997$;

(b) silver matrices exist for infinitely many values of $n$.
-/
@[imo_problem_subject combinatorics]
theorem imo_1997_p4
    -- Use matrices defined on ℕ × ℕ but only consider indices in {1, ..., n}.
    -- The first argument indicates the value of n considered.
    (is_silver : ℕ → Matrix ℕ ℕ ℕ → Prop)
    (h : is_silver = fun n M =>
      -- All elements of M are in S (S which is a function of n).
      (∀ i j, i ∈ Finset.Icc 1 n ∧ j ∈ Finset.Icc 1 n →
        M i j ∈ Finset.Icc 1 (2 * n - 1)) ∧
      -- i-th row union i-th col is equal to S.
      (∀ i, i ∈ Finset.Icc 1 n →
        Finset.Icc 1 (2 * n - 1) =
          (Finset.Icc 1 n).image (M i) ∪ (Finset.Icc 1 n).image fun j => M j i)) :
    (¬∃ M, is_silver 1997 M) ∧ {n : ℕ | ∃ M, is_silver n M}.Infinite := by
  sorry

theorem imo_1997_p4.parts.a
    -- Use matrices defined on ℕ × ℕ but only consider indices in {1, ..., n}.
    -- The first argument indicates the value of n considered.
    (is_silver : ℕ → Matrix ℕ ℕ ℕ → Prop)
    (h : is_silver = fun n M =>
      -- All elements of M are in S (S which is a function of n).
      (∀ i j, i ∈ Finset.Icc 1 n ∧ j ∈ Finset.Icc 1 n →
        M i j ∈ Finset.Icc 1 (2 * n - 1)) ∧
      -- i-th row union i-th col is equal to S.
      (∀ i, i ∈ Finset.Icc 1 n →
        Finset.Icc 1 (2 * n - 1) =
          (Finset.Icc 1 n).image (M i) ∪ (Finset.Icc 1 n).image fun j => M j i)) :
    ¬∃ M, is_silver 1997 M := by
  sorry

theorem imo_1997_p4.parts.b
    -- Use matrices defined on ℕ × ℕ but only consider indices in {1, ..., n}.
    -- The first argument indicates the value of n considered.
    (is_silver : ℕ → Matrix ℕ ℕ ℕ → Prop)
    (h : is_silver = fun n M =>
      -- All elements of M are in S (S which is a function of n).
      (∀ i j, i ∈ Finset.Icc 1 n ∧ j ∈ Finset.Icc 1 n →
        M i j ∈ Finset.Icc 1 (2 * n - 1)) ∧
      -- i-th row union i-th col is equal to S.
      (∀ i, i ∈ Finset.Icc 1 n →
        Finset.Icc 1 (2 * n - 1) =
          (Finset.Icc 1 n).image (M i) ∪ (Finset.Icc 1 n).image fun j => M j i)) :
    {n : ℕ | ∃ M, is_silver n M}.Infinite := by
  sorry
