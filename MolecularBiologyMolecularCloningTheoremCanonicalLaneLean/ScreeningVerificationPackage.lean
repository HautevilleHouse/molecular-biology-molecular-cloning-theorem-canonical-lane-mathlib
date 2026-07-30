import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure ScreeningVerificationPackage where
  colonyPcr : Prop
  restrictionDigest : Prop
  sequencingConfirmation : Prop
  expressionAssay : Prop
  colonyPcrTerm : colonyPcr
  restrictionDigestTerm : restrictionDigest
  sequencingConfirmationTerm : sequencingConfirmation
  expressionAssayTerm : expressionAssay

structure ScreeningVerificationEvidence (S : ScreeningVerificationPackage) where
  colonyPcrClosed : S.colonyPcr
  restrictionDigestClosed : S.restrictionDigest
  sequencingConfirmationClosed : S.sequencingConfirmation
  expressionAssayClosed : S.expressionAssay

def ScreeningVerificationClosed (S : ScreeningVerificationPackage) : Prop :=
  S.colonyPcr ∧ S.restrictionDigest ∧ S.sequencingConfirmation ∧ S.expressionAssay

theorem screening_verification_closed_from_evidence (S : ScreeningVerificationPackage) (E : ScreeningVerificationEvidence S) :
    ScreeningVerificationClosed S := by
  exact And.intro E.colonyPcrClosed
    (And.intro E.restrictionDigestClosed
      (And.intro E.sequencingConfirmationClosed E.expressionAssayClosed))

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse