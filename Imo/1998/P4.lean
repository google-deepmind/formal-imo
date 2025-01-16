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

/-- Determine all pairs $(a, b)$ of positive integers such that $ab^2 + b + 7$ divides $a^2b+a+b$.

Solution: $(x, y) = (11, 1), (49, 1), (7k^2, 7k)$ for all positive integers $k$.
-/
@[imo_problem_subject number_theory]
theorem imo_1998_p4 :
    {(x, y) | (x : ℕ) (y : ℕ)
        (h₀ : 0 < x ∧ 0 < y)
        (h₁: (x * y^2 + y + 7) ∣ (x^2 * y + x + y))} =
      answer({(11, 1), (49, 1)} ∪ {(7 * k^2, 7 * k) | (k : ℕ) (h : 0 < k)}) := by
  sorry
