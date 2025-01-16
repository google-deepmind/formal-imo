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
The set of all positive integers is the union of two disjoint subsets $\{f(1),f(2),f(3),\ldots\}$, $\{g(1),g(2),g(3),\ldots\}$, where $f(1)< f(2)<\ldots$, and $g(1)< g(2)< g(3)<\ldots$, and $g(n)=f(f(n))+1$ for $n=1,2,3,\ldots$. Determine $f(240)$.

Solution: $388$
-/
@[imo_problem_subject combinatorics]
theorem imo_1978_p3 (f : ℕ → ℕ) (not_in_sequence : ℕ → Prop) [DecidablePred not_in_sequence]
    (h₀ : ∀ n, 0 < n → 0 < f n) (h₁ : StrictMonoOn f (Set.Ici 1))
    (h₂ : ∀ n, not_in_sequence n = ¬∃ m, f m = n)
    (h₃ :
      ∀ n > 0,
        not_in_sequence (f (f n) + 1) ∧
          Finset.card (Finset.filter not_in_sequence (Finset.Ico 1 (f (f n) + 1))) = n - 1) :
    f 240 = answer(388) := by
  sorry
