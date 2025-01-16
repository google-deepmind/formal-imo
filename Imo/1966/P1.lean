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

open scoped symmDiff

/--
Problems $A,B$ and $C$ were posed in a mathematical contest. $25$ competitors solved at least one of the three. Amongst those who did not solve $A$, twice as many solved $B$ as $C$. The number solving only $A$ was one more than the number solving $A$ and at least one other. The number solving just $A$ equalled the number solving just $B$ plus the number solving just $C$. How many solved just $B$?

Solution: $6$
-/
@[imo_problem_subject combinatorics]
theorem imo_1966_p1 (n : ℕ) (A B C : Finset (Fin n)) (h₀ : (A ∪ B ∪ C).card = 25)
    (h₁ : (Aᶜ ∩ B).card = 2 * (Aᶜ ∩ C).card) (h₂ : ((A \ B) \ C).card = 1 + (A ∩ (B ∪ C)).card)
    (h₃ : ((A \ B) \ C).card = ((B \ C) \ A).card + ((C \ A) \ B).card) : ((B \ C) \ A).card = answer(6) := by
  sorry
