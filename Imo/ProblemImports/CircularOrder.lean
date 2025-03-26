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

import Mathlib.Algebra.Group.Int.Defs
import Mathlib.Algebra.Order.Group.Unbundled.Abs
import Mathlib.Logic.Pairwise
import Mathlib.Order.Circular
import Mathlib.Order.Fin.Basic

-- Upstreamed in https://github.com/leanprover-community/mathlib4/pull/25369

instance (n : ℕ) : CircularOrder (Fin n) := LinearOrder.toCircularOrder _

lemma sbtw_iff {n : ℕ} (i j k : Fin n) :
    sbtw i j k ↔ (i < j ∧ j < k) ∨ (j < k ∧ k < i) ∨ (k < i ∧ i < j) :=
  Iff.rfl

lemma btw_iff {n : ℕ} (i j k : Fin n) :
    btw i j k ↔ (i ≤ j ∧ j ≤ k) ∨ (j ≤ k ∧ k ≤ i) ∨ (k ≤ i ∧ i ≤ j) :=
  Iff.rfl
