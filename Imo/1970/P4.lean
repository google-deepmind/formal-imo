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
Find all positive integers $n$ such that the set $\{n,n+1,n+2,n+3,n+4,n+5\}$ can be partitioned into two subsets so that the product of the numbers in each subset is equal. -/
@[imo_problem_subject combinatorics]
theorem imo_1970_p4 :
    {n : ℕ |
        0 < n ∧
          ∃ S T : Finset ℕ,
            S ≠ ∅ ∧ T ≠ ∅ ∧ S ∩ T = ∅ ∧ S ∪ T = Finset.Icc n (n + 5) ∧ S.prod id = T.prod id} =
      answer(∅) := by
  sorry
