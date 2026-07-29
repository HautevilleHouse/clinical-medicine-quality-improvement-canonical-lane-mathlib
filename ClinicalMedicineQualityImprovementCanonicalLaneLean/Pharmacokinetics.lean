import ClinicalMedicineQualityImprovementCanonicalLaneLean.ClinicalMedicineAdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineQualityImprovementCanonicalLaneLean

structure PharmacokineticModel (A : AdmissibleClass) where
  drugConcentration : Type
  absorptionRate : Prop
  distributionVolume : Prop
  eliminationRate : Prop
  auc : Prop
  aucComputed : auc
  bridgeClosedFromPK : bridgeClosed A
  gateClosedFromPK : gateClosed A

def PharmacokineticModelClosed (A : AdmissibleClass) (P : PharmacokineticModel A) : Prop :=
  P.auc ∧ bridgeClosed A ∧ gateClosed A

theorem pharmacokinetic_model_closed (A : AdmissibleClass) (P : PharmacokineticModel A) :
    PharmacokineticModelClosed A P := by
  exact And.intro P.aucComputed (And.intro P.bridgeClosedFromPK P.gateClosedFromPK)

end ClinicalMedicineQualityImprovementCanonicalLaneLean
end HautevilleHouse
