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
An international society has its members from six different countries. The list of members has $1978$ names, numbered $1,2,\ldots,1978$. Prove that there is at least one member whose number is the sum of the numbers of two members from his own country, or twice the number of a member from his own country. -/
@[imo_problem_subject combinatorics]
theorem imo_1978_p6 (members) (hmembers : members = Set.Icc 1 1978) (country : ℕ → ℕ)
    (h₀ : country '' members = Set.Ico 0 6) :
    ∃ n ∈ members,
      (∃ n₁ ∈ members, ∃ n₂ ∈ members,
          -- Distinction is not in prose, but implied.
          n ≠ n₁ ∧ n ≠ n₂ ∧ n₁ ≠ n₂ ∧
          country n = country n₁ ∧ country n = country n₂ ∧
          n = n₁ + n₂)
      ∨
      (∃ n₁ ∈ members,
        n ≠ n₁ ∧ country n = country n₁ ∧
        n = 2 * n₁) := by
  sorry
