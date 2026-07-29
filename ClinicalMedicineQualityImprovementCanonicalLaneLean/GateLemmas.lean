import ClinicalMedicineQualityImprovementCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ClinicalMedicineQualityImprovementCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ClinicalMedicineQualityImprovementCanonicalLaneLean
end HautevilleHouse
