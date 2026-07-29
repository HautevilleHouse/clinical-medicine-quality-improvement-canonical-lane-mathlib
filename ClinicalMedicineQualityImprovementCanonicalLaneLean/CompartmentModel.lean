import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineQualityImprovementCanonicalLaneLean

structure CompartmentModelPackage where
  compartments : Nat
  volumeOfDistribution : ℝ
  eliminationRate : ℝ
  absorptionRate : ℝ
  initialConcentration : ℝ
  timeCourse : ℝ → ℝ

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  compartmentsClosed : C.compartments ≥ 1
  volumeOfDistributionClosed : C.volumeOfDistribution > 0
  eliminationRateClosed : C.eliminationRate > 0
  absorptionRateClosed : C.absorptionRate ≥ 0
  initialConcentrationClosed : C.initialConcentration ≥ 0

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.compartments ≥ 1 ∧ C.volumeOfDistribution > 0 ∧ C.eliminationRate > 0 ∧ C.absorptionRate ≥ 0 ∧ C.initialConcentration ≥ 0

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C := by
  exact And.intro E.compartmentsClosed
    (And.intro E.volumeOfDistributionClosed
      (And.intro E.eliminationRateClosed
        (And.intro E.absorptionRateClosed E.initialConcentrationClosed)))

end ClinicalMedicineQualityImprovementCanonicalLaneLean
end HautevilleHouse