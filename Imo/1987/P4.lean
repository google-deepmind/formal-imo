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

-- Derived from miniF2F's valid.lean
/--
Prove that there is no function $f$ from the set of non-negative integers into itself such that $f(f(n))=n+1987$ for all $n$. -/
@[imo_problem_subject algebra]
theorem imo_1987_p4 (f : ℕ → ℕ) (h₀ : ∀ n, f (f n) = n + 1987) : False := by
  sorry
