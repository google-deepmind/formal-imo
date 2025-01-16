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
Let $n \ge 3$ be an integer, and consider a circle with $n + 1$ equally spaced points marked on it. Consider all labellings of these points with the numbers $0, 1, ... , n$ such that each label is used exactly once; two such labellings are considered to be the same if one can be obtained from the other by a rotation of the circle. A labelling is called [i]beautiful[/i] if, for any four labels $a < b < c < d$ with $a + d = b + c$, the chord joining the points labelled $a$ and $d$ does not intersect the chord joining the points labelled $b$ and $c$.

Let $M$ be the number of beautiful labelings, and let N be the number of ordered pairs $(x, y)$ of positive integers such that $x + y \le n$ and $\gcd(x, y) = 1$. Prove that $$M = N + 1.$$
-/
@[imo_problem_subject combinatorics]
theorem imo_2013_p6 (n M N : ℕ) (hn : 3 ≤ n)
    /- The predicate that the chord `[a, b]` intersects the chord `[c, d]` -/
    (IsIntersectingChords : Fin (n + 1) → Fin (n + 1) → Fin (n + 1) → Fin (n + 1) → Prop)
    (IsIntersectingChords_def : ∀ a b c d : Fin (n + 1),
      IsIntersectingChords a b c d ↔ (sbtw c b d ∧ sbtw d a c) ∨ (sbtw c a d ∧ sbtw d b c))
    /- An equivalence `e` represents a labelling by mapping a label to a point. -/
    (IsBeautiful : (Fin (n + 1) ≃ Fin (n + 1)) → Prop)
    (IsBeautiful_def : ∀ e, IsBeautiful e ↔
      ∀ a b c d : Fin (n + 1), a < b → b < c → c < d → (a : ℕ) + d = b + c →
        ¬ IsIntersectingChords (e a) (e d) (e b) (e c))
    (hM : M = {e | e 0 = 0 ∧ IsBeautiful e}.ncard)
    (hN : N = {(x, y) : ℕ × ℕ | 0 < x ∧ 0 < y ∧ x + y ≤ n ∧ x.Coprime y}.ncard) :
    M = N + 1 := by
  sorry
