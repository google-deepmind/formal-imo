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
Let $f : \mathbb R \to \mathbb R$ be a real-valued function defined on the set of real numbers that satisfies
\[f(x + y) \leq yf(x) + f(f(x))\]
for all real numbers $x$ and $y$. Prove that $f(x) = 0$ for all $x \leq 0$.

[i]Proposed by Igor Voronovich, Belarus[/i]
-/
@[imo_problem_subject algebra]
theorem imo_2011_p3 (f : ℝ → ℝ) (h₀ : ∀ x y, f (x + y) ≤ y * f x + f (f x)) : ∀ x ≤ 0, f x = 0 := by
  sorry
