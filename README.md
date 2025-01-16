# The formal-imo benchmark

[![.github/workflows/ci.yml](https://github.com/google-deepmind/formal-imo/actions/workflows/ci.yml/badge.svg)](https://github.com/google-deepmind/formal-imo/actions/workflows/ci.yml)
[![Gitpod Ready-to-Code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/google-deepmind/formal-imo)

This repository contains Lean formalizations of the statements of problems from the [International Mathematical Olympiad](https://www.imo-official.org).

## Origins

This package contains a mixture of formalizations written at Google, formalizations adapted from `miniF2F`, and formalizations adapted from `mathlib4/Archive`.
Files containing adaptations of existing published formalizations indicate this in a header comment.

The questions themselves originate from [the official IMO website](https://www.imo-official.org/problems.aspx),
though as these are distributed in only PDF form,
the english `/-- -/` docstrings attached to the Lean `theorem`s are often derived from some combination of the following downstream copies of the data:

* [The AoPS Wiki](https://artofproblemsolving.com/wiki/index.php/IMO_Problems_and_Solutions)
* [The AoPS Contest Collections](https://artofproblemsolving.com/community/c3222_imo)
* [John Scholes' IMO problem archive](https://prase.cz/kalva/imo.html)

Frequently these contradict each other!

## Naming Conventions

The content for problem `N` for year `YYYY` should appear in `Imo/YYYY/PN.lean`.
At a minimum, this file should contain a `theorem imo_YYYY_pN`.

### Partial formalizations

Some questions have multiple parts. In the interest of allowing partial credit on the benchmark, these can be split into separate theorems _in addition_ to the single `imo_YYYY_pN` with the full answer.
For instance, a question with parts i) and ii) would have two extra theorems `imo_YYYY_pN.parts.i` and `imo_YYYY_pN.parts.ii`.

For parts with no clear numbering, use `imo_YYYY_pN.parts.i`, `imo_YYYY_pN.parts.ii` etc.

Sometimes questions have implicit parts; for instance, showing `IsGreatest s x` involves showing both that `x ∈ s` and `x ∈ upperBounds s`, and showing `s = t` almost always proceeds by showing `s ⊆ t` and `s ⊇ t`.
In these cases, names like `imo_YYYY_pN.parts.superset` can be used.

## Other formalization notes

### Geometry

For geometric problems, we have various ways to write "a 2D euclidean space":

1. `{V P} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [MetricSpace P] [NormedAddTorsor V P] [Module.Oriented ℝ V (Fin 2)] [Fact (Module.finrank ℝ V = 2)]` (as demonstrated by [`EuclideanGeometry.oangle_add_oangle_add_oangle_eq_pi`](https://leanprover-community.github.io/mathlib4_docs/Mathlib/Geometry/Euclidean/Triangle.html#EuclideanGeometry.oangle_add_oangle_add_oangle_eq_pi))
2. `ℝ²` aka `EuclideanSpace ℝ (Fin 2)` (notation provided in the [formal-conjectures](https://github.com/google-deepmind/formal-conjectures/blob/main/FormalConjectures/ForMathlib/Geometry/2d.lean) repository).

1 has the advantage that it doesn't impose a coordinate-based view; and generalizes to situations where the 2D space resides within a larger ambient nD space. It seems to be the preferred approach by some existing mathlib users.

For now we use a mixture of these styles.

### Finite objects

For questions such as "there are 12 users, each with a score, ...", we have two reasonable approaches to formalize:

1. `{User: Type*} [Fintype User] [DecidableEq User] (hU : Fintype.card User = 12) (score : User → ℕ)` (using some unspecified representation of a user)
2. `(score : Fin 12 → ℕ)` (representing each user with a number `[0, 12)`)

These are of course equivalent.
The latter has the obvious advantage of being shorter, but the former makes the statement resemble the prose a little better.

For now we use a mixture of these styles too.

### Local definitions

For questions such as "we say a number is `Surprising` if `_`", we have two reasonable approaches

1.  ```lean
    def Surprising (n : ℕ) : Prop := _

    lemma the_theorem : Surprising 37 := sorry
    ```
2.  ```lean
    lemma the_theorem (Surprising : ℕ → Prop) (surprising_iff : ∀ n, Surprising n ↔ _) : Surprising 37 := sorry
    ```

For now we prefer style 2, as this is most similar to the approach used in miniF2F.

### Imports

Please don't add local imports, if you need anything add it to `Imo.ProblemImports`.

## Licensing

Copyright 2025 Google LLC.

All software is licensed under the Apache License,
Version 2.0 (Apache 2.0); you may not use this file except in compliance with
the Apache 2.0 license. You may obtain a copy of the Apache 2.0 license at:
https://www.apache.org/licenses/LICENSE-2.0

All other materials are licensed under the Creative Commons Attribution 4.0
International License (CC-BY). You may obtain a copy of the CC-BY license at:
https://creativecommons.org/licenses/by/4.0/legalcode.

Unless required by applicable law or agreed to in writing, all software and
materials distributed here under the Apache 2.0 or CC-BY license are distributed
on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
express or implied. See the licenses for the specific language governing
permissions and limitations under those licenses.

This is not an official Google product.
