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

-- Derived from miniF2F's test.lean
import Imo.ProblemImports

open scoped Real
open scoped Nat

/--
The function $f$ is defined on the set of positive integers and its values are positive integers. Given that $f(n+1)>f(f(n))$ for all $n$, prove that $f(n)=n$ for all $n$. -/
@[imo_problem_subject algebra]
theorem imo_1977_p6 (f : ℕ+ → ℕ+) (h₁ : ∀ n, f (f n) < f (n + 1)) : ∀ n, f n = n := by
  sorry

