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
Suppose that $ s_1,s_2,s_3, \ldots$ is a strictly increasing sequence of positive integers such that the sub-sequences \[s_{s_1},\, s_{s_2},\, s_{s_3},\, \ldots\qquad\text{and}\qquad s_{s_1+1},\, s_{s_2+1},\, s_{s_3+1},\, \ldots\] are both arithmetic progressions. Prove that the sequence $ s_1, s_2, s_3, \ldots$ is itself an arithmetic progression.

[i]Proposed by Gabriel Carroll, USA[/i]
-/
@[imo_problem_subject algebra]
theorem imo_2009_p3 (s : ℕ → ℕ) (h : StrictMono s) (hp : ∀ i > 0, 0 < s i)
    (h0 : ∃ a : ℕ, ∀ i > 0, s (s (i + 1)) = a + s (s i))
    (h1 : ∃ a : ℕ, ∀ i > 0, s (1 + s (i + 1)) = a + s (1 + s i)) :
    ∃ a, ∀ i > 0, s (i + 1) = a + s i := by
  sorry
