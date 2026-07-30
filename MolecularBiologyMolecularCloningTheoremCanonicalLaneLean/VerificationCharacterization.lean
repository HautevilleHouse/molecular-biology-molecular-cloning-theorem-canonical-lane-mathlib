import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyMolecularCloningTheoremCanonicalLaneLean.TransformationSelection

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure VerificationCharacterizationPackage {P : PlasmidVectorMap} {R : RestrictionEnzymeDigestPackage P}
    {L : LigationAssemblyPackage P R} {T : TransformationSelectionPackage L} where
  colonyPcr : Prop
  restrictionDigestAnalysis : Prop
  sequencingConfirmation : Prop
  insertOrientationVerified : Prop

structure VerificationCharacterizationEvidence {P : PlasmidVectorMap} {R : RestrictionEnzymeDigestPackage P}
    {L : LigationAssemblyPackage P R} {T : TransformationSelectionPackage L}
    (V : VerificationCharacterizationPackage T) where
  colonyPcrClosed : V.colonyPcr
  restrictionDigestAnalysisClosed : V.restrictionDigestAnalysis
  sequencingConfirmationClosed : V.sequencingConfirmation
  insertOrientationVerifiedClosed : V.insertOrientationVerified

def VerificationCharacterizationClosed {P : PlasmidVectorMap} {R : RestrictionEnzymeDigestPackage P}
    {L : LigationAssemblyPackage P R} {T : TransformationSelectionPackage L}
    (V : VerificationCharacterizationPackage T) : Prop :=
  V.colonyPcr ∧ V.restrictionDigestAnalysis ∧ V.sequencingConfirmation ∧ V.insertOrientationVerified

theorem verification_characterization_closed_from_evidence
    {P : PlasmidVectorMap} {R : RestrictionEnzymeDigestPackage P} {L : LigationAssemblyPackage P R}
    {T : TransformationSelectionPackage L} (V : VerificationCharacterizationPackage T)
    (E : VerificationCharacterizationEvidence V) : VerificationCharacterizationClosed V := by
  exact And.intro E.colonyPcrClosed
    (And.intro E.restrictionDigestAnalysisClosed
      (And.intro E.sequencingConfirmationClosed E.insertOrientationVerifiedClosed))

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse