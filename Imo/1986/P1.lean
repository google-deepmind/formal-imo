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
Let $d$ be any positive integer not equal to $2, 5$ or $13$. Show that one can find distinct $a,b$ in the set $\{2,5,13,d\}$ such that $ab-1$ is not a perfect square. -/
@[imo_problem_subject number_theory]
theorem imo_1986_p1 (d : ℕ) (h₀ : d > 0) (h₁ : d ≠ 2 ∧ d ≠ 5 ∧ d ≠ 13) (K)
    (hK : K = ({2, 5, 13, d} : Finset ℕ)) :
    ∃ a ∈ K, ∃ b ∈ K, a ≠ b ∧ ¬IsSquare (a * b - 1) := by
  sorry
