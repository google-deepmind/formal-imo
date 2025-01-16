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

-- Solution from
-- https://artofproblemsolving.com/community/c6h488500p2737364
/--
Find all functions $f:\mathbb Z\rightarrow \mathbb Z$ such that, for all integers $a,b,c$ that satisfy $a+b+c=0$, the following equality holds:
\[f(a)^2+f(b)^2+f(c)^2=2f(a)f(b)+2f(b)f(c)+2f(c)f(a).\]
(Here $\mathbb{Z}$ denotes the set of integers.)

[i]Proposed by Liam Baker, South Africa[/i]

Solution: (i) $f(x) = kx^2$, (ii) $f(x) = 0$ for even $x$, and $f(x) = k$ for odd $x$, (iii) $f(x) = 0$ for $x \equiv 0 \pmod{4}$, $f(x) = k$ for odd $x$, and $f(x) = 4k$ for $x \equiv 2 \pmod{4}$
-/
@[imo_problem_subject algebra]
theorem imo_2012_p4 :
    { f : ℤ → ℤ | ∀ a b c, a + b + c = 0 →
      f a ^ 2 + f b ^ 2 + f c ^ 2 = 2 * f a * f b + 2 * f b * f c + 2 * f c * f a
    } = answer(
      { fun x ↦ k * x ^ 2 | (k : ℤ) } ∪
      { fun x ↦ if Even x then 0 else k | (k : ℤ) } ∪
      { fun x ↦ if 4 ∣ x then 0 else if Odd x then k else 4 * k | (k : ℤ) }
    ) := by
  sorry
