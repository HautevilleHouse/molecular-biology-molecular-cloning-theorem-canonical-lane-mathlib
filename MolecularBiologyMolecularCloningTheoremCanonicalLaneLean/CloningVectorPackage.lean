import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure CloningVectorPackage where
  vectorType : String
  multipleCloningSite : Prop
  selectableMarker : Prop
  replicationOrigin : Prop
  insertCapacity : Prop
  multipleCloningSiteTerm : multipleCloningSite
  selectableMarkerTerm : selectableMarker
  replicationOriginTerm : replicationOrigin
  insertCapacityTerm : insertCapacity

structure CloningVectorEvidence (C : CloningVectorPackage) where
  multipleCloningSiteClosed : C.multipleCloningSite
  selectableMarkerClosed : C.selectableMarker
  replicationOriginClosed : C.replicationOrigin
  insertCapacityClosed : C.insertCapacity

def CloningVectorClosed (C : CloningVectorPackage) : Prop :=
  C.multipleCloningSite ∧ C.selectableMarker ∧ C.replicationOrigin ∧ C.insertCapacity

theorem cloning_vector_closed_from_evidence (C : CloningVectorPackage) (E : CloningVectorEvidence C) :
    CloningVectorClosed C := by
  exact And.intro E.multipleCloningSiteClosed
    (And.intro E.selectableMarkerClosed
      (And.intro E.replicationOriginClosed E.insertCapacityClosed))

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse