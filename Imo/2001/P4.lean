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
Let $n_1, n_2, \ldots , n_m$ be integers where $m$ is odd. Let $x = (x_1, \ldots , x_m)$ denote a permutation of the integers $1, 2, \ldots , m$. Let $f(x) = x_1 n_1 + x_2 n_2 + \cdots + x_m n_m$. Show that for some distinct permutations $a, b$ the difference $f(a) - f(b)$ is a multiple of $m!$. -/
@[imo_problem_subject combinatorics]
theorem imo_2001_p4 (n : ℕ) (h₀ : Odd n) (h₁ : 1 < n) (c : ℕ → ℤ)
    -- Extend the definition of S to any function from ℕ to ℕ. Use ℤ as codomain
    -- so that we can subtract safely.
    (S : (ℕ → ℕ) → ℤ)
    (h₃ : ∀ f : ℕ → ℕ, S f = ∑ i ∈ Finset.Icc 1 n, c i * f i) :
    ∃ a b : ℕ → ℕ,
      (∃ i ∈ Finset.Icc 1 n, a i ≠ b i) ∧
      -- a is a permutation of [1, ..., n]
      Set.BijOn a (Set.Icc 1 n) (Set.Icc 1 n) ∧
      -- b is a permutation of [1, ..., n]
      Set.BijOn b (Set.Icc 1 n) (Set.Icc 1 n) ∧
      -- $n!$ is a divisor of $S(a)-S(b)$
      ↑(Nat.factorial n) ∣ S a - S b := by
  sorry
