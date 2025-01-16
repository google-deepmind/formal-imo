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
Determine all functions $ f$ from the set of positive integers to the set of positive integers such that, for all positive integers $ a$ and $ b$, there exists a non-degenerate triangle with sides of lengths
\[ a, f(b) \text{ and } f(b + f(a) - 1).\]
(A triangle is non-degenerate if its vertices are not collinear.)

[i]Proposed by Bruno Le Floch, France[/i]

Solution: f(n) = n
-/
@[imo_problem_subject algebra]
theorem imo_2009_p5 :
    { f : ℕ → ℕ | (∀ n > 0, 0 < f n) ∧
      ∀ a b : ℕ, 0 < a → 0 < b →
        a + f b > f (b + f a - 1 : ℕ) ∧
        f b + f (b + f a - 1 : ℕ) > a ∧
        f (b + f a - 1 : ℕ) + a > f b
    } = answer({ f | ∀ n > 0, f n = n }) := by
  sorry
