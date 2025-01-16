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

/-- Find all triples $(a,b,p)$ of positive integers with $p$ prime and $$a^p=b!+p$$ -/
@[imo_problem_subject number_theory]
theorem imo_2022_p5 :
  {(a, b, p) | (a : ℕ) (b : ℕ) (p : ℕ)
    (h₀ : 0 < a ∧ 0 < b ∧ 0 < p)
    (h₁ : Nat.Prime p)
    (h₂ : a^p = b ! + p)} =
      answer({(2, 2, 2), (3, 4, 3)}) := by
  sorry
