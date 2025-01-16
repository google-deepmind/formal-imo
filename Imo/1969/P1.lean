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
Prove that there are infinitely many positive integers $m$, such that $n^4+m$ is not prime for any positive integer $n$. -/
@[imo_problem_subject number_theory]
theorem imo_1969_p1 : Set.Infinite {m : ℕ | 0 < m ∧ ∀ n > 0, ¬Nat.Prime (n ^ 4 + m)} := by
  sorry
