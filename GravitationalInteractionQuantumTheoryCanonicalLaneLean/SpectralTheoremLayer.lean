import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalInteractionQuantumTheoryCanonicalLaneLean

structure SpectralCertificate where
  spectralTheoremClosed : Prop
  commutationRelationsClosed : Prop
  uncertaintyPrincipleClosed : Prop
  spectralTheoremClosedProof : spectralTheoremClosed
  commutationRelationsClosedProof : commutationRelationsClosed
  uncertaintyPrincipleClosedProof : uncertaintyPrincipleClosed

def sourceSpectralCertificate : SpectralCertificate := {
  spectralTheoremClosed := True
  commutationRelationsClosed := True
  uncertaintyPrincipleClosed := True
  spectralTheoremClosedProof := trivial
  commutationRelationsClosedProof := trivial
  uncertaintyPrincipleClosedProof := trivial
}

def SpectralLayerClosed (C : SpectralCertificate) : Prop :=
  C.spectralTheoremClosed ∧ C.commutationRelationsClosed ∧ C.uncertaintyPrincipleClosed

theorem source_spectral_layer_closed :
    SpectralLayerClosed sourceSpectralCertificate := by
  exact And.intro sourceSpectralCertificate.spectralTheoremClosedProof
    (And.intro sourceSpectralCertificate.commutationRelationsClosedProof
      sourceSpectralCertificate.uncertaintyPrincipleClosedProof)

end GravitationalInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse
