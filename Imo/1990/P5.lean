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
Given an initial integer $n_0>1$, two players $A$ and $B$ choose integers $n_1,n_2,n_3,\ldots$ alternately according to the following rules:

Knowing $n_{2k}, A$ chooses any integer $n_{2k+1}$ such that $n_{2k}\le n_{2k+1}\le n_{2k}^2$.

Knowing $n_{2k+1},B$ chooses any integer $n_{2k+2}$ such that ${n_{2k+1}\over n_{2k+2}}=p^r$ for some prime $p$ and integer $r\ge 1$.

\noindent Player $A$ wins the game by choosing the number $1990$; player $B$ wins by choosing the number $1$. For which $n_0$ does

(a) $A$ have a winning strategy?

(b) $B$ have a winning strategy?

(c) Neither player have a winning strategy?

Solution:
a) $n_0 \geq 8$
b) $n_0<6$
c) $n_0=6,7$
-/
@[imo_problem_subject combinatorics]
theorem imo_1990_p5 (n₀ : ℕ) (h₀ : n₀ > 1)
    -- A and B take the previous number and return the next number.  This makes
    -- the problem a bit easier to solve since A and B strategies become
    -- deterministic.  However, since the game's rules are memoryless, games with
    -- random strategies are equivalent to shorter games with deterministic
    -- strategies, and the problem is not too easy compared to prose.
    (valid_A valid_B : (ℕ → ℕ) → Prop)
    -- A → B → winner.
    (A_win B_win : (ℕ → ℕ) → (ℕ → ℕ) → Prop)
    (h₁ : valid_A = fun A => ∀ k, k ≤ A k ∧ A k ≤ k ^ 2)
    (h₂ : valid_B = fun B => ∀ (k) (h : ∃ Bk, Bk ∣ k ∧ IsPrimePow (k / Bk)), B k = h.choose)
    (h₃ :
      A_win = fun A B =>
        ∃ n : ℕ → ℕ,
          n 0 = n₀ ∧
          (∀ k, n (2 * k + 1) = A (n (2 * k))) ∧
          (∀ k, n (2 * k + 2) = B (n (2 * k + 1))) ∧
          (∃ k, n (2 * k + 1) = 1990 ∧ ∀ i ≤ k, n (2 * i) ≠ 1))
    (h₄ :
      B_win = fun A B =>
        ∃ n : ℕ → ℕ,
          n 0 = n₀ ∧
          (∀ k, n (2 * k + 1) = A (n (2 * k))) ∧
          (∀ k, n (2 * k + 2) = B (n (2 * k + 1))) ∧
          (∃ k, n (2 * k) = 1 ∧ ∀ i < k, n (2 * i + 1) ≠ 1990)) :
    -- ∃ valid A such that ∀ valid B, A wins.
    ((∃ A, valid_A A ∧ ∀ B, valid_B B → A_win A B) ↔ n₀ ≥ 8) ∧
    -- ∃ valid B such that ∀ valid A, B wins.
    ((∃ B, valid_B B ∧ ∀ A, valid_A A → B_win A B) ↔ n₀ < 6) ∧
    -- ∃ valid A such that ∀ valid B, B can't win
    -- ∃ valid B such that ∀ valid A, A can't win
    (((∃ A, valid_A A ∧ ∀ B, valid_B B → ¬B_win A B) ∧
       ∃ B, valid_B B ∧ ∀ A, valid_A A → ¬A_win A B) ↔
          n₀ = 6 ∨ n₀ = 7) := by
  sorry

/-- Given an initial integer $ n_0 > 1$, two players, $ {\mathcal A}$ and $
{\mathcal B}$, choose integers $ n_1$, $ n_2$, $ n_3$, $ \ldots$ alternately
according to the following rules :

I.) Knowing $ n_{2k}$, $ {\mathcal A}$ chooses any integer $ n_{2k + 1}$ such
that \[ n_{2k} \leq n_{2k + 1} \leq n_{2k}^2. \] II.) Knowing $ n_{2k + 1}$, $
{\mathcal B}$ chooses any integer $ n_{2k + 2}$ such that \[ \frac {n_{2k +
1}}{n_{2k + 2}} \] is a prime raised to a positive integer power.

Player $ {\mathcal A}$ wins the game by choosing the number 1990; player $
{\mathcal B}$ wins by choosing the number 1. For which $ n_0$ does :

a.) $ {\mathcal A}$ have a winning strategy?
b.) $ {\mathcal B}$ have a winning strategy?
c.) Neither player have a winning strategy?

Solution:
a) $n_0 \geq 8$
b) $n_0<6$
c) $n_0=6,7$
-/
theorem imo_1990_p5.parts.a (n₀ : ℕ) (h₀ : n₀ > 1)
    -- A and B take the previous number and return the next number.  This makes
    -- the problem a bit easier to solve since A and B strategies become
    -- deterministic.  However, since the game's rules are memoryless, games with
    -- random strategies are equivalent to shorter games with deterministic
    -- strategies, and the problem is not too easy compared to prose.
    (valid_A valid_B : (ℕ → ℕ) → Prop)
    -- A → B → winner.
    (A_win B_win : (ℕ → ℕ) → (ℕ → ℕ) → Prop)
    (h₁ : valid_A = fun A => ∀ k, k ≤ A k ∧ A k ≤ k ^ 2)
    (h₂ : valid_B = fun B => ∀ (k) (h : ∃ Bk, Bk ∣ k ∧ IsPrimePow (k / Bk)), B k = h.choose)
    (h₃ :
      A_win = fun A B =>
        ∃ n : ℕ → ℕ,
          n 0 = n₀ ∧
          (∀ k, n (2 * k + 1) = A (n (2 * k))) ∧
          (∀ k, n (2 * k + 2) = B (n (2 * k + 1))) ∧
          (∃ k, n (2 * k + 1) = 1990 ∧ ∀ i ≤ k, n (2 * i) ≠ 1))
    (h₄ :
      B_win = fun A B =>
        ∃ n : ℕ → ℕ,
          n 0 = n₀ ∧
          (∀ k, n (2 * k + 1) = A (n (2 * k))) ∧
          (∀ k, n (2 * k + 2) = B (n (2 * k + 1))) ∧
          (∃ k, n (2 * k) = 1 ∧ ∀ i < k, n (2 * i + 1) ≠ 1990)) :
    -- ∃ valid A such that ∀ valid B, A wins.
    (∃ A, valid_A A ∧ ∀ B, valid_B B → A_win A B) ↔ n₀ ≥ 8 := by
  sorry

/-- Given an initial integer $ n_0 > 1$, two players, $ {\mathcal A}$ and $
{\mathcal B}$, choose integers $ n_1$, $ n_2$, $ n_3$, $ \ldots$ alternately
according to the following rules :

I.) Knowing $ n_{2k}$, $ {\mathcal A}$ chooses any integer $ n_{2k + 1}$ such
that \[ n_{2k} \leq n_{2k + 1} \leq n_{2k}^2. \] II.) Knowing $ n_{2k + 1}$, $
{\mathcal B}$ chooses any integer $ n_{2k + 2}$ such that \[ \frac {n_{2k +
1}}{n_{2k + 2}} \] is a prime raised to a positive integer power.

Player $ {\mathcal A}$ wins the game by choosing the number 1990; player $
{\mathcal B}$ wins by choosing the number 1. For which $ n_0$ does :

a.) $ {\mathcal A}$ have a winning strategy?
b.) $ {\mathcal B}$ have a winning strategy?
c.) Neither player have a winning strategy?

Solution:
a) $n_0 \geq 8$
b) $n_0<6$
c) $n_0=6,7$
-/
theorem imo_1990_p5.parts.b (n₀ : ℕ) (h₀ : n₀ > 1)
    -- A and B take the previous number and return the next number.  This makes
    -- the problem a bit easier to solve since A and B strategies become
    -- deterministic.  However, since the game's rules are memoryless, games with
    -- random strategies are equivalent to shorter games with deterministic
    -- strategies, and the problem is not too easy compared to prose.
    (valid_A valid_B : (ℕ → ℕ) → Prop)
    -- A → B → winner.
    (A_win B_win : (ℕ → ℕ) → (ℕ → ℕ) → Prop)
    (h₁ : valid_A = fun A => ∀ k, k ≤ A k ∧ A k ≤ k ^ 2)
    (h₂ : valid_B = fun B => ∀ (k) (h : ∃ Bk, Bk ∣ k ∧ IsPrimePow (k / Bk)), B k = h.choose)
    (h₃ :
      A_win = fun A B =>
        ∃ n : ℕ → ℕ,
          n 0 = n₀ ∧
          (∀ k, n (2 * k + 1) = A (n (2 * k))) ∧
          (∀ k, n (2 * k + 2) = B (n (2 * k + 1))) ∧
          (∃ k, n (2 * k + 1) = 1990 ∧ ∀ i ≤ k, n (2 * i) ≠ 1))
    (h₄ :
      B_win = fun A B =>
        ∃ n : ℕ → ℕ,
          n 0 = n₀ ∧
          (∀ k, n (2 * k + 1) = A (n (2 * k))) ∧
          (∀ k, n (2 * k + 2) = B (n (2 * k + 1))) ∧
          (∃ k, n (2 * k) = 1 ∧ ∀ i < k, n (2 * i + 1) ≠ 1990)) :
    -- ∃ valid B such that ∀ valid A, B wins.
    (∃ B, valid_B B ∧ ∀ A, valid_A A → B_win A B) ↔ n₀ < 6 := by
  sorry

/-- Given an initial integer $ n_0 > 1$, two players, $ {\mathcal A}$ and $
{\mathcal B}$, choose integers $ n_1$, $ n_2$, $ n_3$, $ \ldots$ alternately
according to the following rules :

I.) Knowing $ n_{2k}$, $ {\mathcal A}$ chooses any integer $ n_{2k + 1}$ such
that \[ n_{2k} \leq n_{2k + 1} \leq n_{2k}^2. \] II.) Knowing $ n_{2k + 1}$, $
{\mathcal B}$ chooses any integer $ n_{2k + 2}$ such that \[ \frac {n_{2k +
1}}{n_{2k + 2}} \] is a prime raised to a positive integer power.

Player $ {\mathcal A}$ wins the game by choosing the number 1990; player $
{\mathcal B}$ wins by choosing the number 1. For which $ n_0$ does :

a.) $ {\mathcal A}$ have a winning strategy?
b.) $ {\mathcal B}$ have a winning strategy?
c.) Neither player have a winning strategy?

Solution:
a) $n_0 \geq 8$
b) $n_0<6$
c) $n_0=6,7$
-/
theorem imo_1990_p5.parts.c (n₀ : ℕ) (h₀ : n₀ > 1)
    -- A and B take the previous number and return the next number.  This makes
    -- the problem a bit easier to solve since A and B strategies become
    -- deterministic.  However, since the game's rules are memoryless, games with
    -- random strategies are equivalent to shorter games with deterministic
    -- strategies, and the problem is not too easy compared to prose.
    (valid_A valid_B : (ℕ → ℕ) → Prop)
    -- A → B → winner.
    (A_win B_win : (ℕ → ℕ) → (ℕ → ℕ) → Prop)
    (h₁ : valid_A = fun A => ∀ k, k ≤ A k ∧ A k ≤ k ^ 2)
    (h₂ : valid_B = fun B => ∀ (k) (h : ∃ Bk, Bk ∣ k ∧ IsPrimePow (k / Bk)), B k = h.choose)
    (h₃ :
      A_win = fun A B =>
        ∃ n : ℕ → ℕ,
          n 0 = n₀ ∧
          (∀ k, n (2 * k + 1) = A (n (2 * k))) ∧
          (∀ k, n (2 * k + 2) = B (n (2 * k + 1))) ∧
          (∃ k, n (2 * k + 1) = 1990 ∧ ∀ i ≤ k, n (2 * i) ≠ 1))
    (h₄ :
      B_win = fun A B =>
        ∃ n : ℕ → ℕ,
          n 0 = n₀ ∧
          (∀ k, n (2 * k + 1) = A (n (2 * k))) ∧
          (∀ k, n (2 * k + 2) = B (n (2 * k + 1))) ∧
          (∃ k, n (2 * k) = 1 ∧ ∀ i < k, n (2 * i + 1) ≠ 1990)) :
    -- ∃ valid A such that ∀ valid B, B can't win
    -- ∃ valid B such that ∀ valid A, A can't win
    ((∃ A, valid_A A ∧ ∀ B, valid_B B → ¬B_win A B) ∧
      ∃ B, valid_B B ∧ ∀ A, valid_A A → ¬A_win A B) ↔
        n₀ = 6 ∨ n₀ = 7 := by
  sorry
