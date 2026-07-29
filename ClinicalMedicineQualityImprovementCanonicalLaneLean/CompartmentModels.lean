import ClinicalMedicineQualityImprovementCanonicalLaneLean.ClinicalMedicineAdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineQualityImprovementCanonicalLaneLean

structure CompartmentModel (A : AdmissibleClass) where
  compartments : Type
  flowRates : Type
  initialConditions : Prop
  differentialEquations : Prop
  solution : Prop
  solutionClosed : solution
  bridgeClosedFromModel : bridgeClosed A
  gateClosedFromModel : gateClosed A

def CompartmentModelClosed (A : AdmissibleClass) (M : CompartmentModel A) : Prop :=
  M.solution ∧ bridgeClosed A ∧ gateClosed A

theorem compartment_model_closed (A : AdmissibleClass) (M : CompartmentModel A) :
    CompartmentModelClosed A M := by
  exact And.intro M.solutionClosed (And.intro M.bridgeClosedFromModel M.gateClosedFromModel)

end ClinicalMedicineQualityImprovementCanonicalLaneLean
end HautevilleHouse
