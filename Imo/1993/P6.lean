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
open scoped Fin.CommRing

/--
There are $n>1$ lamps $L_0,L_1,\ldots ,L_{n-1}$ in a circle. We use $L_{n+k}$ to mean $L_k$. A lamp is at all times either on or off. Initially they are all on. Perform steps $s_0,s_1,\ldots$ as follows: at step $s_i$, if $L_{i-1}$ is lit, then switch $L_i$ from on to off or vice versa, otherwise do nothing. Show that:

(a) There is a positive integer $M(n)$ such that after $M(n)$ steps all the lamps are on again;

(b) If $n=2^k$, then we can take $M(n)=n^2-1$;

(c) If $n=2^k+1$, then we can take $M(n)=n^2-n+1$.
-/
@[imo_problem_subject combinatorics]
theorem imo_1993_p6 (n : ℕ) (h₀ : n > 1) [NeZero n]
    -- t → (lamp_id → on/off)
    (lamps : ℕ → Fin n → Bool)
    (h₁ : lamps 0 = ⊤)
    (h₂ :
      ∀ t > 0,
        lamps t =
          ite (lamps (t - 1) (t - 1 : ℕ) = true)
            (Function.update (lamps (t - 1)) t (!lamps (t - 1) t))
            (lamps (t - 1))) :
    (∃ M : ℕ, 0 < M ∧ lamps M = ⊤) ∧
      ((∃ k : ℕ, n = 2 ^ k) → lamps (n ^ 2 - 1) = ⊤) ∧
        ((∃ k : ℕ, n = 2 ^ k + 1) → lamps (n ^ 2 - n + 1) = ⊤) := by
  sorry

/-- There are $n$ lamps $L_0,\ldots,L_{n-1}$ in a circle $(n > 1)$, where we denote
$L_{n+k}=L_k$. (A lamp at all times is either on or off.)  Perform steps
$s_0,s_1,\ldots$ as follows: at step $s_i$, if $L_{i−1}$ is lit, switch $L_i$
from on to off or vice versa, otherwise do nothing. Initially all lamps are on.
Show that:

(a) There is a positive integer $M(n)$ such that after $M(n)$ steps all lamps
are ON again,

(b) If $n = 2^k$, we can take $M(n) = n^2 − 1$;

(c) If $n = 2^k + 1$, we can take $M(n) = n^2 − n + 1$.
-/
theorem imo_1993_p6.parts.a (n : ℕ) (h₀ : n > 1) [NeZero n]
    -- t → (lamp_id → on/off)
    (lamps : ℕ → Fin n → Bool)
    (h₁ : lamps 0 = ⊤)
    (h₂ :
      ∀ t > 0,
        lamps t =
          if lamps (t - 1) (t - 1 : ℕ) = true then
            Function.update (lamps (t - 1)) t (!lamps (t - 1) t)
          else lamps (t - 1)) :
    ∃ M : ℕ, 0 < M ∧ lamps M = ⊤ := by
  sorry

/-- There are $n$ lamps $L_0,\ldots,L_{n-1}$ in a circle $(n > 1)$, where we denote
$L_{n+k}=L_k$. (A lamp at all times is either on or off.)  Perform steps
$s_0,s_1,\ldots$ as follows: at step $s_i$, if $L_{i−1}$ is lit, switch $L_i$
from on to off or vice versa, otherwise do nothing. Initially all lamps are on.
Show that:

(a) There is a positive integer $M(n)$ such that after $M(n)$ steps all lamps
are ON again,

(b) If $n = 2^k$, we can take $M(n) = n^2 − 1$;

(c) If $n = 2^k + 1$, we can take $M(n) = n^2 − n + 1$.
-/
theorem imo_1993_p6.parts.b (n : ℕ) (h₀ : n > 1) [NeZero n]
    -- t → (lamp_id → on/off)
    (lamps : ℕ → Fin n → Bool)
    (h₁ : lamps 0 = ⊤)
    (h₂ :
      ∀ t > 0,
        lamps t =
          if lamps (t - 1) (t - 1 : ℕ) = true then
            Function.update (lamps (t - 1)) t (!lamps (t - 1) t)
          else lamps (t - 1)) :
    (∃ k : ℕ, n = 2 ^ k) → lamps (n ^ 2 - 1) = ⊤ := by
  sorry

/-- There are $n$ lamps $L_0,\ldots,L_{n-1}$ in a circle $(n > 1)$, where we denote
$L_{n+k}=L_k$. (A lamp at all times is either on or off.)  Perform steps
$s_0,s_1,\ldots$ as follows: at step $s_i$, if $L_{i−1}$ is lit, switch $L_i$
from on to off or vice versa, otherwise do nothing. Initially all lamps are on.
Show that:

(a) There is a positive integer $M(n)$ such that after $M(n)$ steps all lamps
are ON again,

(b) If $n = 2^k$, we can take $M(n) = n^2 − 1$;

(c) If $n = 2^k + 1$, we can take $M(n) = n^2 − n + 1$.
-/
theorem imo_1993_p6.parts.c (n : ℕ) (h₀ : n > 1) [NeZero n]
    -- t → (lamp_id → on/off)
    (lamps : ℕ → Fin n → Bool)
    (h₁ : lamps 0 = ⊤)
    (h₂ :
      ∀ t > 0,
        lamps t =
          if lamps (t - 1) (t - 1 : ℕ) = true then
            Function.update (lamps (t - 1)) t (!lamps (t - 1) t)
          else lamps (t - 1)) :
    (∃ k : ℕ, n = 2 ^ k + 1) → lamps (n ^ 2 - n + 1) = ⊤ := by
  sorry
