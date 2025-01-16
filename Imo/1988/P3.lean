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
A function $f$ is defined on the positive integers by: $f(1)=1, f(3)=3, f(2n)=f(n),f(4n+1)=2f(2n+1)-f(n)$, and $f(4n+3)=3f(2n+1)-2f(n)$ for all positive integers $n$. Determine the number of positive integers $n\le1988$ for which $f(n)=n$.
Solution: 92
-/
@[imo_problem_subject algebra]
theorem imo_1988_p3 (f : ℕ → ℕ) (h₀ : ∀ n, 0 < n → 0 < f n) (h₁ : f 1 = 1) (h₂ : f 3 = 3)
    (h₃ : ∀ n > 0, f (2 * n) = f n) (h₄ : ∀ n > 0, f (4 * n + 1) = 2 * f (2 * n + 1) - f n)
    (h₅ : ∀ n > 0, f (4 * n + 3) = 3 * f (2 * n + 1) - 2 * f n) :
    (Finset.filter (fun n => f n = n) (Finset.Icc 1 1988)).card = answer(92) := by
  sorry
