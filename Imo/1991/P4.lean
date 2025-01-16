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
Suppose $G$ is a connected graph with $k$ edges. Prove that it is possible to label the edges $1,2,\ldots ,k$ in such a way that at each vertex which belongs to two or more edges, the greatest common divisor of the integers labeling those edges is $1$. -/
@[imo_problem_subject combinatorics]
theorem imo_1991_p4 (n k : ℕ)
    -- n+1 vertices → nonempty graph
    (G : SimpleGraph (Fin (n + 1)))
    [DecidableRel G.Adj]
    (h₀ : G.Connected)
    (h₃ : G.edgeFinset.card = k) :
    ∃ (labels : _ → ℕ) (h₄ : Set.BijOn labels (SimpleGraph.edgeSetEmbedding _ G) (Set.Icc 1 k)),
      ∀ v, (G.incidenceFinset v).card ≥ 2 → (G.incidenceFinset v).gcd labels = 1 := by
  sorry
