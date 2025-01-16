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

-- We formalise this construction as an existence proof.
/--
$a_1,a_2,\ldots,a_n$ are positive reals, and $q$ satisfies $0< q< 1$. Find $b_1,b_2,\ldots,b_n$, such that:

(a) $a_i< b_i$ for $i=1,2,\ldots,n$,

(b) $q<{b_{i+1}\over b_i}<{1\over q}$ for $i=1,2,\ldots,n-1$,

(c) $b_1+b_2+\ldots+b_n<(a_1+a_2+\ldots+a_n){1+q\over1-q}$.
-/
@[imo_problem_subject algebra]
theorem imo_1973_p6 (n : ℕ) (a : ℕ → ℝ) (q : ℝ) (h₀ : ∀ n, 0 < a n) (h₁ : 0 < q) (h₂ : q < 1)
    (h₃ : 0 < n) :
    ∃ b : ℕ → ℝ,
      (∀ k, k < n → a k < b k) ∧
        (∀ k, k < n - 1 → q < b (k + 1) / b k ∧ b (k + 1) / b k < 1 / q) ∧
          ∑ k ∈ Finset.range n, b k < (1 + q) / (1 - q) * ∑ k ∈ Finset.range n, a k := by
  sorry
