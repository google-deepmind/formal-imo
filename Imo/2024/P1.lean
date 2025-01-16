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
Determine all real numbers $\alpha$ such that, for every positive integer $n$, the integer
$$
\lfloor \alpha\rfloor + \lfloor2\alpha\rfloor + \cdots + \lfloor n\alpha\rfloor
$$
is a multiple of $n$.
(Note that $\lfloor z\rfloor$ denotes the greatest integer less than or equal to $z$.
For example, $\lfloor-\pi\rfloor = -4$ and $\lfloor2\rfloor = \lfloor2.9\rfloor = 2$.)

Solution: $\alpha$ is an even integer.
-/
@[imo_problem_subject algebra]
theorem imo_2024_p1 :
    { (α : ℝ) | ∀ (n : ℕ), 0 < n →
      (n : ℤ) ∣ (∑ i ∈ Finset.Icc 1 n, ⌊i*α⌋) }
    = answer({↑n | (n : ℤ) (hn : Even n)}) := by
  sorry
