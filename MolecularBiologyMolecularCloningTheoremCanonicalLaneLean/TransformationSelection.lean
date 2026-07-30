import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyMolecularCloningTheoremCanonicalLaneLean.LigationAssembly

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure TransformationSelectionPackage {P : PlasmidVectorMap} {R : RestrictionEnzymeDigestPackage P}
    (L : LigationAssemblyPackage P R) where
  competentCellPreparation : Prop
  heatShockOrElectroporation : Prop
  antibioticSelection : Prop
  colonyScreening : Prop

structure TransformationSelectionEvidence {P : PlasmidVectorMap} {R : RestrictionEnzymeDigestPackage P}
    {L : LigationAssemblyPackage P R} (T : TransformationSelectionPackage L) where
  competentCellPreparationClosed : T.competentCellPreparation
  heatShockOrElectroporationClosed : T.heatShockOrElectroporation
  antibioticSelectionClosed : T.antibioticSelection
  colonyScreeningClosed : T.colonyScreening

def TransformationSelectionClosed {P : PlasmidVectorMap} {R : RestrictionEnzymeDigestPackage P}
    {L : LigationAssemblyPackage P R} (T : TransformationSelectionPackage L) : Prop :=
  T.competentCellPreparation ∧ T.heatShockOrElectroporation ∧ T.antibioticSelection ∧ T.colonyScreening

theorem transformation_selection_closed_from_evidence
    {P : PlasmidVectorMap} {R : RestrictionEnzymeDigestPackage P} {L : LigationAssemblyPackage P R}
    (T : TransformationSelectionPackage L) (E : TransformationSelectionEvidence T) :
    TransformationSelectionClosed T := by
  exact And.intro E.competentCellPreparationClosed
    (And.intro E.heatShockOrElectroporationClosed
      (And.intro E.antibioticSelectionClosed E.colonyScreeningClosed))

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse