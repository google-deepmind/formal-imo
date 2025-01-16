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
Determine all possible values of ${a\over a+b+d}+{b\over a+b+c}+{c\over b+c+d}+{d\over a+c+d}$ for positive reals $a,b,c,d$. -/
@[imo_problem_subject algebra]
theorem imo_1974_p5 :
    {s |
        ∃ (a b c d : ℝ) (h₀ : 0 < a) (h₁ : 0 < b) (h₂ : 0 < c) (h₃ : 0 < d),
          s = a / (a + b + d) + b / (a + b + c) + c / (b + c + d) + d / (a + c + d)} =
      answer(Set.Ioo 1 2) := by
  sorry
