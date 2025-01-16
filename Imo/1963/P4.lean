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
Find all solutions $x_1,\ldots,x_5$ to the five equations $x_i+x_{i+2}=yx_{i+1}$ for $i=1,\ldots,5$, where subscripts are reduced by $5$ if necessary.

Solution: If $y=2$ : $(x_1,x_2,x_3,x_4,x_5)=$ $(a,a,a,a,a)$ whatever is
$a\in\mathbb R$

If $y=\frac {-1\pm\sqrt 5}2$ : $(x_1,x_2,x_3,x_4,x_5)=$
$(a,b,-a+yb,-ya-yb,ya-b)$ whatever are $a,b\in\mathbb R$

If $y\ne 2$ and $y\ne \frac {-1\pm\sqrt 5}2$ : $(x_1,x_2,x_3,x_4,x_5)=$
$(0,0,0,0,0)$
-/
@[imo_problem_subject algebra]
theorem imo_1963_p4 :
    {(x₁, x₂, x₃, x₄, x₅) |
      (x₁ : ℝ) (x₂ : ℝ) (x₃ : ℝ) (x₄ : ℝ) (x₅ : ℝ) (y : ℝ)
      (h₀ : x₅ + x₂ = y*x₁)
      (h₁ : x₁ + x₃ = y*x₂)
      (h₂ : x₂ + x₄ = y*x₃)
      (h₃ : x₃ + x₅ = y*x₄)
      (h₄ : x₄ + x₁ = y*x₅)} =
    answer(
      {(a, a, a, a, a) | (a : ℝ)} ∪
      {(a, b, -a + y*b, -y*a - y*b, y*a - b) |
        (a : ℝ) (b : ℝ) (y : ℝ)
        (h₀ : y = (-1 + √5) / 2 ∨ y = (-1 - √5) / 2)}) := by
  sorry
