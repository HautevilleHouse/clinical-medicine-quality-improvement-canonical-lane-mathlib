import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineQualityImprovementCanonicalLaneLean

structure QualityImprovementEndpoint where
  outcomeMeasure : Type
  interventionEffect : Prop
  confidenceInterval : Prop
  clinicalSignificance : Prop
  improvementThreshold : Prop

structure QualityImprovementEndpointEvidence (Q : QualityImprovementEndpoint) where
  interventionEffectClosed : Q.interventionEffect
  confidenceIntervalClosed : Q.confidenceInterval
  clinicalSignificanceClosed : Q.clinicalSignificance
  improvementThresholdClosed : Q.improvementThreshold

def QualityImprovementEndpointClosed (Q : QualityImprovementEndpoint) : Prop :=
  Q.interventionEffect ∧ Q.confidenceInterval ∧
  Q.clinicalSignificance ∧ Q.improvementThreshold

theorem quality_improvement_endpoint_closed_from_evidence
    (Q : QualityImprovementEndpoint) (E : QualityImprovementEndpointEvidence Q) :
    QualityImprovementEndpointClosed Q := by
  exact And.intro E.interventionEffectClosed
    (And.intro E.confidenceIntervalClosed
      (And.intro E.clinicalSignificanceClosed E.improvementThresholdClosed))

end ClinicalMedicineQualityImprovementCanonicalLaneLean
end HautevilleHouse