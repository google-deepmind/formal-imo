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
Determine all three digit numbers $N$ which are divisible by $11$ and where $N\over11$ is equal to the sum of the squares of the digits of $N$.

Solution: ${550, 803}$.
-/
@[imo_problem_subject number_theory]
theorem imo_1960_p1 :
    {n : ℕ | (Nat.digits 10 n).length = 3 ∧ 11 ∣ n ∧
      ((Nat.digits 10 n).map (· ^ 2)).sum = (n / 11 : ℕ)} =
    answer({550, 803}) := by
  sorry
