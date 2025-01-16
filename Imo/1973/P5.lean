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
$G$ is a set of non-constant functions $f$. Each $f$ is defined on the real line and has the form $f(x)=ax+b$ for some real $a,b$. If $f$ and $g$ are in $G$, then so is $fg$, where $fg$ is defined by $fg(x)=f(g(x))$. If $f$ is in $G$, then so is the inverse $f^{-1}$. If $f(x)=ax+b$, then $f^{-1}(x)={x-b\over a}$. Every $f$ in $G$ has a fixed point (in other words we can find $x_f$ such that $f(x_f)=x_f$. Prove that all the functions in $G$ have a common fixed point. -/
@[imo_problem_subject algebra]
theorem imo_1973_p5 (G : Set (ℝ → ℝ))
    -- Convenient to do both of these lines in one hypothesis:
    -- Each f has the form $f(x)=ax+b$ for some real $a,b$.
    -- If $f$ is in $G$, then so is the inverse $f^{-1}$. If $f(x)=ax+b$, then $f^{-1}(x)= \frac{x-b}{a}$.
    -- Since the question gives the inverse, so do we.
    (h₁ : ∀ f : ℝ → ℝ, f ∈ G → ∃ a b, a ≠ 0 ∧ (f = fun x => a * x + b) ∧ (fun x => (x - b) / a) ∈ G)
    -- Compositions are in G.
    (h₂ : ∀ f g : ℝ → ℝ, f ∈ G ∧ g ∈ G → f ∘ g ∈ G)
    -- Every function has a fixed point
    (h₃ : ∀ f : ℝ → ℝ, f ∈ G → ∃ x, f x = x) :
    ∃ x : ℝ, ∀ f : ℝ → ℝ, f ∈ G → f x = x := by
  sorry
