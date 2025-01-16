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
Let $ a_1, a_2, \ldots , a_n$ be distinct positive integers and let $ M$ be a set of $ n - 1$ positive integers not containing $ s = a_1 + a_2 + \ldots + a_n.$ A grasshopper is to jump along the real axis, starting at the point $ 0$ and making $ n$ jumps to the right with lengths $ a_1, a_2, \ldots , a_n$ in some order. Prove that the order can be chosen in such a way that the grasshopper never lands on any point in $ M.$

[i]Proposed by Dmitry Khramtsov, Russia[/i]
-/
@[imo_problem_subject combinatorics]
theorem imo_2009_p6 (n : ℕ) (a : ℕ → ℕ) (M : Finset ℕ) (h₀ : 0 < n)
    (h₁ : ∀ i ∈ Set.Icc 1 n, 0 < a i) (h₂ : Set.InjOn a (Set.Icc 1 n)) (h₃ : M.card = (n - 1 : ℕ))
    (h₄ : ∀ i ∈ M, 0 < i) (h₅ : (Finset.Icc 1 n).sum a ∉ M) :
    ∃ ord : ℕ → ℕ,
      Set.BijOn ord (Set.Icc 1 n) (Set.Icc 1 n) ∧
        ∀ t ∈ Set.Icc 1 n, ∑ i ∈ Finset.Icc 1 t, a (ord i) ∉ M := by
  sorry
