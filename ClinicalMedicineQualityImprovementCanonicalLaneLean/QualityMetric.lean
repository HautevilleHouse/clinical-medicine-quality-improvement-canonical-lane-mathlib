import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineQualityImprovementCanonicalLaneLean

structure QualityMetricPackage where
  qualityScore : ℝ
  patientOutcome : ℝ
  processAdherence : ℝ
  benchmark : ℝ

def QualityMetricClosed (Q : QualityMetricPackage) : Prop :=
  Q.qualityScore ≥ 0 ∧ Q.qualityScore ≤ 100 ∧ Q.patientOutcome ≥ 0 ∧ Q.processAdherence ≥ 0 ∧ Q.benchmark > 0

end ClinicalMedicineQualityImprovementCanonicalLaneLean
end HautevilleHouse