import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyMolecularCloningTheoremCanonicalLaneLean.MolecularCloningAnalyticProof

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure RestrictionEnzymeEvidenceTerms {E : RestrictionEnzymePackage}
    (C : RestrictionEnzymeAnalyticCertificate E) where
  recognitionSiteSpecificity : C.recognitionSiteSpecificity
  cleavageEfficiency : C.cleavageEfficiency
  starActivitySuppressed : C.starActivitySuppressed
  evidenceClosed : RestrictionEnzymeClosed E

def RestrictionEnzymeAnalyticCertificate.evidenceTerms
    {E : RestrictionEnzymePackage}
    (C : RestrictionEnzymeAnalyticCertificate E) : RestrictionEnzymeEvidenceTerms C :=
  {
    recognitionSiteSpecificity := C.recognitionSiteSpecificityClosed
    cleavageEfficiency := C.cleavageEfficiencyClosed
    starActivitySuppressed := C.starActivitySuppressedClosed
    evidenceClosed := restriction_enzyme_closed_from_evidence E C.restrictionEnzymeEvidence
  }

structure LigationEvidenceTerms {L : LigationPackage}
    (C : LigationAnalyticCertificate L) where
  insertVectorCompatibility : C.insertVectorCompatibility
  ligationEfficiency : C.ligationEfficiency
  selfLigationSuppressed : C.selfLigationSuppressed
  evidenceClosed : LigationClosed L

def LigationAnalyticCertificate.evidenceTerms
    {L : LigationPackage}
    (C : LigationAnalyticCertificate L) : LigationEvidenceTerms C :=
  {
    insertVectorCompatibility := C.insertVectorCompatibilityClosed
    ligationEfficiency := C.ligationEfficiencyClosed
    selfLigationSuppressed := C.selfLigationSuppressedClosed
    evidenceClosed := ligation_closed_from_evidence L C.ligationEvidence
  }

structure TransformationEvidenceTerms {T : TransformationPackage}
    (C : TransformationAnalyticCertificate T) where
  competentCellEfficiency : C.competentCellEfficiency
  heatShockProtocol : C.heatShockProtocol
  selectionMarkerFunctional : C.selectionMarkerFunctional
  evidenceClosed : TransformationClosed T

def TransformationAnalyticCertificate.evidenceTerms
    {T : TransformationPackage}
    (C : TransformationAnalyticCertificate T) : TransformationEvidenceTerms C :=
  {
    competentCellEfficiency := C.competentCellEfficiencyClosed
    heatShockProtocol := C.heatShockProtocolClosed
    selectionMarkerFunctional := C.selectionMarkerFunctionalClosed
    evidenceClosed := transformation_closed_from_evidence T C.transformationEvidence
  }

structure ScreeningEvidenceTerms {S : ScreeningPackage}
    (C : ScreeningAnalyticCertificate S) where
    colonyPcrValidation : C.colonyPcrValidation
    restrictionDigestValidation : C.restrictionDigestValidation
    sequencingConfirmation : C.sequencingConfirmation
    evidenceClosed : ScreeningClosed S

def ScreeningAnalyticCertificate.evidenceTerms
    {S : ScreeningPackage}
    (C : ScreeningAnalyticCertificate S) : ScreeningEvidenceTerms C :=
  {
    colonyPcrValidation := C.colonyPcrValidationClosed
    restrictionDigestValidation := C.restrictionDigestValidationClosed
    sequencingConfirmation := C.sequencingConfirmationClosed
    evidenceClosed := screening_closed_from_evidence S C.screeningEvidence
  }

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse