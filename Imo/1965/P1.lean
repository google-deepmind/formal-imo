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

-- Derived from miniF2F's valid.lean
/--
Find all $x$ in the interval $[0,2\pi]$ which satisfy: $$2\cos x\le|\sqrt{1+\sin{2x}}-\sqrt{1-\sin{2x}}|\le\sqrt2.$$ -/
@[imo_problem_subject algebra]
theorem imo_1965_p1 :
    {x : ℝ |
        0 ≤ x ∧
          x ≤ 2 * π ∧
            2 * Real.cos x ≤
                abs (√(1 + Real.sin (2 * x)) - √(1 - Real.sin (2 * x))) ∧
              abs (√(1 + Real.sin (2 * x)) - √(1 - Real.sin (2 * x))) ≤
                √2} =
      answer(Set.Icc (π / 4) (7 * π / 4)) := by
  sorry
