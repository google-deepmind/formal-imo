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
open scoped Topology

/--
Show that the inequality \[\sum_{i=1}^n \sum_{j=1}^n \sqrt{|x_i-x_j|}\leqslant \sum_{i=1}^n \sum_{j=1}^n \sqrt{|x_i+x_j|}\]holds for all real numbers $x_1,\ldots x_n.$ -/
@[imo_problem_subject algebra]
theorem imo_2021_p2 {n : ℕ} (X : Fin n → ℝ) :
    ∑ i, ∑ j, √(abs (X i - X j)) ≤ ∑ i, ∑ j, √(abs (X i + X j)) := by
  sorry
