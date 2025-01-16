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
Let $f(x)=\cos(a_1+x)+{1\over2}\cos(a_2+x)+{1\over4}\cos(a_3+x)+\ldots+{1\over2^{n-1}}\cos(a_n+x)$, where $a_i$ are real constants and $x$ is a real variable. If $f(x_1)=f(x_2)=0$, prove that $x_1-x_2$ is a multiple of $\pi$. -/
@[imo_problem_subject algebra]
theorem imo_1969_p2 (n : ℕ+) (a : ℕ+ → ℝ) (f : ℝ → ℝ)
    (h₁ : ∀ x, f x = ∑ i ∈ Finset.Iic n, Real.cos (a i + x) / 2 ^ (i - 1 : ℕ)) (x₁ x₂ : ℝ)
    (h₂ : f x₁ = 0) (h₃ : f x₂ = 0) : ∃ t : ℤ, x₁ - x₂ = t * π := by
  sorry
