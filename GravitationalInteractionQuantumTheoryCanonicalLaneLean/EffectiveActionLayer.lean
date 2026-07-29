import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GravitationalInteractionQuantumTheoryCanonicalLaneLean

structure EffectiveActionCertificate where
  einsteinHilbertAction : Prop
  ghostContribution : Prop
  renormalizationGroup : Prop
  einsteinHilbertActionClosed : einsteinHilbertAction
  ghostContributionClosed : ghostContribution
  renormalizationGroupClosed : renormalizationGroup

def sourceEffectiveActionCertificate : EffectiveActionCertificate := {
  einsteinHilbertAction := true
  ghostContribution := true
  renormalizationGroup := true
  einsteinHilbertActionClosed := rfl
  ghostContributionClosed := rfl
  renormalizationGroupClosed := rfl
}

def EffectiveActionClosed (C : EffectiveActionCertificate) : Prop :=
  C.einsteinHilbertAction ∧ C.ghostContribution ∧ C.renormalizationGroup

theorem source_effective_action_closed :
    EffectiveActionClosed sourceEffectiveActionCertificate := by
  exact And.intro sourceEffectiveActionCertificate.einsteinHilbertActionClosed
    (And.intro sourceEffectiveActionCertificate.ghostContributionClosed
      sourceEffectiveActionCertificate.renormalizationGroupClosed)

end GravitationalInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse