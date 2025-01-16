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
Consider infinite sequences $\{x_n\}$ of positive reals such that $x_0=1$ and $x_0\ge x_1\ge x_2\ge\ldots$.

[b]a)[/b] Prove that for every such sequence there is an $n\ge1$ such that: \[ {x_0^2\over x_1}+{x_1^2\over x_2}+\ldots+{x_{n-1}^2\over x_n}\ge3.999. \]

[b]b)[/b] Find such a sequence such that for all $n$: \[ {x_0^2\over x_1}+{x_1^2\over x_2}+\ldots+{x_{n-1}^2\over x_n}< 4. \] -/
theorem imo_1982_p3.parts.a (x : ℕ → ℝ) (h₀ : ∀ i, 0 < x i) (h₁ : x 0 = 1) (h₂ : Antitone x) :
    ∃ n ≥ 1, ∑ i ∈ Finset.Icc 1 n, x (i - 1) ^ 2 / x i ≥ 3.999 := by
  sorry

/--
Consider infinite sequences $\{x_n\}$ of positive reals such that $x_0=1$ and $x_0\ge x_1\ge x_2\ge\ldots$.

[b]a)[/b] Prove that for every such sequence there is an $n\ge1$ such that: \[ {x_0^2\over x_1}+{x_1^2\over x_2}+\ldots+{x_{n-1}^2\over x_n}\ge3.999. \]

[b]b)[/b] Find such a sequence such that for all $n$: \[ {x_0^2\over x_1}+{x_1^2\over x_2}+\ldots+{x_{n-1}^2\over x_n}< 4. \] -/
theorem imo_1982_p3.parts.b :
    -- The prose is a construction problem, but we are formalising it as an existence proof.
    ∃ x : ℕ → ℝ, (∀ i, 0 < x i) ∧ x 0 = 1 ∧ Antitone x ∧
      ∀ n, ∑ i ∈ Finset.range n, x i ^ 2 / x (i + 1) < 4 := by
  sorry
