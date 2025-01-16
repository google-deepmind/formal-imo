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
Given any set of ten distinct numbers in the range $10,11,\ldots,99$, prove that we can always find two disjoint subsets with the same sum. -/
@[imo_problem_subject combinatorics]
theorem imo_1972_p1 (S : Finset ℕ) (h₀ : S.card = 10) (h₁ : S ⊆ Finset.Ico 10 100) :
    ∃ S₁ S₂ : Finset ℕ,
      -- while the text says "subset", it appears to mean "nonempty subset"
      S₁.Nonempty ∧ S₁ ⊆ S ∧
      S₂.Nonempty ∧ S₂ ⊆ S ∧
      Disjoint S₁ S₂ ∧ ∑ x ∈ S₁, x = ∑ x ∈ S₂, x := by
  sorry
