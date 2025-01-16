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
open scoped List

/--
The Bank of Oslo issues two types of coin: aluminum (denoted A) and bronze (denoted B). Marianne has $n$ aluminum coins and $n$ bronze coins arranged in a row in some arbitrary initial order. A chain is any subsequence of consecutive coins of the same type. Given a fixed positive integer $k \leq 2n$, Gilberty repeatedly performs the following operation: he identifies the longest chain containing  the $k^{th}$ coin from the left and moves all coins in that chain to the left end of the row. For example, if $n=4$ and $k=4$, the process starting from the ordering $AABBBABA$ would be $AABBBABA \to BBBAAABA \to AAABBBBA \to BBBBAAAA \to ...$

Find all pairs $(n,k)$ with $1 \leq k \leq 2n$ such that for every initial ordering, at some moment during the process, the leftmost $n$ coins will all be of the same type.
-/
@[imo_problem_subject combinatorics]
theorem imo_2022_p1
    -- the invariant of having "$n$ aluminum coins and $n$ bronze coins"
    (IsValid : ∀ (n) (coins : List Bool), Prop)
    (isValid_iff : ∀ n coins, IsValid n coins ↔ ∀ b, coins.count b = n)
    -- the operation, sending one valid sequence of coins to another
    (operation :
      ∀ {n k} (hk : 1 ≤ k) (hn : k ≤ 2 * n) (coins : Subtype (IsValid n)), Subtype (IsValid n))
    (operation_def :
      ∀ (n k) (hk : 1 ≤ k) (hn : k ≤ 2 * n) (coins : Subtype (IsValid n)),
        operation hk hn coins =
          -- taking the `k`th coin (the one in position `k-1`) is legal
          have hc : (coins : List Bool).length = 2 * n := by
            rw [← List.count_true_add_count_false coins, (isValid_iff _ _).mp coins.prop,
              (isValid_iff _ _).mp coins.prop, ← two_mul]
          have hk' : k - 1 < 2 * n := (Nat.pred_lt (zero_lt_one.trans_le hk).ne').trans_le hn
          -- the kth coin, the coints before it, and the coins after it
          let c := (coins : List Bool).get ⟨k - 1, hk'.trans_eq hc.symm⟩
          let c_prefix := (coins : List Bool).take (k - 1)
          let c_suffix := (coins : List Bool).drop k
          let c_moved :=
            -- walk backwards/forwards from where we split the list
            (c_prefix.reverse.takeWhile fun c' => c' = c).reverse ++ [c] ++
              c_suffix.takeWhile fun c' => c' = c
          let c_rest :=
            (c_prefix.reverse.dropWhile fun c' => c' = c).reverse ++
              c_suffix.dropWhile fun c' => c' = c
          ⟨c_moved ++ c_rest, by -- the operation didn't change the total number of each coin
            have hcoins := coins.prop
            rw [isValid_iff] at hcoins ⊢
            intro b
            dsimp [c_rest, c_moved]
            simp only [List.count_append]
            rw [add_add_add_comm, add_right_comm _ ([c].count b),
              add_comm ((List.reverse _).count b)]
            simp only [← List.count_append, ← List.reverse_append, List.takeWhile_append_dropWhile,
              List.reverse_reverse]
            convert hcoins b
            rw [List.append_assoc]
            dsimp [c_prefix, c_suffix, c]
            convert List.take_append_drop _ _ using 2
            convert List.cons_get_drop_succ
            exact (tsub_add_cancel_of_le hk).symm⟩) :
    {(n, k) |
      -- valid pairs
      (n : ℕ) (k : ℕ) (hk : 1 ≤ k) (hn : k ≤ 2*n)
      (h : ∀ coins : Subtype (IsValid n),
        -- there is a number of steps `i` and a leftmost coin value
        ∃ (i : ℕ) (b : Bool),
          -- such that after `i`, the first n elements are all `b`
          (↑((operation hk hn)^[i] coins) : List Bool).take n = List.replicate n b)}
      =
    answer(
    {(n, k) |
      -- within the pairs that we are asked about
      (n : ℕ) (k : ℕ) (hk : 1 ≤ k) (hn : k ≤ 2*n)
      -- the ones we care about are
      (hk : n ≤ k) (hn : k ≤ 2*n - ⌊(n / 2 : ℚ)⌋₊)}) := by
  -- within the pairs that we are asked about
  -- the ones we care about are
  -- the four examples given by the question, which are valid
  let AABBBABA : Subtype (IsValid 4) :=
    ⟨[true, true, false, false, false, true, false, true], by rw [isValid_iff]; decide⟩
  let BBBAAABA : Subtype (IsValid 4) :=
    ⟨[false, false, false, true, true, true, false, true], by rw [isValid_iff]; decide⟩
  let AAABBBBA : Subtype (IsValid 4) :=
    ⟨[true, true, true, false, false, false, false, true], by rw [isValid_iff]; decide⟩
  let BBBBAAAA : Subtype (IsValid 4) :=
    ⟨[false, false, false, false, true, true, true, true], by rw [isValid_iff]; decide⟩
  -- the example n and k are valid
  have h4 : 1 ≤ 4 := by norm_num
  have h4' : 4 ≤ 2 * 4 := by norm_num
  -- The examples hold!
  have : operation h4 h4' AABBBABA = BBBAAABA := by rw [operation_def]; rfl
  have : operation h4 h4' BBBAAABA = AAABBBBA := by rw [operation_def]; rfl
  have : operation h4 h4' AAABBBBA = BBBBAAAA := by rw [operation_def]; rfl
  sorry
