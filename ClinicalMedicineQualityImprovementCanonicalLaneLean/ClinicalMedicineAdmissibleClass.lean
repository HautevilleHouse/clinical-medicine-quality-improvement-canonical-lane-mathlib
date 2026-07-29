import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineQualityImprovementCanonicalLaneLean

structure ClinicalAdmittedObject where
  patientPopulation : Type
  intervention : Type
  outcome : Prop
  studyDesign : Prop
  conclusion : outcome

structure AdmissibleClass where
  object : ClinicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.outcome) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClinicalMedicineQualityImprovementCanonicalLaneLean
end HautevilleHouse
