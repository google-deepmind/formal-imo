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
open scoped EuclideanGeometry
open AffineMap

/--
There are $n\ge 2$ line segments in the plane such that every two segments cross and no three segments meet at a point. Geoff has to choose an endpoint of each segment and place a frog on it facing the other endpoint. Then he will clap his hands $n-1$ times. Every time he claps, each frog will immediately jump forward to the next intersection point on its segment. Frogs never change the direction of their jumps. Geoff wishes to place the frogs in such a way that no two of them will ever occupy the same intersection point at the same time.

(a) Prove that Geoff can always fulfill his wish if $n$ is odd.

(b) Prove that Geoff can never fulfill his wish if $n$ is even.
-/
theorem imo_2016_p6.parts.a (n : ℕ) (hn : 2 ≤ n)
    /- Each segment is given by a starting point and an endpoint. -/
    (points : Fin n → ℝ² × ℝ²)
    /- Non-degeneracy (follows from the conditions below, but it doesn't hurt) -/
    (hpoints : ∀ i, (points i).1 ≠ (points i).2)
    /- `interAlong i` is the `n-1` intersection points which we label using `Fin (n-1)`, and
    by using `lineMap` they are determined by a point in `Set.Ioo 0 1`. -/
    (interAlong : Fin n → Fin (n - 1 : ℕ) ↪o Set.Ioo (0 : ℝ) 1)
    /- `interBtw i ⟨j, hij⟩` is the index of the intersection with `j` along segment `i`. -/
    (interBtw : (i : Fin n) → {j // i ≠ j} ≃ Fin (n - 1 : ℕ))
    /- The segments intersect iff `interAlong` and `interBtw` say they do. -/
    (lineMap_eq_iff : ∀ i j (hij : i ≠ j),
      ∀ ri rj : Set.Ioo 0 (1 : ℝ),
        lineMap (points i).1 (points i).2 ri.1 =
        lineMap (points j).1 (points j).2 rj.1 ↔
          ri = interAlong i (interBtw i ⟨j, hij⟩) ∧
          rj = interAlong j (interBtw j ⟨i, hij.symm⟩))
    -- The following function, `clap`, takes a `Bool` determining a direction, and a number `t`.
    -- It returns the intersection point (by its label) that a Frog should be at after the
    -- `t`:th clap. `false` means backwards movement from the end point, and `true` forward movement
    -- from the starting point.
    (clap : Bool → Fin (n - 1 : ℕ) → Fin (n - 1 : ℕ))
    (clap_def : ∀ b, clap b = if b then Fin.rev else id)
    (hn : Odd n) :
    -- Geoff must assign each frog to a segment and a starting point
    ∃ F : Fin n → Fin n × Bool,
      -- For any two frogs `f ≠ g`
      ∀ f g (hfg : f ≠ g),
        -- The frogs do not start at the same point,
        (F f).1 ≠ (F g).1 ∧
        -- and at each point in time (`t=0` being after the first clap)
        ∀ t : Fin (n - 1 : ℕ),
        -- they don't meet.
        lineMap (points (F f).1).1 (points (F f).1).2 (interAlong (F f).1 (clap (F f).2 t)).1 ≠
        lineMap (points (F g).1).1 (points (F g).1).2 (interAlong (F g).1 (clap (F g).2 t)).1 := by
  sorry

/--
There are $n\ge 2$ line segments in the plane such that every two segments cross and no three segments meet at a point. Geoff has to choose an endpoint of each segment and place a frog on it facing the other endpoint. Then he will clap his hands $n-1$ times. Every time he claps, each frog will immediately jump forward to the next intersection point on its segment. Frogs never change the direction of their jumps. Geoff wishes to place the frogs in such a way that no two of them will ever occupy the same intersection point at the same time.

(a) Prove that Geoff can always fulfill his wish if $n$ is odd.

(b) Prove that Geoff can never fulfill his wish if $n$ is even.
-/
theorem imo_2016_p6.parts.b (n : ℕ) (hn : 2 ≤ n)
    (points : Fin n → ℝ² × ℝ²)
    (hpoints : ∀ i, (points i).1 ≠ (points i).2)
    (interAlong : Fin n → Fin (n - 1 : ℕ) ↪o Set.Ioo (0 : ℝ) 1)
    (interBtw : (i : Fin n) → {j // i ≠ j} ≃ Fin (n - 1 : ℕ))
    (lineMap_eq_iff : ∀ i j (hij : i ≠ j),
      ∀ ri rj : Set.Ioo 0 (1 : ℝ),
        lineMap (points i).1 (points i).2 ri.1 =
        lineMap (points j).1 (points j).2 rj.1 ↔
          ri = interAlong i (interBtw i ⟨j, hij⟩) ∧
          rj = interAlong j (interBtw j ⟨i, hij.symm⟩))
    (clap : Bool → Fin (n - 1 : ℕ) → Fin (n - 1 : ℕ))
    (clap_def : ∀ b, clap b = if b then Fin.rev else id)
    (hn : Even n) :
    ¬ ∃ F : Fin n → Fin n × Bool,
      Pairwise fun f g ↦
        (F f).1 ≠ (F g).1 ∧
        ∀ t : Fin (n - 1 : ℕ),
          lineMap (points (F f).1).1 (points (F f).1).2 (interAlong (F f).1 (clap (F f).2 t)).1 ≠
          lineMap (points (F g).1).1 (points (F g).1).2 (interAlong (F g).1 (clap (F g).2 t)).1 := by
  sorry

/--
There are $n\ge 2$ line segments in the plane such that every two segments cross and no three segments meet at a point. Geoff has to choose an endpoint of each segment and place a frog on it facing the other endpoint. Then he will clap his hands $n-1$ times. Every time he claps, each frog will immediately jump forward to the next intersection point on its segment. Frogs never change the direction of their jumps. Geoff wishes to place the frogs in such a way that no two of them will ever occupy the same intersection point at the same time.

(a) Prove that Geoff can always fulfill his wish if $n$ is odd.

(b) Prove that Geoff can never fulfill his wish if $n$ is even.
-/
@[imo_problem_subject combinatorics]
theorem imo_2016_p6 (n : ℕ) (hn : 2 ≤ n)
    (points : Fin n → ℝ² × ℝ²)
    (hpoints : ∀ i, (points i).1 ≠ (points i).2)
    (interAlong : Fin n → Fin (n - 1 : ℕ) ↪o Set.Ioo (0 : ℝ) 1)
    (interBtw : (i : Fin n) → {j // i ≠ j} ≃ Fin (n - 1 : ℕ))
    (lineMap_eq_iff : ∀ i j (hij : i ≠ j),
      ∀ ri rj : Set.Ioo 0 (1 : ℝ),
        lineMap (points i).1 (points i).2 ri.1 =
        lineMap (points j).1 (points j).2 rj.1 ↔
          ri = interAlong i (interBtw i ⟨j, hij⟩) ∧
          rj = interAlong j (interBtw j ⟨i, hij.symm⟩))
    (clap : Bool → Fin (n - 1 : ℕ) → Fin (n - 1 : ℕ))
    (clap_def : ∀ b, clap b = if b then Fin.rev else id) :
    (Odd n →
    ∃ F : Fin n → Fin n × Bool,
      Pairwise fun f g ↦
        (F f).1 ≠ (F g).1 ∧
        ∀ t : Fin (n - 1 : ℕ),
        lineMap (points (F f).1).1 (points (F f).1).2 (interAlong (F f).1 (clap (F f).2 t)).1 ≠
        lineMap (points (F g).1).1 (points (F g).1).2 (interAlong (F g).1 (clap (F g).2 t)).1) ∧
    (Even n →
    ¬ ∃ F : Fin n → Fin n × Bool,
      Pairwise fun f g ↦
        (F f).1 ≠ (F g).1 ∧
        ∀ t : Fin (n - 1 : ℕ),
        lineMap (points (F f).1).1 (points (F f).1).2 (interAlong (F f).1 (clap (F f).2 t)).1 ≠
        lineMap (points (F g).1).1 (points (F g).1).2 (interAlong (F g).1 (clap (F g).2 t)).1) := by
  exact ⟨imo_2016_p6.parts.a n hn points hpoints interAlong interBtw lineMap_eq_iff clap clap_def,
    imo_2016_p6.parts.b n hn points hpoints interAlong interBtw lineMap_eq_iff clap clap_def⟩
