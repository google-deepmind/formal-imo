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
Find all function $f:\mathbb{R}\rightarrow\mathbb{R}$ such that for all $x,y\in\mathbb{R}$ the following equality holds \[
f(\left\lfloor x\right\rfloor y)=f(x)\left\lfloor f(y)\right\rfloor \] where $\left\lfloor a\right\rfloor $ is greatest integer not greater than $a.$

[i]Proposed by Pierre Bornsztein, France[/i]
-/
@[imo_problem_subject algebra]
theorem imo_2010_p1 :
    {f : ℝ → ℝ | ∀ x y, f (⌊x⌋ * y) = f x * ⌊f y⌋} =
      answer({0} ∪ {fun x => c | c ∈ Set.Ico (1 : ℝ) (2 : ℝ)}) := by
  sorry
