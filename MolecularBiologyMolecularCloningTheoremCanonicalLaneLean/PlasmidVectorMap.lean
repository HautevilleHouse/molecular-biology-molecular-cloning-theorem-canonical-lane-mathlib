import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure PlasmidVectorMap where
  originReplication : Prop
  multipleCloningSite : Prop
  selectableMarker : Prop
  insertCompatibility : Prop

structure PlasmidVectorEvidence (P : PlasmidVectorMap) where
  originReplicationClosed : P.originReplication
  multipleCloningSiteClosed : P.multipleCloningSite
  selectableMarkerClosed : P.selectableMarker
  insertCompatibilityClosed : P.insertCompatibility

def PlasmidVectorClosed (P : PlasmidVectorMap) : Prop :=
  P.originReplication ∧ P.multipleCloningSite ∧ P.selectableMarker ∧ P.insertCompatibility

theorem plasmid_vector_closed_from_evidence (P : PlasmidVectorMap) (E : PlasmidVectorEvidence P) :
    PlasmidVectorClosed P := by
  exact And.intro E.originReplicationClosed
    (And.intro E.multipleCloningSiteClosed
      (And.intro E.selectableMarkerClosed E.insertCompatibilityClosed))

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse