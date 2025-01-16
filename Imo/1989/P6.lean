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
A permutation $\{x_1,x_2,\ldots,x_m\}$ of the set $\{1,2,\ldots,2n\}$ where $n$ is a positive integer is said to have property $P$ if $|x_i-x_{i+1}|=n$ for at least one $i$ in $\{1,2,\ldots,2n-1\}$. Show that for each $n$ there are more permutations with property $P$ than without. -/
@[imo_problem_subject combinatorics]
theorem imo_1989_p6 (n : ℕ) (is_permutation : (ℕ → ℕ) → Prop) (T : (ℕ → ℕ) → Prop)
    (T_perm not_T_perm : Finset (ℕ → ℕ)) (h₀ : 0 < n)
    (h₁ : is_permutation = fun x =>
        Set.BijOn x (Set.Icc 1 (2 * n)) (Set.Icc 1 (2 * n)) ∧
        -- Have to clamp this since we are counting number of permutations.
        ∀ i, i ∉ Set.Icc 1 (2 * n) → x i = 0)
    (h₂ : T = fun x => ∃ i ∈ Finset.Icc 1 (2 * n - 1), |(x i : ℤ) - x (i + 1)| = n)
    (h₃ : ∀ perm, perm ∈ T_perm ↔ is_permutation perm ∧ T perm)
    (h₄ : ∀ perm, perm ∈ not_T_perm ↔ is_permutation perm ∧ ¬T perm) :
    T_perm.card > not_T_perm.card := by
  sorry
