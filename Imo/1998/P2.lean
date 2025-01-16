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
In a competition there are $a$ contestants and $b$ judges, where $b \ge 3$ is an odd integer. Each judge rates each contestant as either ``pass" or ``fail". Suppose k is a number such that for any two judges their ratings coincide for at most k contestants. Prove $k/a \ge (b-1)/2b$. -/
@[imo_problem_subject combinatorics]
theorem imo_1998_p2 (m n k : ℕ) (h₀ : n ≥ 3 ∧ Odd n) (h₁ : 0 < m)
    -- Not in prose, but implied.
    (evaluation : Fin m → Fin n → Bool)
    (h₂ : ∀ i j, i ≠ j → (Finset.univ.filter fun c => evaluation c i = evaluation c j).card ≤ k) :
    (k / m : ℚ) ≥ (n - 1) / (2 * n) := by
  sorry
