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

/--
For every real number $x_1$, construct the sequence $x_1,x_2,\ldots$ by setting: $$x_{n+1}=x_n(x_n+{1\over n}).$$ Prove that there exists exactly one value of $x_1$ which gives $0< x_n< x_{n+1}< 1$ for all $n$. -/
@[imo_problem_subject algebra]
theorem imo_1985_p6 (f : ∀ x₁ : ℝ, ℕ+ → ℝ) (h₀ : ∀ x₁, f x₁ 1 = x₁)
    (h₁ : ∀ x₁ n, f x₁ (n + 1) = f x₁ n * (f x₁ n + 1 / n)) :
    ∃! x₁, ∀ n, 0 < f x₁ n ∧ f x₁ n < f x₁ (n + 1) ∧ f x₁ (n + 1) < 1 := by
  sorry
