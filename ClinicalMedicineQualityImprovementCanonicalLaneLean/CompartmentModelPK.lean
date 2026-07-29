import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineQualityImprovementCanonicalLaneLean

structure CompartmentModelPKPackage where
  compartments : Nat
  rateMatrix : Type
  initialConcentration : Type
  drugDosing : Prop
  eliminationRate : Prop

def CompartmentModelPKClosed (P : CompartmentModelPKPackage) : Prop :=
  P.drugDosing ∧ P.eliminationRate

theorem compartment_model_pk_closed (P : CompartmentModelPKPackage) : CompartmentModelPKClosed P := by
  exact And.intro P.drugDosing P.eliminationRate

end ClinicalMedicineQualityImprovementCanonicalLaneLean
end HautevilleHouse