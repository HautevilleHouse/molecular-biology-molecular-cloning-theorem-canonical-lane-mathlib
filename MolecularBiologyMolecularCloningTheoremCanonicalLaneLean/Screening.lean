import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure Screening where
  colonyPcr : Prop
  restrictionDigest : Prop
  sequencing : Prop
  expressionAssay : Prop

structure ScreeningEvidence (S : Screening) where
  colonyPcrClosed : S.colonyPcr
  restrictionDigestClosed : S.restrictionDigest
  sequencingClosed : S.sequencing
  expressionAssayClosed : S.expressionAssay

def ScreeningClosed (S : Screening) : Prop :=
  S.colonyPcr ∧ S.restrictionDigest ∧ S.sequencing ∧ S.expressionAssay

theorem screening_closed_from_evidence (S : Screening) (E : ScreeningEvidence S) :
    ScreeningClosed S := by
  exact And.intro E.colonyPcrClosed
    (And.intro E.restrictionDigestClosed
      (And.intro E.sequencingClosed E.expressionAssayClosed))

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse