import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure PCRAmplification where
  template : Type
  primers : List (String × String)
  polymeraseEfficiency : ℝ
  cycleNumber : ℕ
  amplificationFactor : ℝ
  specificity : Prop
  polymeraseEfficiencyClosed : polymeraseEfficiency > 0
  specificityClosed : specificity

def PCRAmplificationClosed (P : PCRAmplification) : Prop :=
  P.polymeraseEfficiency > 0 ∧ P.specificity

theorem pcr_amplification_closed_from_evidence (P : PCRAmplification) :
    PCRAmplificationClosed P := by
  exact And.intro P.polymeraseEfficiencyClosed P.specificityClosed

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse