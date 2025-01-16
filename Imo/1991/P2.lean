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
Let $n>6$ be an integer and let $a_1,a_2,\ldots ,a_k$ be all the positive integers less than $n$ and relatively prime to $n$. If $$a_2-a_1=a_3-a_2=\ldots a_k-a_{k-1}>0,$$ prove that $n$ must be either a prime or a power of $2$. -/
@[imo_problem_subject number_theory]
theorem imo_1991_p2 (n k : ℕ) (a : ℕ → ℕ) (coprimes : Finset ℕ) (h₀ : n > 6)
    (h₁ : coprimes = (Finset.Ico 1 n).filter fun m => n.gcd m = 1) (h₂ : k = coprimes.card)
    (h₃ : StrictMono a) (h₄ : a '' Finset.Icc 1 k = coprimes)
    (h₅ : ∀ i j, 1 < i ∧ 1 < j ∧ i ≤ k ∧ j ≤ k → a i - a (i - 1) = a j - a (j - 1)) :
    Nat.Prime n ∨ ∃ p : ℕ, n = 2 ^ p := by
  sorry
