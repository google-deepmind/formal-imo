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

/-- Find all natural numbers $n$ the product of whose decimal digits is $n^2-10n-22$.

Solution: $12$
-/
@[imo_problem_subject number_theory]
theorem imo_1968_p2 :
    {n | ((Nat.digits 10 n).foldr (fun a b => a * b) 1 : ℤ) = n ^ 2 - 10 * n - 22} = answer({12}) := by
  sorry
