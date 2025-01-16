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
The function $f(x,y)$ satisfies: $f(0,y)=y+1, f(x+1,0) = f(x,1), f(x+1,y+1)=f(x,f(x+1,y))$ for all non-negative integers $x,y$. Find $f(4,1981)$. -/
@[imo_problem_subject algebra]
theorem imo_1981_p6
    (f : ℕ → ℕ → ℕ)
    (h₀ : ∀ y, f 0 y = y + 1)
    (h₁ : ∀ x, f (x + 1) 0 = f x 1)
    (h₂ : ∀ x y, f (x + 1) (y + 1) = f x (f (x + 1) y)) :
    -- 2^(2^(...^2)) with 1984 2s is the same as 2^(2^(...^(2^1))) with 1984 2s
    f 4 1981 = ((fun n => 2 ^ n)^[1984]) 1 - 3 := by
  sorry
