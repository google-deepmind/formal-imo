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

-- Derived from miniF2F's test.lean
import Imo.ProblemImports

open scoped Real
open scoped Nat

/--
$K > L > M > N$ are positive integers such that $KM + LN = (K + L - M + N)(-K + L + M + N)$. Prove that $KL + MN$ is composite. -/
@[imo_problem_subject number_theory]
theorem imo_2001_p6 (a b c d : ℤ) (h₀ : 0 < d) (h₁ : d < c) (h₂ : c < b) (h₃ : b < a)
    (h₄ : a * c + b * d = (b + d + a - c) * (b + d - a + c)) :
    ¬Prime (a * b + c * d) := by
  sorry

