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
Find all real-valued functions on the reals such that $(f(x) + f(y)) ((f(u) + f(v)) = f(xu - yv) + f(xv + yu)$ for all $x, y, u, v$.

Solution: f(x) = 0, f(x) = 1/2, f(x) = x^2
-/
@[imo_problem_subject algebra]
theorem imo_2002_p5 :
    { f : ℝ → ℝ | ∀ x y u v,
      (f x + f y) * (f u + f v) = f (x * u - y * v) + f (x * v + y * u)
    } = answer({ fun _ ↦ 0, fun _ ↦ 1 / 2, fun x ↦ x ^ 2 }) := by
  sorry
