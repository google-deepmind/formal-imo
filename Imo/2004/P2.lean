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
open Polynomial

/--
Find all polynomials $f$ with real coefficients such that for all reals $a,b,c$ such that $ab+bc+ca = 0$ we have the following relations

\[ f(a-b) + f(b-c) + f(c-a) = 2f(a+b+c). \]

Solution: $f(x) = kx^4 + lx^2$ for $k,l \in R$
-/
@[imo_problem_subject algebra]
theorem imo_2004_p2 :
    {f : Polynomial ℝ |
        ∀ (a b c : ℝ) (h : a * b + b * c + c * a = 0),
          f.eval (a - b) + f.eval (b - c) + f.eval (c - a) = 2 * f.eval (a + b + c)} =
      answer({k • X^4 + l • X^2 | (k : ℝ) (l : ℝ)}) := by
  sorry
