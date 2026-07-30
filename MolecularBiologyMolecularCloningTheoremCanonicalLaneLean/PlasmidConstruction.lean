import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure PlasmidConstruction where
  vector : Type
  insert : Type
  ligationEfficiency : ℝ
  transformationEfficiency : ℝ
  selectionMarker : Prop
  ligationEfficiencyClosed : ligationEfficiency ≥ 0
  transformationEfficiencyClosed : transformationEfficiency ≥ 0
  selectionMarkerClosed : selectionMarker

def PlasmidConstructionClosed (P : PlasmidConstruction) : Prop :=
  P.ligationEfficiency ≥ 0 ∧ P.transformationEfficiency ≥ 0 ∧ P.selectionMarker

theorem plasmid_construction_closed_from_evidence (P : PlasmidConstruction) :
    PlasmidConstructionClosed P := by
  exact And.intro P.ligationEfficiencyClosed (And.intro P.transformationEfficiencyClosed P.selectionMarkerClosed)

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse