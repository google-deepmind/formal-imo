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
Real numbers $ a_{1}$, $ a_{2}$, $ \ldots$, $ a_{n}$ are given. For each $ i$, $ (1 \leq i \leq n )$, define
\[ d_{i} = \max \{ a_{j}\mid 1 \leq j \leq i \} - \min \{ a_{j}\mid i \leq j \leq n \}
\]
and let $ d = \max \{d_{i}\mid 1 \leq i \leq n \}$.

(a) Prove that, for any real numbers $ x_{1}\leq x_{2}\leq \cdots \leq x_{n}$,
\[ \max \{ |x_{i} - a_{i}| \mid 1 \leq i \leq n \}\geq \frac {d}{2}. \quad \quad (*)
\]
(b) Show that there are real numbers $ x_{1}\leq x_{2}\leq \cdots \leq x_{n}$ such that the equality holds in (*).

[i]Author: Michael Albert, New Zealand[/i]
-/
@[imo_problem_subject algebra]
theorem imo_2007_p1 (n : ℕ) (hn : 0 < n) (a d : ℕ → ℝ)
    (hd : ∀ i ∈ Finset.Icc 1 n, d i = (⨆ j : Finset.Icc 1 i, a j) - ⨅ j : Finset.Icc i n, a j)
    (dMAX) (hdMAX : dMAX = ⨆ i : Finset.Icc 1 n, d i) :
    (∀ (x : ℕ → ℝ) (hx : Monotone x), (⨆ i : Finset.Icc 1 n, |x i - a i|) ≥ dMAX / 2) ∧
      ∃ (x : ℕ → ℝ) (hx : Monotone x), (⨆ i : Finset.Icc 1 n, |x i - a i|) = dMAX / 2 := by
  sorry

/-- Real numbers $ a_{1}$, $ a_{2}$, $ \ldots$, $ a_{n}$ are given. For each $ i$, $
(1 \leq i \leq n )$, define \[ d_{i} = \max \{ a_{j}\mid 1 \leq j \leq i \} -
\min \{ a_{j}\mid i \leq j \leq n \} \] and let $ d = \max \{d_{i}\mid 1 \leq i
\leq n \}$.

(a) Prove that, for any real numbers $ x_{1}\leq x_{2}\leq \cdots \leq x_{n}$,
\[ \max \{ |x_{i} - a_{i}| \mid 1 \leq i \leq n \}\geq \frac {d}{2}. \quad \quad
(*) \] (b) Show that there are real numbers $ x_{1}\leq x_{2}\leq \cdots \leq
x_{n}$ such that the equality holds in (*).
-/
theorem imo_2007_p1.parts.a (n : ℕ) (hn : 0 < n) (a d : ℕ → ℝ)
    (hd : ∀ i ∈ Finset.Icc 1 n, d i = (⨆ j : Finset.Icc 1 i, a j) - ⨅ j : Finset.Icc i n, a j)
    (dMAX) (hdMAX : dMAX = ⨆ i : Finset.Icc 1 n, d i) (x : ℕ → ℝ) (hx : Monotone x) :
    ⨆ i ∈ Finset.Icc 1 n, |x i - a i| ≥ dMAX / 2 := by
  sorry

/-- Real numbers $ a_{1}$, $ a_{2}$, $ \ldots$, $ a_{n}$ are given. For each $ i$, $
(1 \leq i \leq n )$, define \[ d_{i} = \max \{ a_{j}\mid 1 \leq j \leq i \} -
\min \{ a_{j}\mid i \leq j \leq n \} \] and let $ d = \max \{d_{i}\mid 1 \leq i
\leq n \}$.

(a) Prove that, for any real numbers $ x_{1}\leq x_{2}\leq \cdots \leq x_{n}$,
\[ \max \{ |x_{i} - a_{i}| \mid 1 \leq i \leq n \}\geq \frac {d}{2}. \quad \quad
(*) \] (b) Show that there are real numbers $ x_{1}\leq x_{2}\leq \cdots \leq
x_{n}$ such that the equality holds in (*).
-/
theorem imo_2007_p1.parts.b (n : ℕ) (hn : 0 < n) (a d : ℕ → ℝ)
    (hd : ∀ i ∈ Finset.Icc 1 n, d i = (⨆ j : Finset.Icc 1 i, a j) - ⨅ j : Finset.Icc i n, a j)
    (dMAX) (hdMAX : dMAX = ⨆ i : Finset.Icc 1 n, d i) :
    ∃ (x : ℕ → ℝ) (hx : Monotone x), (⨆ i : Finset.Icc 1 n, |x i - a i|) = dMAX / 2 := by
  sorry
