import ClinicalMedicineQualityImprovementCanonicalLaneLean.ClinicalMedicineAdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineQualityImprovementCanonicalLaneLean

structure DiagnosticInference (A : AdmissibleClass) where
  testResults : Type
  diseasePrevalence : Prop
  sensitivity : Prop
  specificity : Prop
  posteriorProbability : Prop
  posteriorComputed : posteriorProbability
  bridgeClosedFromInference : bridgeClosed A
  gateClosedFromInference : gateClosed A

def DiagnosticInferenceClosed (A : AdmissibleClass) (D : DiagnosticInference A) : Prop :=
  D.posteriorProbability ∧ bridgeClosed A ∧ gateClosed A

theorem diagnostic_inference_closed (A : AdmissibleClass) (D : DiagnosticInference A) :
    DiagnosticInferenceClosed A D := by
  exact And.intro D.posteriorComputed (And.intro D.bridgeClosedFromInference D.gateClosedFromInference)

end ClinicalMedicineQualityImprovementCanonicalLaneLean
end HautevilleHouse
