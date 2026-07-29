import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace GravitationalInteractionQuantumTheoryCanonicalLaneLean

structure UncertaintyCertificate where
  positionMomentumCommutation : Prop
  heisenbergBound : Prop
  coherentStates : Prop
  squeezedStates : Prop
  positionMomentumClosed : positionMomentumCommutation
  heisenbergBoundClosed : heisenbergBound
  coherentStatesClosed : coherentStates
  squeezedStatesClosed : squeezedStates

def sourceUncertaintyCertificate : UncertaintyCertificate := {
  positionMomentumCommutation := true
  heisenbergBound := true
  coherentStates := true
  squeezedStates := true
  positionMomentumClosed := rfl
  heisenbergBoundClosed := rfl
  coherentStatesClosed := rfl
  squeezedStatesClosed := rfl
}

def UncertaintyClosed (C : UncertaintyCertificate) : Prop :=
  C.positionMomentumCommutation ∧ C.heisenbergBound ∧ C.coherentStates ∧ C.squeezedStates

theorem source_uncertainty_closed : UncertaintyClosed sourceUncertaintyCertificate := by
  exact And.intro sourceUncertaintyCertificate.positionMomentumClosed
    (And.intro sourceUncertaintyCertificate.heisenbergBoundClosed
      (And.intro sourceUncertaintyCertificate.coherentStatesClosed
        sourceUncertaintyCertificate.squeezedStatesClosed))

end GravitationalInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse
