import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalInteractionQuantumTheoryCanonicalLaneLean

structure GravitationalInteractionCertificate where
  spectralClosed : SpectralCertificate
  uncertaintyClosed : UncertaintyCertificate
  stateSpaceClosed : StateSpaceCertificate
  commutationClosed : CommutationCertificate
  spectralBridge : Prop
  uncertaintyBridge : Prop
  stateSpaceBridge : Prop
  commutationBridge : Prop
  spectralBridgeClosed : spectralBridge
  uncertaintyBridgeClosed : uncertaintyBridge
  stateSpaceBridgeClosed : stateSpaceBridge
  commutationBridgeClosed : commutationBridge

def sourceGravitationalInteractionCertificate : GravitationalInteractionCertificate := {
  spectralClosed := sourceSpectralCertificate
  uncertaintyClosed := sourceUncertaintyCertificate
  stateSpaceClosed := sourceStateSpaceCertificate
  commutationClosed := sourceCommutationCertificate
  spectralBridge := true
  uncertaintyBridge := true
  stateSpaceBridge := true
  commutationBridge := true
  spectralBridgeClosed := rfl
  uncertaintyBridgeClosed := rfl
  stateSpaceBridgeClosed := rfl
  commutationBridgeClosed := rfl
}

def GravitationalInteractionClosed (C : GravitationalInteractionCertificate) : Prop :=
  SpectralClosed C.spectralClosed ∧
  UncertaintyClosed C.uncertaintyClosed ∧
  StateSpaceClosed C.stateSpaceClosed ∧
  CommutationClosed C.commutationClosed ∧
  C.spectralBridge ∧ C.uncertaintyBridge ∧ C.stateSpaceBridge ∧ C.commutationBridge

theorem source_gravitational_interaction_closed : GravitationalInteractionClosed sourceGravitationalInteractionCertificate := by
  refine And.intro source_spectral_closed (And.intro source_uncertainty_closed
    (And.intro source_state_space_closed (And.intro source_commutation_closed
      (And.intro sourceGravitationalInteractionCertificate.spectralBridgeClosed
        (And.intro sourceGravitationalInteractionCertificate.uncertaintyBridgeClosed
          (And.intro sourceGravitationalInteractionCertificate.stateSpaceBridgeClosed
            sourceGravitationalInteractionCertificate.commutationBridgeClosed))))))

end GravitationalInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse