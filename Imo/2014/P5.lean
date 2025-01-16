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
For each positive integer $n$, the Bank of Cape Town issues coins of denomination $\frac1n$. Given a finite collection of such coins (of not necessarily different denominations) with total value at most most $99+\frac12$, prove that it is possible to split this collection into $100$ or fewer groups, such that each group has total value at most $1$. -/
@[imo_problem_subject number_theory]
theorem imo_2014_p5 (C : Multiset ℚ) (h₀ : ∀ c, c ∈ C → ∃ n : ℕ+, c = (1 : ℚ) / n)
    (h₁ : C.sum ≤ 99 + 1 / (2 : ℚ)) :
    ∃ k, k ≤ 100 ∧ ∃ G : ℕ → Multiset ℚ,
      -- We can split C into groups G: they sum up, as multisets, to C.
      ((Multiset.Icc 1 k).map G).sum = C ∧
      ∀ i, i ∈ Finset.Icc 1 k → (G i).sum ≤ 1 := by
  sorry
