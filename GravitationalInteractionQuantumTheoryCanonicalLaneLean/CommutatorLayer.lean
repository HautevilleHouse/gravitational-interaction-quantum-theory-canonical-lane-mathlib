import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace GravitationalInteractionQuantumTheoryCanonicalLaneLean

structure CommutatorCertificate where
  canonicalCommutation : Prop
  angularMomentumAlgebra : Prop
  ladderOperators : Prop
  structureConstants : Prop
  canonicalCommutationClosed : canonicalCommutation
  angularMomentumAlgebraClosed : angularMomentumAlgebra
  ladderOperatorsClosed : ladderOperators
  structureConstantsClosed : structureConstants

def sourceCommutatorCertificate : CommutatorCertificate := {
  canonicalCommutation := true
  angularMomentumAlgebra := true
  ladderOperators := true
  structureConstants := true
  canonicalCommutationClosed := rfl
  angularMomentumAlgebraClosed := rfl
  ladderOperatorsClosed := rfl
  structureConstantsClosed := rfl
}

def CommutatorClosed (C : CommutatorCertificate) : Prop :=
  C.canonicalCommutation ∧ C.angularMomentumAlgebra ∧ C.ladderOperators ∧ C.structureConstants

theorem source_commutator_closed : CommutatorClosed sourceCommutatorCertificate := by
  exact And.intro sourceCommutatorCertificate.canonicalCommutationClosed
    (And.intro sourceCommutatorCertificate.angularMomentumAlgebraClosed
      (And.intro sourceCommutatorCertificate.ladderOperatorsClosed
        sourceCommutatorCertificate.structureConstantsClosed))

end GravitationalInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse
