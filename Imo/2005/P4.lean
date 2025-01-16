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
Determine all positive integers relatively prime to all the terms of the infinite sequence \[ a_n=2^n+3^n+6^n -1,\ n\geq 1. \]

Solution: 1
-/
@[imo_problem_subject number_theory]
theorem imo_2005_p4 :
    { k : ℕ | 0 < k ∧ ∀ n ≥ 1, k.Coprime (2 ^ n + 3 ^ n + 6 ^ n - 1 : ℕ) } =
    answer({ 1 }) := by
  sorry
