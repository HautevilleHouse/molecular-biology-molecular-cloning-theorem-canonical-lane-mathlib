import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure RestrictionEnzyme where
  recognitionSequence : String
  cutPosition : Nat
  stickyEnd : Bool
  bufferCompatibility : Prop

structure RestrictionEnzymeEvidence (E : RestrictionEnzyme) where
  recognitionSequenceClosed : E.recognitionSequence ≠ ""
  cutPositionClosed : E.cutPosition ≤ E.recognitionSequence.length
  stickyEndClosed : E.stickyEnd ∨ ¬E.stickyEnd
  bufferCompatibilityClosed : E.bufferCompatibility

def RestrictionEnzymeClosed (E : RestrictionEnzyme) : Prop :=
  E.recognitionSequence ≠ "" ∧ E.cutPosition ≤ E.recognitionSequence.length ∧
  (E.stickyEnd ∨ ¬E.stickyEnd) ∧ E.bufferCompatibility

theorem restriction_enzyme_closed_from_evidence (E : RestrictionEnzyme) (Ev : RestrictionEnzymeEvidence E) :
    RestrictionEnzymeClosed E := by
  exact And.intro Ev.recognitionSequenceClosed
    (And.intro Ev.cutPositionClosed
      (And.intro Ev.stickyEndClosed Ev.bufferCompatibilityClosed))

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse