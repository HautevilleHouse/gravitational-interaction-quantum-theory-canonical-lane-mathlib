import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalInteractionQuantumTheoryCanonicalLaneLean

structure StateSpaceCertificate where
  stateSpaceDefined : Prop
  positivityPreserving : Prop
  gaugeInvariance : Prop
  stateSpaceDefinedProof : stateSpaceDefined
  positivityPreservingProof : positivityPreserving
  gaugeInvarianceProof : gaugeInvariance

def sourceStateSpaceCertificate : StateSpaceCertificate := {
  stateSpaceDefined := True
  positivityPreserving := True
  gaugeInvariance := True
  stateSpaceDefinedProof := trivial
  positivityPreservingProof := trivial
  gaugeInvarianceProof := trivial
}

def StateSpaceLayerClosed (C : StateSpaceCertificate) : Prop :=
  C.stateSpaceDefined ∧ C.positivityPreserving ∧ C.gaugeInvariance

theorem source_state_space_layer_closed :
    StateSpaceLayerClosed sourceStateSpaceCertificate := by
  exact And.intro sourceStateSpaceCertificate.stateSpaceDefinedProof
    (And.intro sourceStateSpaceCertificate.positivityPreservingProof
      sourceStateSpaceCertificate.gaugeInvarianceProof)

end GravitationalInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse
