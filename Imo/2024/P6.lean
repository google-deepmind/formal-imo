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
Let $\mathbb{Q}$ be the set of rational numbers. A function $f : \mathbb{Q} \to \mathbb{Q}$ is called \emph{aquaesulian} if
the following property holds: for every $x, y \in \mathbb{Q}$,
$$
f(x + f(y)) = f(x) + y \qquad\text{or}\qquad f(f(x) + y) = x + f(y).
$$
Show that there exists an integer $c$ such that for any aquaesulian function $f$ there are at most
$c$ different rational numbers of the form $f(r) + f(-r)$ for some rational number $r$
-/
theorem imo_2024_p6.parts.i
    (IsAquaesulian : (ℚ → ℚ) → Prop)
    (IsAquaesulian_def : ∀ f, IsAquaesulian f ↔
      ∀ x y, f (x + f y) = f x + y ∨ f (f x + y) = x + f y) :
    ∃ (c : ℤ), ∀ f, IsAquaesulian f → {(f r + f (-r)) | (r : ℚ)}.Finite ∧ {(f r + f (-r)) | (r : ℚ)}.ncard ≤ c := by
  sorry

/--
Let $\mathbb{Q}$ be the set of rational numbers. A function $f : \mathbb{Q} \to \mathbb{Q}$ is called \emph{aquaesulian} if
the following property holds: for every $x, y \in \mathbb{Q}$,
$$
f(x + f(y)) = f(x) + y \qquad\text{or}\qquad f(f(x) + y) = x + f(y).
$$
We are given that there exists at least one integer $c$ such that for any aquaesulian function $f$ there are at most $c$ different rational numbers of the form $f(r) + f(-r)$ for some rational number $r$. Find the smallest possible value of $c$.

Solution: c=2
-/
theorem imo_2024_p6.parts.ii
    (IsAquaesulian : (ℚ → ℚ) → Prop)
    (IsAquaesulian_def : ∀ f, IsAquaesulian f ↔
      ∀ x y, f (x + f y) = f x + y ∨ f (f x + y) = x + f y) :
    IsLeast {(c : ℤ) | ∀ f, IsAquaesulian f → {(f r + f (-r)) | (r : ℚ)}.Finite ∧
      {(f r + f (-r)) | (r : ℚ)}.ncard ≤ c}
    answer(2) := by
  sorry

/--
Let $\mathbb{Q}$ be the set of rational numbers. A function $f : \mathbb{Q} \to \mathbb{Q}$ is called \emph{aquaesulian} if
the following property holds: for every $x, y \in \mathbb{Q}$,
$$
f(x + f(y)) = f(x) + y \qquad\text{or}\qquad f(f(x) + y) = x + f(y).
$$
Show that there exists an integer $c$ such that for any aquaesulian function $f$ there are at most
$c$ different rational numbers of the form $f(r) + f(-r)$ for some rational number $r$, and find the
smallest possible value of $c$.

Solution: c=2
-/
@[imo_problem_subject algebra]
theorem imo_2024_p6
    (IsAquaesulian : (ℚ → ℚ) → Prop)
    (IsAquaesulian_def : ∀ f, IsAquaesulian f ↔
      ∀ x y, f (x + f y) = f x + y ∨ f (f x + y) = x + f y) :
    (∃ (c : ℤ), ∀ f, IsAquaesulian f → {(f r + f (-r)) | (r : ℚ)}.Finite ∧
      {(f r + f (-r)) | (r : ℚ)}.ncard ≤ c) ∧
    IsLeast {(c : ℤ) | ∀ f, IsAquaesulian f →
      {(f r + f (-r)) | (r : ℚ)}.Finite ∧ {(f r + f (-r)) | (r : ℚ)}.ncard ≤ c}
    answer(2) :=
  ⟨⟨_, (imo_2024_p6.parts.ii IsAquaesulian IsAquaesulian_def).1⟩,
    imo_2024_p6.parts.ii IsAquaesulian IsAquaesulian_def⟩
