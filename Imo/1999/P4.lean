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
Find all pairs $(n, p)$ of positive integers, such that: $p$ is prime; $n \le 2p$; and $(p-1)^n + 1$ is divisible by $n^{p-1}$. -/
@[imo_problem_subject number_theory]
theorem imo_1999_p4 :
    {(x, p) | (x : ℕ) (p : ℕ) (h₀ : Nat.Prime p) (h₁ : 0 < x) (h₂ : x ≤ 2 * p) (h₃ : x^(p - 1) ∣ (p - 1)^x + 1)} =
      answer({(2, 2), (3, 3)} ∪ {(1, p) | (p : ℕ) (h : Nat.Prime p)}) := by
  sorry
