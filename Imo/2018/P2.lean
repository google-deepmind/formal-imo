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
Find all integers $n \geq 3$ for which there exist real numbers $a_1, a_2, \dots a_{n + 2}$ satisfying $a_{n + 1} = a_1$, $a_{n + 2} = a_2$ and
$$a_ia_{i + 1} + 1 = a_{i + 2},$$
for $i = 1, 2, \dots, n$.

[i]Proposed by Patrik Bak, Slovakia[/i]
-/
@[imo_problem_subject algebra]
theorem imo_2018_p2 (n : ℕ) (h₀ : 3 ≤ n) :
    (∃ a : ℕ → ℝ,
        a (n + 1) = a 1 ∧
        a (n + 2) = a 2 ∧
        ∀ i : ℕ, 0 < i → i ≤ n → a i * a (i + 1) + 1 = a (i + 2)) ↔
    answer(3 ∣ n) := by
  sorry
