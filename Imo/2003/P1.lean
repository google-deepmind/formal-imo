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
open scoped Function

/--
$S$ is the set $\{1, 2, 3, \ldots , 1000000\}$. Show that for any subset $A$ of $S$ with 101 elements we can find 100 distinct elements $x_i$ of $S$, such that the sets $\{a+x_i | a \in A\}$ are all pairwise disjoint. -/
@[imo_problem_subject combinatorics]
theorem imo_2003_p1 (S A : Finset ℕ) (h₀ : S = Finset.Icc 1 1000000) (h₁ : A ⊆ S ∧ A.card = 101) :
    ∃ T, T ⊆ S ∧ T.card = 100 ∧ Set.Pairwise (↑T) (Disjoint on fun t => A.image (· + t)) := by
  sorry
