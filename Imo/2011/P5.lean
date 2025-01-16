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

-- Formalization and proof extracted from mathlib
import Imo.ProblemImports

-- cs/third_party/lean_mathlib/archive/imo/imo2011_q5.lean
/-
Copyright (c) 2021 Alain Verberkmoes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alain Verberkmoes
-/
open scoped Real
open scoped Nat

/-!
# IMO 2011 Q5

Let `f` be a function from the set of integers to the set
of positive integers.  Suppose that, for any two integers
`m` and `n`, the difference `f(m) - f(n)` is divisible by
`f(m - n)`.  Prove that, for all integers `m` and `n` with
`f(m) ≤ f(n)`, the number `f(n)` is divisible by `f(m)`.
-/



/--
Let $f$ be a function from the set of integers to the set of positive integers. Suppose that, for any two integers $m$ and $n$, the difference $f(m) - f(n)$ is divisible by $f(m- n)$. Prove that, for all integers $m$ and $n$ with $f(m) \leq f(n)$, the number $f(n)$ is divisible by $f(m)$.

[i]Proposed by Mahyar Sefidgaran, Iran[/i]
-/
@[imo_problem_subject number_theory]
theorem imo_2011_p5 (f : ℤ → ℤ) (hpos : ∀ n : ℤ, 0 < f n)
    (hdvd : ∀ m n : ℤ, f (m - n) ∣ f m - f n) : ∀ m n : ℤ, f m ≤ f n → f m ∣ f n := by
  sorry
