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
Determine the least real number $M$ such that the inequality \[|ab(a^{2}-b^{2})+bc(b^{2}-c^{2})+ca(c^{2}-a^{2})| \leq M(a^{2}+b^{2}+c^{2})^{2}\] holds for all real numbers $a$, $b$ and $c$. -/
@[imo_problem_subject algebra]
theorem imo_2006_p3 :
    IsLeast
      {M : ℝ | ∀ a b c : ℝ,
        abs (a * b * (a ^ 2 - b ^ 2) + b * c * (b ^ 2 - c ^ 2) + c * a * (c ^ 2 - a ^ 2)) ≤
        M * (a ^ 2 + b ^ 2 + c ^ 2) ^ 2}
      answer((9 * √2 / 32)) := by
  sorry

