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
Let $A$ and $E$ be opposite vertices of an octagon. A frog starts at vertex $A$. From any vertex except $E$ it jumps to one of the two adjacent vertices. When it reaches $E$ it stops. Let $a_n$ be the number of distinct paths of exactly $n$ jumps ending at $E$. Prove that: $a_{2n-1}=0,a_{2n}={(2+\sqrt2)^{n-1}\over\sqrt2}-{(2-\sqrt2)^{n-1}\over\sqrt2}$. -/
theorem imo_1979_p6.parts.odd
    -- We label the vertices of an octagon by `Fin 8`.
    -- (Let's also say for later that jumping 0 -> 1 -> 2 -> .. is in the clockwise direction)
    (A E : Fin 8)
    -- `E` is the opposite of `A`
    (hE : E = A + 4)
    -- Let `a` be the function such that `a n` is the number of distinct sequences of `n` jumps
    -- ending exactly at `E`.
    (a : ℕ → ℕ)
    -- We formulate a path as a function `Fin n → Fin 2`, where `p i = 0` means that the `i+1`th
    -- jump is clockwise.
    (ha_def : ∀ n, a n =
      Fintype.card {p : Fin n → ℤˣ // A + ∑ i, (p i : Fin 8) = E})
    (n : ℕ) (hn : 0 < n) :
    a (2*n - 1 : ℕ) = 0 := by
  sorry

/--
Let $A$ and $E$ be opposite vertices of an octagon. A frog starts at vertex $A$. From any vertex except $E$ it jumps to one of the two adjacent vertices. When it reaches $E$ it stops. Let $a_n$ be the number of distinct paths of exactly $n$ jumps ending at $E$. Prove that: $a_{2n-1}=0,a_{2n}={(2+\sqrt2)^{n-1}\over\sqrt2}-{(2-\sqrt2)^{n-1}\over\sqrt2}$. -/
theorem imo_1979_p6.parts.even
    (A E : Fin 8)
    (hE : E = A + 4)
    (a : ℕ → ℕ)
    (ha_def : ∀ n, a n =
      Fintype.card {p : Fin n → ℤˣ // A + ∑ i, (p i : Fin 8) = E})
    (n : ℕ) (hn : 0 < n) :
    a (2 * n) = (2 + √2)^(n - 1 : ℕ) / √2 - (2 - √2)^(n - 1 : ℕ) / √2 := by
  sorry

/--
Let $A$ and $E$ be opposite vertices of an octagon. A frog starts at vertex $A$. From any vertex except $E$ it jumps to one of the two adjacent vertices. When it reaches $E$ it stops. Let $a_n$ be the number of distinct paths of exactly $n$ jumps ending at $E$. Prove that: $a_{2n-1}=0,a_{2n}={(2+\sqrt2)^{n-1}\over\sqrt2}-{(2-\sqrt2)^{n-1}\over\sqrt2}$. -/
@[imo_problem_subject combinatorics]
theorem imo_1979_p6
    (A E : Fin 8)
    (hE : E = A + 4)
    (a : ℕ → ℕ)
    (ha_def : ∀ n, a n =
      Fintype.card {p : Fin n → ℤˣ // A + ∑ i, (p i : Fin 8) = E})
    (n : ℕ) (hn : 0 < n) :
    a (2*n - 1 : ℕ) = 0 ∧
    a (2 * n) = (2 + √2)^(n - 1 : ℕ) / √2 - (2 - √2)^(n - 1 : ℕ) / √2 := by
  exact ⟨imo_1979_p6.parts.odd A E hE a ha_def n hn, imo_1979_p6.parts.even A E hE a ha_def n hn⟩
