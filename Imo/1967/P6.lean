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
In a sports contest a total of $m$ medals were awarded over $n$ days. On the first day one medal and $1\over7$ of the remaining medals were awarded. On the second day two medals and $1\over7$ of the remaining medals were awarded, and so on. On the last day, the remaining $n$ medals were awarded. How many medals were awarded, and over how many days?

Solution: $m=36, n=6$
-/
@[imo_problem_subject algebra]
theorem imo_1967_p6 (m n : ℕ) (medals : ℕ → ℕ) (h₀ : n > 1) (h₁ : (Finset.Icc 1 n).sum medals = m)
    (h₂ :
      ∀ d ∈ Finset.Icc 1 n,
        7 ∣ m - d - (Finset.Ico 1 d).sum medals ∧
          medals d = d + (m - d - (Finset.Ico 1 d).sum medals) / 7)
    (h₃ : medals n = n) : m = 36 ∧ n = 6 := by
  sorry
