import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineQualityImprovementCanonicalLaneLean

structure AdverseEventMonitoringPackage where
  adverseEventReporting : Prop
  toxicityGrading : Prop
  causalityAssessment : Prop
  severityClassification : Prop
  expectednessDetermination : Prop
  riskBenefitAnalysis : Prop

structure AdverseEventMonitoringEvidence (A : AdverseEventMonitoringPackage) where
  adverseEventReportingClosed : A.adverseEventReporting
  toxicityGradingClosed : A.toxicityGrading
  causalityAssessmentClosed : A.causalityAssessment
  severityClassificationClosed : A.severityClassification
  expectednessDeterminationClosed : A.expectednessDetermination
  riskBenefitAnalysisClosed : A.riskBenefitAnalysis

def AdverseEventMonitoringClosed (A : AdverseEventMonitoringPackage) : Prop :=
  A.adverseEventReporting ∧ A.toxicityGrading ∧ A.causalityAssessment ∧
  A.severityClassification ∧ A.expectednessDetermination ∧ A.riskBenefitAnalysis

theorem adverse_event_monitoring_closed_from_evidence (A : AdverseEventMonitoringPackage)
    (E : AdverseEventMonitoringEvidence A) : AdverseEventMonitoringClosed A := by
  exact And.intro E.adverseEventReportingClosed
    (And.intro E.toxicityGradingClosed
      (And.intro E.causalityAssessmentClosed
        (And.intro E.severityClassificationClosed
          (And.intro E.expectednessDeterminationClosed E.riskBenefitAnalysisClosed))))

end ClinicalMedicineQualityImprovementCanonicalLaneLean
end HautevilleHouse