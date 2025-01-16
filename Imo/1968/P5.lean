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
open scoped Classical

/-- Let $f$ be a real-valued function defined for all real numbers, such that for some $a>0$ we have

$f(x+a)={1\over2}+\sqrt{f(x)-f(x)^2}$ for all $x$.

\noindent Prove that $f$ is periodic, and give an example of such a non-constant $f$ for $a=1$.
-/
@[imo_problem_subject algebra]
theorem imo_1968_p5 :
    (∀
      (f : ℝ → ℝ) (a : ℝ) (ha : 0 < a)
      (hnn : ∀ x, 0 ≤ f x - f x ^ 2) -- needed to make the sqrt do the right thing
      (hf : ∀ x, f (x + a) = 1 / 2 + √(f x - f x ^ 2)),
      ∃ b > 0, f.Periodic b) ∧
    -- give an example...
    Set.piecewise (⋃ n : ℤ, Set.Ico (2 * n : ℝ) (2 * n + 1)) (1 : ℝ → ℝ) (1 / 2) ∈
      {f : ℝ → ℝ |
        ∃ (a : ℝ) (ha : 0 < a) (hnn : ∀ x, 0 ≤ f x - f x ^ 2)
          (hf : ∀ x, f (x + a) = 1 / 2 + √(f x - f x ^ 2)),
          -- for a = 1 that is not constant
          a = 1 ∧ ∀ c, f ≠ Function.const _ c} := by
  sorry

theorem imo_1968_p5.parts.i (f : ℝ → ℝ) (a : ℝ) (ha : 0 < a) (hnn : ∀ x, 0 ≤ f x - f x ^ 2)
    (hf : ∀ x, f (x + a) = 1 / 2 + √(f x - f x ^ 2)) : ∃ b > 0, f.Periodic b := by
  sorry

theorem imo_1968_p5.parts.ii :
    Set.piecewise (⋃ n : ℤ, Set.Ico (2 * n : ℝ) (2 * n + 1)) (1 : ℝ → ℝ) (1 / 2) ∈
      {f : ℝ → ℝ |
        ∃ (a : ℝ) (ha : 0 < a) (hnn : ∀ x, 0 ≤ f x - f x ^ 2) (hf :
          ∀ x, f (x + a) = 1 / 2 + √(f x - f x ^ 2)),
          -- for a = 1 that is not constant
          a = 1 ∧ ∀ c, f ≠ Function.const _ c} := by
  sorry
