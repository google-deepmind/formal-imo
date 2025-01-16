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
Let $A$ be the sum of the decimal digits of $4444^{4444}$, and $B$ the sum of the decimal digits of $A$. Find the sum of the decimal digits of $B$.

Solution: $7$
-/
@[imo_problem_subject number_theory]
theorem imo_1975_p4 (A B : ℕ) (h₀ : A = (Nat.digits 10 (4444 ^ 4444)).sum)
    (h₁ : B = (Nat.digits 10 A).sum) : (Nat.digits 10 B).sum = 7 := by
  sorry
