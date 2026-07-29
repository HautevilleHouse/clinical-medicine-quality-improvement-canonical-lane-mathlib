import ClinicalMedicineQualityImprovementCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClinicalMedicineQualityImprovementCanonicalLaneLean

def ConstrainedClinicalQualityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_clinical_quality_endgame (A : AdmissibleClass) :
    ConstrainedClinicalQualityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClinicalMedicineQualityImprovementCanonicalLaneLean
end HautevilleHouse
