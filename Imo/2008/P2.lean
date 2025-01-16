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

/-- [b](a)[/b] Prove that
\[\frac {x^{2}}{\left(x -{} 1\right)^{2}} +{} \frac {y^{2}}{\left(y -{} 1\right)^{2}} +{} \frac {z^{2}}{\left(z -{} 1\right)^{2}} \geq 1\] for all real numbers $x$, $y$, $z$, each different from $1$, and satisfying $xyz=1$.

[b](b)[/b] Prove that equality holds above for infinitely many triples of rational numbers $x$, $y$, $z$, each different from $1$, and satisfying $xyz=1$.

[i]Author: Walther Janous, Austria[/i] -/
theorem imo_2008_p2.parts.i (x y z : ℝ) (h₀ : x ≠ 1 ∧ y ≠ 1 ∧ z ≠ 1) (h₁ : x * y * z = 1) :
    x ^ 2 / (x - 1) ^ 2 + y ^ 2 / (y - 1) ^ 2 + z ^ 2 / (z - 1) ^ 2 ≥ 1 := by
  sorry

/-- [b](a)[/b] Prove that
\[\frac {x^{2}}{\left(x -{} 1\right)^{2}} +{} \frac {y^{2}}{\left(y -{} 1\right)^{2}} +{} \frac {z^{2}}{\left(z -{} 1\right)^{2}} \geq 1\] for all real numbers $x$, $y$, $z$, each different from $1$, and satisfying $xyz=1$.

[b](b)[/b] Prove that equality holds above for infinitely many triples of rational numbers $x$, $y$, $z$, each different from $1$, and satisfying $xyz=1$.

[i]Author: Walther Janous, Austria[/i] -/
theorem imo_2008_p2.parts.ii :
    Set.Infinite {
      (x, y, z) |
      (x : ℚ) (y : ℚ) (z : ℚ)
      (h₀ : x ≠ 1 ∧ y ≠ 1 ∧ z ≠ 1)
      (h₁ : x * y * z = 1)
      (h₂ : x ^ 2 / (x - 1) ^ 2 + y ^ 2 / (y - 1) ^ 2 + z ^ 2 / (z - 1) ^ 2 = 1) } := by
  sorry

/-- [b](a)[/b] Prove that
\[\frac {x^{2}}{\left(x -{} 1\right)^{2}} +{} \frac {y^{2}}{\left(y -{} 1\right)^{2}} +{} \frac {z^{2}}{\left(z -{} 1\right)^{2}} \geq 1\] for all real numbers $x$, $y$, $z$, each different from $1$, and satisfying $xyz=1$.

[b](b)[/b] Prove that equality holds above for infinitely many triples of rational numbers $x$, $y$, $z$, each different from $1$, and satisfying $xyz=1$.

[i]Author: Walther Janous, Austria[/i] -/
@[imo_problem_subject algebra]
theorem imo_2008_p2 :
    (∀ x y z : ℝ, x ≠ 1 ∧ y ≠ 1 ∧ z ≠ 1 → x * y * z = 1 →
      x ^ 2 / (x - 1) ^ 2 + y ^ 2 / (y - 1) ^ 2 + z ^ 2 / (z - 1) ^ 2 ≥ 1) ∧
    Set.Infinite {
      (x, y, z) |
      (x : ℚ) (y : ℚ) (z : ℚ)
      (_ : x ≠ 1 ∧ y ≠ 1 ∧ z ≠ 1)
      (_ : x * y * z = 1)
      (_ : x ^ 2 / (x - 1) ^ 2 + y ^ 2 / (y - 1) ^ 2 + z ^ 2 / (z - 1) ^ 2 = 1)
    } := by
  constructor
  · exact imo_2008_p2.parts.i
  · exact imo_2008_p2.parts.ii
