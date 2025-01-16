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

/-- Determine all pairs $(x, y)$ of integers such that \[1+2^{x}+2^{2x+1}= y^{2}.\] -/
@[imo_problem_subject number_theory]
theorem imo_2006_p4 :
    -- Cast to ℚ as, e.g., 2^(x) can be non-integer for x < 0.
    {(x, y) | (x : ℤ) (y : ℤ) (h : (1 : ℚ) + 2^x + 2^(2*x + 1) = y^2)} =
      answer({(0, 2), (0, -2), (4, 23), (4, -23)}) := by
  sorry
