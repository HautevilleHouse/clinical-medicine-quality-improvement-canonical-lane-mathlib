import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineQualityImprovementCanonicalLaneLean

structure QualityImprovementMetricPackage where
  outcomeMeasure : Type u
  benchmarkTarget : Type v
  processAdherence : Prop
  riskAdjustment : Prop
  statisticalProcessControl : Prop
  improvementTrajectory : Prop

structure QualityImprovementMetricEvidence (Q : QualityImprovementMetricPackage) where
  processAdherenceClosed : Q.processAdherence
  riskAdjustmentClosed : Q.riskAdjustment
  statisticalProcessControlClosed : Q.statisticalProcessControl
  improvementTrajectoryClosed : Q.improvementTrajectory

def QualityImprovementMetricClosed (Q : QualityImprovementMetricPackage) : Prop :=
  Q.processAdherence ∧ Q.riskAdjustment ∧
  Q.statisticalProcessControl ∧ Q.improvementTrajectory

theorem quality_improvement_metric_closed_from_evidence
    (Q : QualityImprovementMetricPackage)
    (E : QualityImprovementMetricEvidence Q) : QualityImprovementMetricClosed Q := by
  exact And.intro E.processAdherenceClosed
    (And.intro E.riskAdjustmentClosed
      (And.intro E.statisticalProcessControlClosed E.improvementTrajectoryClosed))

end ClinicalMedicineQualityImprovementCanonicalLaneLean
end HautevilleHouse