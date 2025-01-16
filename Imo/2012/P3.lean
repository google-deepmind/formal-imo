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
The [i]liar's guessing game[/i] is a game played between two players $A$ and $B$. The rules of the game depend on two positive integers $k$ and $n$ which are known to both players.

At the start of the game $A$ chooses integers $x$ and $N$ with $1 \le x \le N.$ Player $A$ keeps $x$ secret, and truthfully tells $N$ to player $B$. Player $B$ now tries to obtain information about $x$ by asking player $A$ questions as follows: each question consists of $B$ specifying an arbitrary set $S$ of positive integers (possibly one specified in some previous question), and asking $A$ whether $x$ belongs to $S$. Player $B$ may ask as many questions as he wishes. After each question, player $A$ must immediately answer it with [i]yes[/i] or [i]no[/i], but is allowed to lie as many times as she wants; the only restriction is that, among any $k+1$ consecutive answers, at least one answer must be truthful.

After $B$ has asked as many questions as he wants, he must specify a set $X$ of at most $n$ positive integers. If $x$ belongs to $X$, then $B$ wins; otherwise, he loses. Prove that:

1. If $n \ge 2^k,$ then $B$ can guarantee a win.
2. For all sufficiently large $k$, there exists an integer $n \ge (1.99)^k$ such that $B$ cannot guarantee a win.

[i]Proposed by David Arthur, Canada[/i]
-/
@[imo_problem_subject combinatorics]
theorem imo_2012_p3 : (sorry : Prop) := by
  sorry
