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

-- note: https://artofproblemsolving.com/community/c6h54819p27098808  suggests that the question should be "whose roots include" rather than "whose roots are the same as", otherwise $a = b = 1, c = 0$ is a counterexample. As a result we use `→` not `↔`.
/--
Let $a,b,c$ be real numbers. Given the equation for $\cos x$: $$a\cos^2x+b\cos x+c=0,$$ form a quadratic equation in $\cos{2x}$ whose roots are the same values of $x$. Compare the equations in $\cos x$ and $\cos{2x}$ for $a=4,b=2,c=-1$. -/
@[imo_problem_subject algebra]
theorem imo_1959_p3 :
    ∃ f₀ f₁ f₂ : ℝ → ℝ → ℝ → ℝ,
      ∀ (a b c x : ℝ) (h : a ≠ 0),
        f₀ a b c ≠ 0 ∧
          (a * Real.cos x ^ 2 + b * Real.cos x + c = 0 →
            f₀ a b c * Real.cos (2 * x) ^ 2 + f₁ a b c * Real.cos (2 * x) + f₂ a b c = 0) := by
  sorry
