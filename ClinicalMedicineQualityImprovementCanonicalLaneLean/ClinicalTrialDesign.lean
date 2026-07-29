import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineQualityImprovementCanonicalLaneLean

structure ClinicalTrialDesignPackage where
  randomization : Prop
  blindingMethod : Prop
  sampleSizeCalculation : Prop
  outcomeDefinition : Prop
  statisticalTest : Prop

def ClinicalTrialDesignClosed (C : ClinicalTrialDesignPackage) : Prop :=
  C.randomization ∧ C.blindingMethod ∧ C.sampleSizeCalculation ∧ C.outcomeDefinition ∧ C.statisticalTest

theorem clinical_trial_design_closed (C : ClinicalTrialDesignPackage) : ClinicalTrialDesignClosed C := by
  exact And.intro C.randomization (And.intro C.blindingMethod (And.intro C.sampleSizeCalculation (And.intro C.outcomeDefinition C.statisticalTest)))

end ClinicalMedicineQualityImprovementCanonicalLaneLean
end HautevilleHouse