import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineQualityImprovementCanonicalLaneLean

structure QualityImprovementInterventionPackage where
  planDoStudyActCycle : Prop
  evidenceBasedProtocol : Prop
  outcomeMeasurement : Prop
  benchmarking : Prop
  continuousImprovement : Prop

def QualityImprovementInterventionClosed (Q : QualityImprovementInterventionPackage) : Prop :=
  Q.planDoStudyActCycle ∧ Q.evidenceBasedProtocol ∧ Q.outcomeMeasurement ∧ Q.benchmarking ∧ Q.continuousImprovement

theorem quality_improvement_intervention_closed (Q : QualityImprovementInterventionPackage) : QualityImprovementInterventionClosed Q := by
  exact And.intro Q.planDoStudyActCycle (And.intro Q.evidenceBasedProtocol (And.intro Q.outcomeMeasurement (And.intro Q.benchmarking Q.continuousImprovement)))

end ClinicalMedicineQualityImprovementCanonicalLaneLean
end HautevilleHouse