import ClinicalMedicineQualityImprovementCanonicalLaneLean.ClinicalMedicineAdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineQualityImprovementCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.outcome

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClinicalMedicineQualityImprovementCanonicalLaneLean
end HautevilleHouse
