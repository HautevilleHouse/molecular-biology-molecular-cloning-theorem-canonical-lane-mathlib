import HautevilleHouse.MolecularBiologyMolecularCloningTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : CloningAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CloningWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse