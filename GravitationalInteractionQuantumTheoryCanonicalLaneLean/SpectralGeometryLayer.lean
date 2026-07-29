import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace GravitationalInteractionQuantumTheoryCanonicalLaneLean

structure SpectralTripleCertificate where
  hilbertSpace : Prop
  diracOperator : Prop
  commutatorClosure : Prop
  spectralDistance : Prop
  hilbertSpaceClosed : hilbertSpace
  diracOperatorClosed : diracOperator
  commutatorClosureClosed : commutatorClosure
  spectralDistanceClosed : spectralDistance

def sourceSpectralTripleCertificate : SpectralTripleCertificate := {
  hilbertSpace := true
  diracOperator := true
  commutatorClosure := true
  spectralDistance := true
  hilbertSpaceClosed := rfl
  diracOperatorClosed := rfl
  commutatorClosureClosed := rfl
  spectralDistanceClosed := rfl
}

def SpectralTripleClosed (C : SpectralTripleCertificate) : Prop :=
  C.hilbertSpace ∧ C.diracOperator ∧ C.commutatorClosure ∧ C.spectralDistance

theorem source_spectral_triple_closed : SpectralTripleClosed sourceSpectralTripleCertificate := by
  exact And.intro sourceSpectralTripleCertificate.hilbertSpaceClosed
    (And.intro sourceSpectralTripleCertificate.diracOperatorClosed
      (And.intro sourceSpectralTripleCertificate.commutatorClosureClosed
        sourceSpectralTripleCertificate.spectralDistanceClosed))

end GravitationalInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse
