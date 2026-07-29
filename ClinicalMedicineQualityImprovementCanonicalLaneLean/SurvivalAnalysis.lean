import ClinicalMedicineQualityImprovementCanonicalLaneLean.ClinicalMedicineAdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineQualityImprovementCanonicalLaneLean

structure SurvivalModel (A : AdmissibleClass) where
  timeToEvent : Type
  censoring : Prop
  hazardFunction : Prop
  survivalFunction : Prop
  kaplanMeierEstimate : Prop
  estimateComputed : kaplanMeierEstimate
  bridgeClosedFromSurvival : bridgeClosed A
  gateClosedFromSurvival : gateClosed A

def SurvivalModelClosed (A : AdmissibleClass) (S : SurvivalModel A) : Prop :=
  S.kaplanMeierEstimate ∧ bridgeClosed A ∧ gateClosed A

theorem survival_model_closed (A : AdmissibleClass) (S : SurvivalModel A) :
    SurvivalModelClosed A S := by
  exact And.intro S.estimateComputed (And.intro S.bridgeClosedFromSurvival S.gateClosedFromSurvival)

end ClinicalMedicineQualityImprovementCanonicalLaneLean
end HautevilleHouse
