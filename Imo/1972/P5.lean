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
$f$ and $g$ are real-valued functions defined on the real line. For all $x$ and $y, f(x+y)+f(x-y)=2f(x)g(y)$. $f$ is not identically zero and $|f(x)|\le1$ for all $x$. Prove that $|g(x)|\le1$ for all $x$. -/
@[imo_problem_subject algebra]
theorem imo_1972_p5 (f g : ℝ → ℝ) (h₀ : ∀ x y, f (x + y) + f (x - y) = 2 * f x * g y)
    (h₁ : ¬∀ x, f x = 0) (h₂ : ∀ x, |f x| ≤ 1) : ∀ x, |g x| ≤ 1 := by
  sorry
