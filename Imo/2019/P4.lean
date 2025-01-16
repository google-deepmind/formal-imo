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
Find all pairs $(k,n)$ of positive integers such that \[ k!=(2^n-1)(2^n-2)(2^n-4)\cdots(2^n-2^{n-1}). \]
[i]Proposed by Gabriel Chicas Reyes, El Salvador[/i]
-/
@[imo_problem_subject number_theory]
theorem imo_2019_p4 :
    {(k, n) | (k : ℕ+) (n : ℕ+) (h : k ! = ∏ i ∈ Finset.range n, (2^(n : ℕ) - 2^i))} = answer({(1, 1), (3, 2)}) := by
  sorry

