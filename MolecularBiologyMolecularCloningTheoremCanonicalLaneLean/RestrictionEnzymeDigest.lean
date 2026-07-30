import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyMolecularCloningTheoremCanonicalLaneLean.PlasmidVectorMap

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure RestrictionEnzymeDigestPackage (P : PlasmidVectorMap) where
  recognitionSequence : Prop
  cleavagePattern : Prop
  stickyEndGeneration : Prop
  compatibleOverhangs : Prop

structure RestrictionEnzymeDigestEvidence (P : PlasmidVectorMap) (R : RestrictionEnzymeDigestPackage P) where
  recognitionSequenceClosed : R.recognitionSequence
  cleavagePatternClosed : R.cleavagePattern
  stickyEndGenerationClosed : R.stickyEndGeneration
  compatibleOverhangsClosed : R.compatibleOverhangs

def RestrictionEnzymeDigestClosed (P : PlasmidVectorMap) (R : RestrictionEnzymeDigestPackage P) : Prop :=
  R.recognitionSequence ∧ R.cleavagePattern ∧ R.stickyEndGeneration ∧ R.compatibleOverhangs

theorem restriction_enzyme_digest_closed_from_evidence
    (P : PlasmidVectorMap) (R : RestrictionEnzymeDigestPackage P) (E : RestrictionEnzymeDigestEvidence P R) :
    RestrictionEnzymeDigestClosed P R := by
  exact And.intro E.recognitionSequenceClosed
    (And.intro E.cleavagePatternClosed
      (And.intro E.stickyEndGenerationClosed E.compatibleOverhangsClosed))

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse