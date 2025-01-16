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

/-- Solve the equation $\cos^nx-\sin^nx=1$, where $n$ is a natural number.

Solution: if n is even, m*π; if n is odd, 2*m*π or 2*m*π-(π/2); for integer m
http://screen/A2UaCyDE3zxidFy
-/
@[imo_problem_subject algebra]
theorem imo_1961_p3 (n : ℕ) (h₀ : n > 0) :
    {x : ℝ | Real.cos x ^ n - Real.sin x ^ n = 1} =
    answer(if Even n then {(m : ℝ) * π | m : ℤ} else
      {a : ℝ | ∃ m : ℤ, a = 2 * m * π ∨ a = 2 * m * π - π / 2}) := by
  sorry
