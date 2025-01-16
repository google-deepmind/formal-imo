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
Define $f(x)=1-a\cos x-b\sin x-A\cos2x-B\sin2x$, where $a,b,A,B$ are real constants. Suppose $f(x)\ge)$ for all real $x$. Prove that $a^2+b^2\le2$ and $A^2+B^2\le1$. -/
@[imo_problem_subject algebra]
theorem imo_1977_p4 (f : ℝ → ℝ) (a b A B : ℝ)
    (h₀ :
      ∀ x, f x = 1 - a * Real.cos x - b * Real.sin x - A * Real.cos (2 * x) - B * Real.sin (2 * x))
    (h₁ : ∀ x : ℝ, f x ≥ 0) : a ^ 2 + b ^ 2 ≤ 2 ∧ A ^ 2 + B ^ 2 ≤ 1 := by
  sorry
