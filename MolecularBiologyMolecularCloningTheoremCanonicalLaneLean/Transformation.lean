import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure Transformation where
  competentCells : Prop
  heatShock : Prop
  recoveryMedium : Prop
  selectivePlates : Prop

structure TransformationEvidence (T : Transformation) where
  competentCellsClosed : T.competentCells
  heatShockClosed : T.heatShock
  recoveryMediumClosed : T.recoveryMedium
  selectivePlatesClosed : T.selectivePlates

def TransformationClosed (T : Transformation) : Prop :=
  T.competentCells ∧ T.heatShock ∧ T.recoveryMedium ∧ T.selectivePlates

theorem transformation_closed_from_evidence (T : Transformation) (E : TransformationEvidence T) :
    TransformationClosed T := by
  exact And.intro E.competentCellsClosed
    (And.intro E.heatShockClosed
      (And.intro E.recoveryMediumClosed E.selectivePlatesClosed))

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse