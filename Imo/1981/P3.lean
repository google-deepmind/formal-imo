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
Determine the maximum value of $m^2+n^2$, where $m$ and $n$ are integers in the range $1,2,\ldots,1981$ satisfying $(n^2-mn-m^2)^2=1$.

Solution: $987^2 + 1597^2$
-/
-- Mathlib has a complicated generalized version, so just
-- formalizing this manually.
@[imo_problem_subject number_theory]
theorem imo_1981_p3 :
    IsGreatest
      {m^2 + n^2 |
        (m : ℤ) (n : ℤ)
        (h₀ : 1 ≤ m ∧ m ≤ 1981)
        (h₁ : 1 ≤ n ∧ n ≤ 1981)
        (h₂ : (n^2 - m * n - m^2)^2 = 1)}
      answer(987 ^ 2 + 1597 ^ 2) := by
  sorry
