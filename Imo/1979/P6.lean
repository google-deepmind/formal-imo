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
Let $A$ and $E$ be opposite vertices of an octagon. A frog starts at vertex $A$. From any vertex except $E$ it jumps to one of the two adjacent vertices. When it reaches $E$ it stops. Let $a_n$ be the number of distinct paths of exactly $n$ jumps ending at $E$. Prove that: $a_{2n-1}=0,a_{2n}={(2+\sqrt2)^{n-1}\over\sqrt2}-{(2-\sqrt2)^{n-1}\over\sqrt2}$. -/
@[imo_problem_subject combinatorics]
theorem imo_1979_p6 : (sorry : Prop) := by
  sorry
