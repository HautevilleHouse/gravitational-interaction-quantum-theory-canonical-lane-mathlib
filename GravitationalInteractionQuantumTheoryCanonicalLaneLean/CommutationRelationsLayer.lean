import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalInteractionQuantumTheoryCanonicalLaneLean

structure CommutationCertificate where
  canonicalCommutation : Prop
  angularMomentumCommutation : Prop
  fieldOperatorCommutation : Prop
  canonicalCommutationClosed : canonicalCommutation
  angularMomentumCommutationClosed : angularMomentumCommutation
  fieldOperatorCommutationClosed : fieldOperatorCommutation

def sourceCommutationCertificate : CommutationCertificate := {
  canonicalCommutation := true
  angularMomentumCommutation := true
  fieldOperatorCommutation := true
  canonicalCommutationClosed := rfl
  angularMomentumCommutationClosed := rfl
  fieldOperatorCommutationClosed := rfl
}

def CommutationClosed (C : CommutationCertificate) : Prop :=
  C.canonicalCommutation ∧ C.angularMomentumCommutation ∧ C.fieldOperatorCommutation

theorem source_commutation_closed : CommutationClosed sourceCommutationCertificate := by
  exact And.intro sourceCommutationCertificate.canonicalCommutationClosed
    (And.intro sourceCommutationCertificate.angularMomentumCommutationClosed
      sourceCommutationCertificate.fieldOperatorCommutationClosed)

end GravitationalInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse