import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure CloningVector where
  originOfReplication : Prop
  selectableMarker : Prop
  multipleCloningSite : Prop
  copyNumber : Nat

structure CloningVectorEvidence (V : CloningVector) where
  originOfReplicationClosed : V.originOfReplication
  selectableMarkerClosed : V.selectableMarker
  multipleCloningSiteClosed : V.multipleCloningSite
  copyNumberClosed : V.copyNumber > 0

def CloningVectorClosed (V : CloningVector) : Prop :=
  V.originOfReplication ∧ V.selectableMarker ∧ V.multipleCloningSite ∧ V.copyNumber > 0

theorem cloning_vector_closed_from_evidence (V : CloningVector) (E : CloningVectorEvidence V) :
    CloningVectorClosed V := by
  exact And.intro E.originOfReplicationClosed
    (And.intro E.selectableMarkerClosed
      (And.intro E.multipleCloningSiteClosed E.copyNumberClosed))

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse