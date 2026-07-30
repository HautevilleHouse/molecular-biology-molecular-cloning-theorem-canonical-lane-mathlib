import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure MolecularCloningSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MolecularCloningAdmittedObject where
  space : MolecularCloningSpace
  dnaSequence : String
  plasmidConstructed : Prop
  hostOrganism : String
  cloningSuccess : Prop

structure MolecularCloningEndgameState where
  object : MolecularCloningAdmittedObject

def MolecularCloningWitnessClosed (O : MolecularCloningAdmittedObject) : Prop :=
  O.cloningSuccess

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse