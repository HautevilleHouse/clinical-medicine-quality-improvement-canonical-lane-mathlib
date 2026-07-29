import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineQualityImprovementCanonicalLaneLean

structure PharmacokineticCompartment where
  compartmentCount : ℕ
  volumeDistribution : Prop
  eliminationRate : Prop
  absorptionRate : Prop
  clearance : Prop
  halfLife : Prop

structure PharmacokineticEvidence (P : PharmacokineticCompartment) where
  volumeDistributionClosed : P.volumeDistribution
  eliminationRateClosed : P.eliminationRate
  absorptionRateClosed : P.absorptionRate
  clearanceClosed : P.clearance
  halfLifeClosed : P.halfLife

def PharmacokineticClosed (P : PharmacokineticCompartment) : Prop :=
  P.volumeDistribution ∧ P.eliminationRate ∧ P.absorptionRate ∧
  P.clearance ∧ P.halfLife

theorem pharmacokinetic_closed_from_evidence (P : PharmacokineticCompartment)
    (E : PharmacokineticEvidence P) : PharmacokineticClosed P := by
  exact And.intro E.volumeDistributionClosed
    (And.intro E.eliminationRateClosed
      (And.intro E.absorptionRateClosed
        (And.intro E.clearanceClosed E.halfLifeClosed)))

end ClinicalMedicineQualityImprovementCanonicalLaneLean
end HautevilleHouse