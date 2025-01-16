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
Let $\mathbb Q_{>0}$ be the set of all positive rational numbers. Let $f:\mathbb Q_{>0}\to\mathbb R$ be a function satisfying the following three conditions:

(i) for all $x,y\in\mathbb Q_{>0}$, we have $f(x)f(y)\geq f(xy)$;
(ii) for all $x,y\in\mathbb Q_{>0}$, we have $f(x+y)\geq f(x)+f(y)$;
(iii) there exists a rational number $a>1$ such that $f(a)=a$.

Prove that $f(x)=x$ for all $x\in\mathbb Q_{>0}$.

[i]Proposed by Bulgaria[/i]
-/
@[imo_problem_subject algebra]
theorem imo_2013_p5 (f : ℚ → ℝ) (h0 : ∀ x y, 0 < x → 0 < y → f (x * y) ≤ f x * f y)
    (h1 : ∀ x y, 0 < x → 0 < y → f x + f y ≤ f (x + y)) (h_fixed_point : ∃ a, 1 < a ∧ f a = a) :
    ∀ x, 0 < x → f x = x := by
  sorry
