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
Find all positive integers $n$ for which there exist non-negative integers $a_1, a_2, \ldots, a_n$ such that
\[
\frac{1}{2^{a_1}} + \frac{1}{2^{a_2}} + \cdots + \frac{1}{2^{a_n}} =
\frac{1}{3^{a_1}} + \frac{2}{3^{a_2}} + \cdots + \frac{n}{3^{a_n}} = 1.
\]

[i]Proposed by Dusan Djukic, Serbia[/i]
-/
@[imo_problem_subject number_theory]
theorem imo_2012_p6 :
    {n : ℕ | 0 < n ∧ ∃ a : ℕ → ℕ,
      1 = ∑ i ∈ Finset.Icc 1 n, (1 : ℚ) / 2 ^ a i ∧
      1 = ∑ i ∈ Finset.Icc 1 n, (i : ℚ) / 3 ^ a i} =
    answer({n : ℕ | n % 4 = 1 ∨ n % 4 = 2}) := by
  sorry
