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

/-- The real numbers $a, b, c, d$ are such that $a\geq b\geq c\geq d>0$ and $a+b+c+d=1$. Prove that
\[(a+2b+3c+4d)a^ab^bc^cd^d< 1\]
[i]Proposed by Stijn Cambie, Belgium[/i]
-/
@[imo_problem_subject algebra]
theorem imo_2020_p2 (a b c d : ℝ) (hba : b ≤ a) (hcb : c ≤ b) (hdc : d ≤ c) (hd : 0 < d)
    (habcd : a + b + c + d = 1) : (a + 2 * b + 3 * c + 4 * d) * a ^ a * b ^ b * c ^ c * d ^ d < 1 := by
  sorry

