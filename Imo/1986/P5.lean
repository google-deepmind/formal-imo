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
Find all functions $f$ defined on the non-negative reals and taking non-negative real values such that: $f(2)=0,f(x)\ne0$ for $0\le x< 2$, and $f(xf(y))f(y)=f(x+y)$ for all $x,y$.

Solution: \[f(x)=\begin{cases}\frac{2}{2-x},& 0\le x<2\\0,& x\ge2.\end{cases}\]
-/
@[imo_problem_subject algebra]
theorem imo_1986_p5 (f : ℝ → ℝ) (h₀ : ∀ x, 0 ≤ x → 0 ≤ f x) (h₁ : f 2 = 0)
    (h₂ : ∀ x, 0 ≤ x ∧ x < 2 → f x ≠ 0)
    (h₃ : ∀ x ≥ 0, ∀ y ≥ 0, f (x * f y) * f y = f (x + y)) :
    -- This works because there's only one such function.
    ∀ x ≥ 0, f x = if 0 ≤ x ∧ x < 2 then 2 / (2 - x) else 0 := by
  sorry
