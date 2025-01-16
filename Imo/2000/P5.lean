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
Can we find $N$ divisible by just $2000$ different primes, so that $N$ divides $2^N + 1$? [$N$ may be divisible by a prime power.]

Solution: Yes
-/
@[imo_problem_subject number_theory]
theorem imo_2000_p5 :
    (∃ n : ℕ, n.primeFactors.card = 2000 ∧ n ∣ 2 ^ n + 1) ↔ answer(True) := by
  sorry
