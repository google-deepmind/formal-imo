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
open scoped Classical
open scoped Fin.CommRing

/--
Let $ n$ and $ k$ be positive integers with $ k \geq n$ and $ k - n$ an even number. Let $ 2n$ lamps labelled $ 1$, $ 2$, ..., $ 2n$ be given, each of which can be either [i]on[/i] or [i]off[/i]. Initially all the lamps are off. We consider sequences of steps: at each step one of the lamps is switched (from on to off or from off to on).

Let $ N$ be the number of such sequences consisting of $ k$ steps and resulting in the state where lamps $ 1$ through $ n$ are all on, and lamps $ n + 1$ through $ 2n$ are all off.

Let $ M$ be number of such sequences consisting of $ k$ steps, resulting in the state where lamps $ 1$ through $ n$ are all on, and lamps $ n + 1$ through $ 2n$ are all off, but where none of the lamps $ n + 1$ through $ 2n$ is ever switched on.

Determine $ \frac {N}{M}$.


[i]Author: Bruno Le Floch and Ilia Smilga, France[/i]

Solution: $2^{k-n}$
-/
@[imo_problem_subject combinatorics]
theorem imo_2008_p5 (n k N M : ℕ) (h : 0 < n ∧ 0 < k ∧ k ≥ n) [NeZero n] (heven : Even (k - n))
    -- whether the mapping of type (t → (lamp_id → on/off)) is a correct switching
    -- sequence.
    (switch_seq : (Fin (k + 1) → Fin (2 * n) → Bool) → Prop)
    (SN SM : Finset (Fin (k + 1) → Fin (2 * n) → Bool))
    (h₀ : ∀ s, switch_seq s ↔
      s 0 = Function.const _ false ∧
      ∀ t : Fin k, ∃ i, s t.succ = Function.update (s t.castSucc) i (!s t.castSucc i))
    (h₁ : ∀ s, s ∈ SN ↔
      switch_seq s ∧
      ∀ i ∈ Finset.Ico 0 n,
      s (Fin.last _) ↑i = true ∧ ∀ i ∈ Finset.Ico n (2 * n), s (Fin.last _) ↑i = false)
    (h₂ : ∀ s, s ∈ SM ↔
      switch_seq s ∧
      ∀ i ∈ Finset.Ico 0 n,
      s (Fin.last _) ↑i = true ∧ ∀ i ∈ Finset.Ico n (2 * n), ∀ t, s t ↑i = false)
    (h₃ : N = SN.card ∧ M = SM.card) :
    (N / M : ℚ) = answer(2 ^ (k - n)) := by
  sorry
