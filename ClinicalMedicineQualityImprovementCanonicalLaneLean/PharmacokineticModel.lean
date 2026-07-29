import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineQualityImprovementCanonicalLaneLean

structure PharmacokineticModelPackage where
  dose : ℝ
  bioavailability : ℝ
  absorptionRate : ℝ
  eliminationRate : ℝ
  concentrationAtTime : ℝ → ℝ

def PharmacokineticModelClosed (P : PharmacokineticModelPackage) : Prop :=
  P.dose > 0 ∧ P.bioavailability > 0 ∧ P.bioavailability ≤ 1 ∧ P.absorptionRate > 0 ∧ P.eliminationRate > 0

end ClinicalMedicineQualityImprovementCanonicalLaneLean
end HautevilleHouse