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
We say that a finite set $\mathcal{S}$ of points in the plane is [i]balanced[/i] if, for any two different points $A$ and $B$ in $\mathcal{S}$, there is a point $C$ in $\mathcal{S}$ such that $AC=BC$. We say that $\mathcal{S}$ is [i]centre-free[/i] if for any three different points $A$, $B$ and $C$ in $\mathcal{S}$, there is no points $P$ in $\mathcal{S}$ such that $PA=PB=PC$.

(a) Show that for all integers $n\ge 3$, there exists a balanced set consisting of $n$ points.

(b) Determine all integers $n\ge 3$ for which there exists a balanced centre-free set consisting of $n$ points.

Proposed by Netherlands
-/
@[imo_problem_subject combinatorics]
theorem imo_2015_p1 (Balanced : Finset (EuclideanSpace ℝ (Fin 2)) → Prop)
    (hb₀ : ∀ s, Balanced s ↔ ∀ A ∈ s, ∀ B ∈ s, A ≠ B → ∃ C ∈ s, dist A C = dist B C)
    (center_free : Finset (EuclideanSpace ℝ (Fin 2)) → Prop)
    (hb₁ : ∀ s, center_free s ↔ ∀ A ∈ s, ∀ B ∈ s, ∀ C ∈ s, A ≠ B ∧ B ≠ C ∧ A ≠ C → ¬∃ P ∈ s,
        dist P A = dist P B ∧
        dist P B = dist P C) :
    (∀ n ≥ 3, ∃ s, Balanced s ∧ s.card = n) ∧
    {n : ℕ | 3 ≤ n ∧ ∃ s, Balanced s ∧ center_free s ∧ s.card = n} = answer({n | 3 ≤ n ∧ Odd n}) := by
  sorry
