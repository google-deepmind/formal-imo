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
Let $P_1(x)=x^2-2$, and $P_j(x)=P_1(P_{j-1}(x))$ for $j=2,3,\ldots$. Show that, for any positive
integer $n$, the roots of the equation $P_n(x)=x$ are real and distinct. -/
@[imo_problem_subject algebra]
theorem imo_1976_p2 (n : ℕ) (hn : 0 < n) (P : ℕ → Polynomial ℂ) (h0 : P 1 = X ^ 2 - 2)
    (hi : ∀ j, 1 < j → P j = (P 1).comp (P (j - 1 : ℕ))) :
    ∃ S : Finset ℝ, (S.image (↑)).val = (P n - X).roots := by
  sorry
