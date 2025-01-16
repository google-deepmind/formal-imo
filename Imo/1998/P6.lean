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
Consider all functions $f: N \to N$ on the positive integers satisfying $f(t^2f(s)) = sf(t)^2$ for all $s$ and $t$. Determine the least possible value of $f(1998)$. -/
@[imo_problem_subject algebra]
theorem imo_1998_p6 :
    IsLeast
      { f 1998 |
        (f : ℕ → ℕ)
        (h₀ : ∀ n, 0 < f n)
        (h₁ : ∀ m > 0, ∀ n > 0, f (n^2 * f m) = m * (f n)^2) }
      answer(120) := by
  sorry
