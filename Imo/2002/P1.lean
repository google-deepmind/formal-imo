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
$S$ is the set  of all $(h, k)$ with $h, k$ non-negative integers such that $h+k < n$. Each element of $S$ is colored red or blue, so that if  $(h, k)$ is red and $h' \le h, k' \le k$, then $(h', k')$ is also red. A type 1 subset of $S$ has $n$ blue elements with different first member and a type 2 subset of $S$ has $n$ blue elements with different second member. Show that there are the same number of type 1 and type 2 subsets. -/
@[imo_problem_subject combinatorics]
theorem imo_2002_p1 (n : ℕ) (h₀ : 0 < n) (S : Finset (ℕ × ℕ)) (h₁ : ∀ x y, (x, y) ∈ S ↔ x + y < n)
    -- The "is red" function.
    (red : ℕ × ℕ → Prop)
    -- If a point $(x,y)$ is red, then so are all points $(x',y')$ with $x'\leq x$
    -- and $y'\leq y$. This only needs to be true on S, but it doesn't change things
    -- to have it on the whole plane.
    (h₂ : ∀ (x₁ y₁ x₂ y₂ : ℕ) (h : red (x₁, y₁) ∧ x₂ ≤ x₁ ∧ y₂ ≤ y₁), red (x₂, y₂))
    -- The sets of ways to choose n blue points with distinct x coordinates.
    (A : Finset (Finset (ℕ × ℕ)))
    (h₃ :
      ∀ C,
        C ∈ A ↔
          C ⊆ S ∧
            C.card = n ∧
              (∀ c ∈ C, ¬red c) ∧
                ∀ (x₁ y₁ x₂ y₂) (h : (x₁, y₁) ∈ C ∧ (x₂, y₂) ∈ C ∧ x₁ = x₂), y₁ = y₂)
    -- The sets of ways to choose n blue points with distinct y coordinates.
    (B : Finset (Finset (ℕ × ℕ)))
    (h₄ :
      ∀ C,
        C ∈ B ↔
          C ⊆ S ∧
            C.card = n ∧
              (∀ c ∈ C, ¬red c) ∧
                ∀ (x₁ y₁ x₂ y₂) (h : (x₁, y₁) ∈ C ∧ (x₂, y₂) ∈ C ∧ y₁ = y₂), x₁ = x₂) :
    A.card = B.card := by
  sorry

