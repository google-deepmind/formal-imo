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
The Bank of Bath issues coins with an $H$ on one side and a $T$ on the other. Harry has $n$ of these coins arranged in a line from left to right. He repeatedly performs the following operation: if there are exactly $k>0$ coins showing $H$, then he turns over the $k$th coin from the left; otherwise, all coins show $T$ and he stops. For example, if $n=3$ the process starting with the configuration $THT$ would be $THT \to HHT  \to HTT \to TTT$, which stops after three operations.

(a) Show that, for each initial configuration, Harry stops after a finite number of operations.

(b) For each initial configuration $C$, let $L(C)$ be the number of operations before Harry stops. For example, $L(THT) = 3$ and $L(TTT) = 0$. Determine the average value of $L(C)$ over all $2^n$ possible initial configurations $C$.

[i]Proposed by David Altizio, USA[/i]
-/
@[imo_problem_subject combinatorics]
theorem imo_2019_p5 (n : ℕ) (h : 0 < n)
    -- `action old_coins` is either `some new_coins` or `none` if the game is over
    (action : (Fin n → Bool) → Option (Fin n → Bool))
    (action_def :
      ∀ coins,
        action coins =
          -- the number of heads
          let k := (Finset.univ.filter fun i => coins i = true).card
          -- if there are any
          if hk : 0 < k then
            -- subtract one and cast to `fin n`
            let k' : Fin n := ⟨k - 1, (Nat.pred_lt hk.ne').trans_le <|
              (Finset.card_filter_le _ _).trans_eq <| Finset.card_fin _⟩
            -- flip that coin
            some (Function.update coins k' (not <| coins k'))
          else
            -- otherwise end the game
            none) :
    -- part a)
    ∃ hterminates :
      ∀ coins : Fin n → Bool,
        -- there exists a t such that iterating `action` in a monadic sense gives `none`
        ∃ t, ((fun o => Option.bind o action)^[t]) (some coins) = none,
      -- part b) the average of the least such `t` is...
      -- We use (t - 1) since our process definition does one more iteration after
      -- everything is tails.
      (∑ c : Fin n → Bool, (Nat.find (hterminates c) - 1) / 2 ^ n : ℚ) =
        answer(1 / 4 * n * (n + 1)) := by
  sorry
