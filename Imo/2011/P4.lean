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
Let $n > 0$ be an integer. We are given a balance and $n$ weights of weight $2^0, 2^1, \cdots, 2^{n-1}$. We are to place each of the $n$ weights on the balance, one after another, in such a way that the right pan is never heavier than the left pan. At each step we choose one of the weights that has not yet been placed on the balance, and place it on either the left pan or the right pan, until all of the weights have been placed.
Determine the number of ways in which this can be done.

[i]Proposed by Morteza Saghafian, Iran[/i]

Solution: $(2n-1)!!$.
-/
@[imo_problem_subject combinatorics]
theorem imo_2011_p4 (n : ℕ) (h₀ : 0 < n) [NeZero n]
    -- Represent the process of placing weights by "time → (weight_index × side)"
    (S : Finset (Fin n → Fin n × Fin 2))
    -- Define condition of being permutation of time to weight.
    (perm : (Fin n → Fin n × Fin 2) → Prop)
    (h₁ : perm = fun f => Function.Bijective fun x => (f x).1)
    -- Define the weight difference added at a single step.
    (instant_weight_difference : (Fin n → Fin n × Fin 2) → Fin n → ℤ)
    (h₂ : ∀ f, instant_weight_difference f = fun t => 2 ^ ((f t).1 : ℕ) * (((f t).2 : ℤ) * 2 - 1))
    -- Define the weight difference at step t.
    (cumulative_weight_difference : (Fin n → Fin n × Fin 2) → Fin n → ℤ)
    (h₃ : ∀ f, cumulative_weight_difference f = fun t =>
      ∑ i ∈ Finset.Icc 0 t, instant_weight_difference f i)
    -- Define the condition of always being in balance.
    (condition : (Fin n → Fin n × Fin 2) → Prop)
    (h₄ : condition = fun f => ∀ t : Fin n, cumulative_weight_difference f t ≤ 0)
    (h₅ : ∀ f, f ∈ S ↔ condition f ∧ perm f) : S.card = answer((2 * n - 1)‼) := by
  sorry
