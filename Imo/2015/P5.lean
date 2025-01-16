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
Let $\mathbb R$ be the set of real numbers. Determine all functions $f:\mathbb R\to\mathbb R$ that satisfy the equation\[f(x+f(x+y))+f(xy)=x+f(x+y)+yf(x)\]for all real numbers $x$ and $y$.

[i]Proposed by Dorlir Ahmeti, Albania[/i]
-/
@[imo_problem_subject algebra]
theorem imo_2015_p5 :
    {f : ℝ → ℝ | ∀ x y, f (x + f (x + y)) + f (x * y) = x + f (x + y) + y * f x} =
    answer({fun x => x, fun x => 2 - x}) := by
  sorry
