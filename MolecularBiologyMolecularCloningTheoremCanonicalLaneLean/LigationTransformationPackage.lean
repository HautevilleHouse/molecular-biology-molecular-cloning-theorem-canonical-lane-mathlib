import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure LigationTransformationPackage where
  dnaLigation : Prop
  competentCellPreparation : Prop
  transformationEfficiency : Prop
  selectionProtocol : Prop
  dnaLigationTerm : dnaLigation
  competentCellPreparationTerm : competentCellPreparation
  transformationEfficiencyTerm : transformationEfficiency
  selectionProtocolTerm : selectionProtocol

structure LigationTransformationEvidence (L : LigationTransformationPackage) where
  dnaLigationClosed : L.dnaLigation
  competentCellPreparationClosed : L.competentCellPreparation
  transformationEfficiencyClosed : L.transformationEfficiency
  selectionProtocolClosed : L.selectionProtocol

def LigationTransformationClosed (L : LigationTransformationPackage) : Prop :=
  L.dnaLigation ∧ L.competentCellPreparation ∧ L.transformationEfficiency ∧ L.selectionProtocol

theorem ligation_transformation_closed_from_evidence (L : LigationTransformationPackage) (E : LigationTransformationEvidence L) :
    LigationTransformationClosed L := by
  exact And.intro E.dnaLigationClosed
    (And.intro E.competentCellPreparationClosed
      (And.intro E.transformationEfficiencyClosed E.selectionProtocolClosed))

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse