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
Find the smallest natural number with $6$ as the last digit, such that if the final $6$ is moved to the front of the number it is multiplied by $4$.
Solution: 153846
-/
@[imo_problem_subject number_theory]
theorem imo_1962_p1 :
    IsLeast {n : ℕ | n % 10 = 6 ∧ Nat.ofDigits 10 ((Nat.digits 10 n).tail.concat 6) = 4 * n}
    answer(153846) := by
  sorry
