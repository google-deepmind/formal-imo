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

-- Formalization extracted from mathlib
import Imo.ProblemImports

-- cs/third_party/lean_mathlib/archive/imo/imo2001_q2.lean
/-
Copyright (c) 2021 Tian Chen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Tian Chen
-/
open scoped Real
open scoped Nat

/--
$a, b, c$ are positive reals. Prove that ${a \over \sqrt{a^2 + 8bc}} + {b \over \sqrt{b^2 + 8ca}} + {c\over \sqrt{c^2 + 8ab}} \ge 1$. -/
@[imo_problem_subject algebra]
theorem imo_2001_p2 (a : ℝ) (b : ℝ) (c : ℝ) (ha : 0 < a) (hb : 0 < b) (hc : 0 < c) :
    1 ≤
      a / √(a ^ 2 + 8 * b * c) + b / √(b ^ 2 + 8 * c * a) +
        c / √(c ^ 2 + 8 * a * b) := by
  sorry
