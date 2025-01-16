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
Prove that $0\le yz+zx+xy-2xyz\le{7\over27}$, where $x,y$ and $z$ are non-negative real numbers satisfying $x+y+z=1$. -/
@[imo_problem_subject algebra]
theorem imo_1984_p1 (x y z : ℝ) (h₀ : 0 ≤ x ∧ 0 ≤ y ∧ 0 ≤ z) (h₁ : x + y + z = 1) :
    0 ≤ y * z + z * x + x * y - 2 * x * y * z ∧
      y * z + z * x + x * y - 2 * x * y * z ≤ (7 : ℝ) / (27 : ℝ) := by
  sorry
