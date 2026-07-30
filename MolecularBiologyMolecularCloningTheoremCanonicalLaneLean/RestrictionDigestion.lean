import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure RestrictionDigestion where
  dnaSequence : Type
  restrictionEnzyme : Type
  recognitionSite : String
  cuttingEfficiency : ℝ
  starActivity : Prop
  bufferCondition : String
  cuttingEfficiencyClosed : cuttingEfficiency ≥ 0.5
  starActivityClosed : ¬ starActivity

def RestrictionDigestionClosed (R : RestrictionDigestion) : Prop :=
  R.cuttingEfficiency ≥ 0.5 ∧ ¬ R.starActivity

theorem restriction_digestion_closed_from_evidence (R : RestrictionDigestion) :
    RestrictionDigestionClosed R := by
  exact And.intro R.cuttingEfficiencyClosed R.starActivityClosed

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse