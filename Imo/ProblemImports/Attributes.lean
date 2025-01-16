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

import Lean
import Qq
import Mathlib.Util.CompileInductive
import Batteries.Data.Rat

/-!
# Attributes for problem metadata

This file defines the `partial_points` and `imo_problem_subject`
attributes.
-/

open Lean
open Qq

namespace Google

section imo_problem_subject

inductive IMOProblemSubject
  | algebra
  | numberTheory
  | geometry
  | combinatorics
  deriving Inhabited, Repr

compile_inductive% IMOProblemSubject

/--
Provides a string representation for IMOProblemSubject.
e.g., `toString IMOProblemSubject.algebra` will be `"algebra"`.
-/
instance : ToString IMOProblemSubject where
  toString
  | .algebra       => "algebra"
  | .numberTheory  => "number_theory"
  | .geometry      => "geometry"
  | .combinatorics => "combinatorics"


syntax imoProblemSubject := &"algebra" <|> &"number_theory" <|> &"geometry" <|> &"combinatorics"

/-- Convert from a syntax node to a name. -/
private def imoProblemSubject.toName (stx : TSyntax ``imoProblemSubject) : Option Name :=
  match stx with
  | `(imoProblemSubject| algebra)       => ``IMOProblemSubject.algebra
  | `(imoProblemSubject| number_theory) => ``IMOProblemSubject.numberTheory
  | `(imoProblemSubject| geometry)      => ``IMOProblemSubject.geometry
  | `(imoProblemSubject| combinatorics) => ``IMOProblemSubject.combinatorics
  | _ => none

syntax (name := imo_problem_subject) "imo_problem_subject" imoProblemSubject : attr

/-- Specifies the IMO categorization (according to the IMO shortlist, or our best guess in its
absence) of a problem. -/
initialize imoProblemSubjectAttr : ParametricAttribute IMOProblemSubject ←
  registerParametricAttribute {
    name := `imo_problem_subject
    descr := "Annotation of the subject of a problem"
    getParam := fun _ => fun
      | `(attr| imo_problem_subject $s) => withRef s <| do
        let .some n := imoProblemSubject.toName s | Elab.throwUnsupportedSyntax
        Elab.addConstInfo s n
        Lean.Meta.MetaM.run' <|
          unsafe Meta.evalExpr IMOProblemSubject q(IMOProblemSubject) (.const n [])
      | _ => Elab.throwUnsupportedSyntax
  }

end imo_problem_subject

section partial_points

syntax (name := partial_points) "partial_points" scientific : attr

initialize partialPointsAttr : Lean.ParametricAttribute _root_.Rat ←
  Lean.registerParametricAttribute {
    name := `partial_points
    descr := "partial points for a theorem"
    getParam := fun _ stx => do
      match stx with
      | `(attr| partial_points $value:scientific) =>
        let (mantissa, negSign, exponent) := value.getScientific
        return Rat.ofScientific mantissa negSign exponent
      | _  => Elab.throwUnsupportedSyntax
  }

end partial_points

end Google
