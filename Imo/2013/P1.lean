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
Assume that $k$ and $n$ are two positive integers. Prove that there exist positive integers $m_1 , \dots , m_k$ such that \[1+\frac{2^k-1}{n}=\left(1+\frac1{m_1}\right)\cdots \left(1+\frac1{m_k}\right).\]
[i]Proposed by Japan[/i]
-/
@[imo_problem_subject number_theory]
theorem imo_2013_p1 (k n : ℕ) (h₀ : 0 < k) (h₁ : 0 < n) :
    ∃ m : ℕ → ℕ, (∀ i, 0 < m i) ∧
      1 + (2 ^ k - 1 : ℚ) / n = ∏ i ∈ Finset.Icc 1 k, (1 + 1 / (m i : ℚ)) := by
  sorry
