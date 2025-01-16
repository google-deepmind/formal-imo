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
Let $S$ be the set of all real numbers greater than $-1$. Find all functions $f\colon S\to S$ such that $f\bigl(x+f(y)+xf(y)\bigr) = y+f(x) +yf(x)$ for all x, y, and ${f(x)\over x}$ is strictly increasing on each of the intervals $-1< x< 0$ and $0< x$. -/
@[imo_problem_subject algebra]
theorem imo_1994_p5 (f : ℝ → ℝ) (f_div_x : ℝ → ℝ) (S) (hS : S = Set.Ioi (-1 : ℝ))
    (h₀ : ∀ x, x ∈ S → f x ∈ S) (h₁ : ∀ x, f_div_x x = f x / x) :
    (∀ x ∈ S, ∀ y ∈ S, f (x + f y + x * f y) = y + f x + y * f x) ∧
        StrictMonoOn f_div_x (Set.Ioo (-1) 0) ∧ StrictMonoOn f_div_x (Set.Ioi 0) ↔
      ∀ x ∈ S, f x = -x / (x + 1) := by
  sorry
