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
Let $E_n=(a_1-a_2)(a_1-a_3)\ldots(a_1-a_n)+(a_2-a_1)(a_2-a_3)\ldots(a_2-a_n)+\ldots+(a_n-a_1)(a_n-a_2)\ldots(a_n-a_{n-1})$. Let $S_n$ be the proposition that $E_n\ge0$ for all real $a_i$. Prove that $S_n$ is true for $n=3$ and $5$, but for no other $n>2$. -/
@[imo_problem_subject algebra]
theorem imo_1971_p1 (n : ℕ) (h : n > 2) :
    (∀ a : Fin n → ℝ, ∑ i, ∏ j ∈ Finset.univ.erase i, (a i - a j) ≥ 0) ↔ n = 3 ∨ n = 5 := by
  sorry
