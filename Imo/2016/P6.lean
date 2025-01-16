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
There are $n\ge 2$ line segments in the plane such that every two segments cross and no three segments meet at a point. Geoff has to choose an endpoint of each segment and place a frog on it facing the other endpoint. Then he will clap his hands $n-1$ times. Every time he claps,each frog will immediately jump forward to the next intersection point on its segment. Frogs never change the direction of their jumps. Geoff wishes to place the frogs in such a way that no two of them will ever occupy the same intersection point at the same time.

(a) Prove that Geoff can always fulfill his wish if $n$ is odd.

(b) Prove that Geoff can never fulfill his wish if $n$ is even.
-/
@[imo_problem_subject combinatorics]
theorem imo_2016_p6 : (sorry : Prop) := by
  sorry
