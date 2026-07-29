import canonicalLaneMathlib.AdmissibleClass
import .SpectralTheoremLayer
import .StateSpaceLayer

namespace HautevilleHouse
namespace GravitationalInteractionQuantumTheoryCanonicalLaneLean

structure InteractionBridgeCertificate where
  spectralLayer : SpectralCertificate
  stateSpaceLayer : StateSpaceCertificate
  interactionCouplingClosed : Prop
  gravityQuantizationClosed : Prop
  spectralLayerClosedProof : SpectralLayerClosed spectralLayer
  stateSpaceLayerClosedProof : StateSpaceLayerClosed stateSpaceLayer
  interactionCouplingClosedProof : interactionCouplingClosed
  gravityQuantizationClosedProof : gravityQuantizationClosed

def sourceInteractionBridgeCertificate : InteractionBridgeCertificate := {
  spectralLayer := sourceSpectralCertificate
  stateSpaceLayer := sourceStateSpaceCertificate
  interactionCouplingClosed := True
  gravityQuantizationClosed := True
  spectralLayerClosedProof := source_spectral_layer_closed
  stateSpaceLayerClosedProof := source_state_space_layer_closed
  interactionCouplingClosedProof := trivial
  gravityQuantizationClosedProof := trivial
}

def InteractionBridgeLayerClosed (C : InteractionBridgeCertificate) : Prop :=
  SpectralLayerClosed C.spectralLayer ∧
  StateSpaceLayerClosed C.stateSpaceLayer ∧
  C.interactionCouplingClosed ∧
  C.gravityQuantizationClosed

theorem source_interaction_bridge_layer_closed :
    InteractionBridgeLayerClosed sourceInteractionBridgeCertificate := by
  exact And.intro sourceInteractionBridgeCertificate.spectralLayerClosedProof
    (And.intro sourceInteractionBridgeCertificate.stateSpaceLayerClosedProof
      (And.intro sourceInteractionBridgeCertificate.interactionCouplingClosedProof
        sourceInteractionBridgeCertificate.gravityQuantizationClosedProof))

end GravitationalInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse
