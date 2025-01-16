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
Does there exist a function $f$ from the positive integers to the positive integers such that $f(1)=2,f(f(n))=f(n)+n$ for all $n$, and $f(n)< f(n+1)$ for all $n$? -/
@[imo_problem_subject number_theory]
theorem imo_1993_p5 : ∃ f : ℕ+ → ℕ+, f 1 = 2 ∧ ∀ n, f (f n) = f n + n ∧ StrictMono f := by
  sorry
