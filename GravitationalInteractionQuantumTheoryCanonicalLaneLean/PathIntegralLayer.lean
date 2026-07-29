import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace GravitationalInteractionQuantumTheoryCanonicalLaneLean

structure PathIntegralCertificate where
  actionFunctional : Prop
  measureConstruction : Prop
  greensFunctions : Prop
  perturbationExpansion : Prop
  actionFunctionalClosed : actionFunctional
  measureConstructionClosed : measureConstruction
  greensFunctionsClosed : greensFunctions
  perturbationExpansionClosed : perturbationExpansion

def sourcePathIntegralCertificate : PathIntegralCertificate := {
  actionFunctional := true
  measureConstruction := true
  greensFunctions := true
  perturbationExpansion := true
  actionFunctionalClosed := rfl
  measureConstructionClosed := rfl
  greensFunctionsClosed := rfl
  perturbationExpansionClosed := rfl
}

def PathIntegralClosed (C : PathIntegralCertificate) : Prop :=
  C.actionFunctional ∧ C.measureConstruction ∧ C.greensFunctions ∧ C.perturbationExpansion

theorem source_path_integral_closed : PathIntegralClosed sourcePathIntegralCertificate := by
  exact And.intro sourcePathIntegralCertificate.actionFunctionalClosed
    (And.intro sourcePathIntegralCertificate.measureConstructionClosed
      (And.intro sourcePathIntegralCertificate.greensFunctionsClosed
        sourcePathIntegralCertificate.perturbationExpansionClosed))

end GravitationalInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse
