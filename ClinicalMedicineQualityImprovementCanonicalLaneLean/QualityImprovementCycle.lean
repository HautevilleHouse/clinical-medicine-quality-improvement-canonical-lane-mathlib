import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineQualityImprovementCanonicalLaneLean

structure QualityImprovementCycle where
  planPhase : Prop
  doPhase : Prop
  studyPhase : Prop
  actPhase : Prop
  baselineMeasurement : Prop
  outcomeAssessment : Prop

structure QualityImprovementEvidence (Q : QualityImprovementCycle) where
  planPhaseClosed : Q.planPhase
  doPhaseClosed : Q.doPhase
  studyPhaseClosed : Q.studyPhase
  actPhaseClosed : Q.actPhase
  baselineMeasurementClosed : Q.baselineMeasurement
  outcomeAssessmentClosed : Q.outcomeAssessment

def QualityImprovementClosed (Q : QualityImprovementCycle) : Prop :=
  Q.planPhase ∧ Q.doPhase ∧ Q.studyPhase ∧ Q.actPhase ∧
  Q.baselineMeasurement ∧ Q.outcomeAssessment

theorem quality_improvement_closed_from_evidence (Q : QualityImprovementCycle)
    (E : QualityImprovementEvidence Q) : QualityImprovementClosed Q := by
  exact And.intro E.planPhaseClosed
    (And.intro E.doPhaseClosed
      (And.intro E.studyPhaseClosed
        (And.intro E.actPhaseClosed
          (And.intro E.baselineMeasurementClosed E.outcomeAssessmentClosed))))

end ClinicalMedicineQualityImprovementCanonicalLaneLean
end HautevilleHouse