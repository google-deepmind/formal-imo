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
To each vertex of a regular pentagon an integer is assigned, so that the sum of all five numbers is positive. If three consecutive vertices are assigned the numbers $x,y,z$ respectively, and $y< 0$, then the following operation is allowed: $x,y,z$ are replaced by $x+y,-y,z+y$ respectively. Such an operation is performed repeatedly as long as at least one of the five numbers is negative. Determine whether this procedure necessarily comes to an end after a finite number of steps.
Solution: The procedure always stops.
-/
@[imo_problem_subject combinatorics]
theorem imo_1986_p3
  --`move` takes a numbering of the polygon and a vertex of the polygon as inputs and outputs the updated numbering as in the problem statement
  {move : (Fin 5 → ℤ) → Fin 5 → Fin 5 → ℤ}
  {move_def : ∀ (i : Fin 5) (n : Fin 5 → ℤ),
    move n i = fun j =>
      if j = i-1 then n (i-1) + n i else
      if j = i then - n i else
      if j = i+1 then n (i+1) + n i else
      n j} :
    --Determine whether this procedure necessarily comes to an end after a finite number of steps.
    (--`n` is a numbering such that the sum of all five numbers is positive
    ∀ (n : Fin 5 → ℤ), 0 < ∑ i, n i →
      /- A move is legal if the vertex defining it has a negative number. Saying that the procedure stops
      after a finite number of moves is the same as saying that there is no infinite sequence of valid moves-/
      ∀ (m : ℕ → Fin 5), (∀ i, ((List.range i).map m).foldl move n (m i) < 0) → False) ↔
    answer(True) := by
  sorry
