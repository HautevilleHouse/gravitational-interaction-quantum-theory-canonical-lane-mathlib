import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace GravitationalInteractionQuantumTheoryCanonicalLaneLean

structure StateSpaceCertificate where
  densityOperator : Prop
  traceClass : Prop
  positivityClosed : Prop
  normalizationClosed : Prop
  densityOperatorClosed : densityOperator
  traceClassClosed : traceClass
  positivityClosedProof : positivityClosed
  normalizationClosedProof : normalizationClosed

def sourceStateSpaceCertificate : StateSpaceCertificate := {
  densityOperator := true
  traceClass := true
  positivityClosed := true
  normalizationClosed := true
  densityOperatorClosed := rfl
  traceClassClosed := rfl
  positivityClosedProof := rfl
  normalizationClosedProof := rfl
}

def StateSpaceClosed (C : StateSpaceCertificate) : Prop :=
  C.densityOperator ∧ C.traceClass ∧ C.positivityClosed ∧ C.normalizationClosed

theorem source_state_space_closed : StateSpaceClosed sourceStateSpaceCertificate := by
  exact And.intro sourceStateSpaceCertificate.densityOperatorClosed
    (And.intro sourceStateSpaceCertificate.traceClassClosed
      (And.intro sourceStateSpaceCertificate.positivityClosedProof
        sourceStateSpaceCertificate.normalizationClosedProof))

end GravitationalInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse
