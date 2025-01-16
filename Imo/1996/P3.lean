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

/--
Let $S$ be the set of non-negative integers. Find all functions $f:S\to S$ such that $f(m+f(n)) = f(f(m))+f(n)$ for all $m,n$. -/
@[imo_problem_subject algebra]
theorem imo_1996_p3 :
    {f : ℕ → ℕ | ∀ m n, f (m + f n) = f (f m) + f n} =
    answer(
      -- either zero
      {0} ∪
      {f : ℕ → ℕ |
        -- or given a target fixpoint `k` and the parameterization after that fixpoint
        ∃ (k : ℕ+) (n : Fin k → ℕ) (hn : n 0 = 0),
          -- evaluates on the given quotient and remainder
          ∀ q, ∀ r : Fin k,
            f (q*k + r) = q*k + (n r)*k}) := by
  sorry
