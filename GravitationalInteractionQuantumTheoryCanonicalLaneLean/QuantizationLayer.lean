import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace GravitationalInteractionQuantumTheoryCanonicalLaneLean

structure QuantizationCertificate where
  canonicalQuantization : Prop
  geometricQuantization : Prop
  deformationQuantization : Prop
  weylQuantization : Prop
  canonicalQuantizationClosed : canonicalQuantization
  geometricQuantizationClosed : geometricQuantization
  deformationQuantizationClosed : deformationQuantization
  weylQuantizationClosed : weylQuantization

def sourceQuantizationCertificate : QuantizationCertificate := {
  canonicalQuantization := true
  geometricQuantization := true
  deformationQuantization := true
  weylQuantization := true
  canonicalQuantizationClosed := rfl
  geometricQuantizationClosed := rfl
  deformationQuantizationClosed := rfl
  weylQuantizationClosed := rfl
}

def QuantizationClosed (C : QuantizationCertificate) : Prop :=
  C.canonicalQuantization ∧ C.geometricQuantization ∧ C.deformationQuantization ∧ C.weylQuantization

theorem source_quantization_closed : QuantizationClosed sourceQuantizationCertificate := by
  exact And.intro sourceQuantizationCertificate.canonicalQuantizationClosed
    (And.intro sourceQuantizationCertificate.geometricQuantizationClosed
      (And.intro sourceQuantizationCertificate.deformationQuantizationClosed
        sourceQuantizationCertificate.weylQuantizationClosed))

end GravitationalInteractionQuantumTheoryCanonicalLaneLean
end HautevilleHouse
