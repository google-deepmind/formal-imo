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
Prove that the set $\{1,2,\ldots,1989\}$ can be expressed as the disjoint union of subsets $A_1,A_2,\ldots,A_{117}$ in such a way that each $A_i$ contains $17$ elements and the sum of the elements in each $A_i$ is the same. -/
@[imo_problem_subject combinatorics]
theorem imo_1989_p1 :
    ∃ A : ℕ → Finset ℕ,
      -- S is the union of the $A_i$.
      Finset.Icc 1 1989 = (Finset.Icc 1 117).biUnion A ∧
      -- The $A_i$ are disjoint.
      (∀ i ∈ Finset.Icc 1 117, ∀ j ∈ Finset.Icc 1 117, i ≠ j → A i ∩ A j = ∅) ∧
      -- i.) each $ A_i$ contains 17 elements
      (∀ i ∈ Finset.Icc 1 117, (A i).card = 17) ∧
      -- ii.) the sum of all the elements in each $ A_i$ is the same.
        ∃ N, ∀ i ∈ Finset.Icc 1 117, (A i).sum id = N := by
  sorry
