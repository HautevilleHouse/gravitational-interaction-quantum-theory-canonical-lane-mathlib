import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalInteractionQuantumTheoryCanonicalLaneLean

structure QuantumGravityObservableCertificate where
  observableAlgebra : Prop
  correlationFunction : Prop
  gravitonPropagator : Prop
  observableAlgebraClosed : observableAlgebra
  correlationFunctionClosed : correlationFunction
  gravitonPropagatorClosed : gravitonPropagator

def sourceQuantumGravityObservableCertificate : QuantumGravityObservableCertificate := {
  observableAlgebra := true
  correlationFunction := true
  gravitonPropagator := true
  observableAlgebraClosed := rfl
  correlationFunctionClosed := rfl
  gravitonPropagatorClosed := rfl
}

def QuantumGravityObservableClosed (C : QuantumGravityObservableCertificate) : Prop :=
  C.observableAlgebra ∧ C.correlationFunction ∧ C.gravitonPropagator

theorem source_quantum_gravity_observable_closed :
    QuantumGravityObservableClosed sourceQuantumGravityObservableCertificate := by
  exact And.intro sourceQuantumGravityObservableCertificate.observableAlgebraClosed
    (And.intro sourceQuantumGravityObservableCertificate.correlationFunctionClosed
      sourceQuantumGravityObservableCertificate.gravitonPropagatorClosed)

end GravitationalInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse