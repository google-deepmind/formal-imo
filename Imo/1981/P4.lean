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
(a) For which $n>2$ is there a set of $n$ consecutive positive integers such that the largest number in the set is a divisor of the least common multiple of the remaining $n-1$ numbers?

(b) For which $n>2$ is there exactly one set having this property?
-/
@[imo_problem_subject number_theory]
theorem imo_1981_p4 :
    {n : ℕ | 2 < n ∧ ∃ k : ℕ, k + n ∣ (Finset.Ico (k + 1) (k + n)).lcm id} = {n : ℕ | 4 ≤ n} ∧
      {n : ℕ | 2 < n ∧ ∃! k : ℕ, k + n ∣ (Finset.Ico (k + 1) (k + n)).lcm id} = {4} := by
  sorry

theorem imo_1981_p4.parts.a :
    {n : ℕ | 2 < n ∧ ∃ k : ℕ, k + n ∣ (Finset.Ico (k + 1) (k + n)).lcm id} = {n : ℕ | 4 ≤ n} := by
  sorry

theorem imo_1981_p4.parts.b :
    {n : ℕ | 2 < n ∧ ∃! k : ℕ, k + n ∣ (Finset.Ico (k + 1) (k + n)).lcm id} = {4} := by
  sorry
