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
Find all functions $g:\mathbb{N}\rightarrow\mathbb{N}$ such that \[\left(g(m)+n\right)\left(g(n)+m\right)\] is a perfect square for all $m,n\in\mathbb{N}.$

[i]Proposed by Gabriel Carroll, USA[/i]
-/

@[imo_problem_subject number_theory]
theorem imo_2010_p3 :
    {g : ℕ → ℕ | (∀ n > 0, g n > 0) ∧ ∀ᵉ (m > 0) (n > 0), ∃ a, (g m + n) * (g n + m) = a ^ 2} =
    answer({g | ∃ c, ∀ n > 0, g n = n + c}) := by
  sorry
