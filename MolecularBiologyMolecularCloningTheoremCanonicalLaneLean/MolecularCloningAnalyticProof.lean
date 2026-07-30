import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyMolecularCloningTheoremCanonicalLaneLean.MolecularCloningMolecularCloningRoute

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure RestrictionEnzymeAnalyticCertificate (E : RestrictionEnzymePackage) where
  recognitionSiteSpecificity : Prop
  cleavageEfficiency : Prop
  starActivitySuppressed : Prop
  recognitionSiteSpecificityClosed : recognitionSiteSpecificity
  cleavageEfficiencyClosed : cleavageEfficiency
  starActivitySuppressedClosed : starActivitySuppressed
  restrictionEnzymeEvidence : RestrictionEnzymeEvidence E

def RestrictionEnzymeAnalyticCertificateClosed {E : RestrictionEnzymePackage}
    (C : RestrictionEnzymeAnalyticCertificate E) : Prop :=
  C.recognitionSiteSpecificity ∧ C.cleavageEfficiency ∧ C.starActivitySuppressed ∧ RestrictionEnzymeClosed E

theorem restriction_enzyme_analytic_certificate_closed
    {E : RestrictionEnzymePackage} (C : RestrictionEnzymeAnalyticCertificate E) :
    RestrictionEnzymeAnalyticCertificateClosed C := by
  exact And.intro C.recognitionSiteSpecificityClosed
    (And.intro C.cleavageEfficiencyClosed
      (And.intro C.starActivitySuppressedClosed (restriction_enzyme_closed_from_evidence E C.restrictionEnzymeEvidence)))

structure LigationAnalyticCertificate (L : LigationPackage) where
  insertVectorCompatibility : Prop
  ligationEfficiency : Prop
  selfLigationSuppressed : Prop
  insertVectorCompatibilityClosed : insertVectorCompatibility
  ligationEfficiencyClosed : ligationEfficiency
  selfLigationSuppressedClosed : selfLigationSuppressed
  ligationEvidence : LigationEvidence L

def LigationAnalyticCertificateClosed {L : LigationPackage}
    (C : LigationAnalyticCertificate L) : Prop :=
  C.insertVectorCompatibility ∧ C.ligationEfficiency ∧ C.selfLigationSuppressed ∧ LigationClosed L

theorem ligation_analytic_certificate_closed
    {L : LigationPackage} (C : LigationAnalyticCertificate L) :
    LigationAnalyticCertificateClosed C := by
  exact And.intro C.insertVectorCompatibilityClosed
    (And.intro C.ligationEfficiencyClosed
      (And.intro C.selfLigationSuppressedClosed (ligation_closed_from_evidence L C.ligationEvidence)))

structure TransformationAnalyticCertificate (T : TransformationPackage) where
  competentCellEfficiency : Prop
  heatShockProtocol : Prop
  selectionMarkerFunctional : Prop
  competentCellEfficiencyClosed : competentCellEfficiency
  heatShockProtocolClosed : heatShockProtocol
  selectionMarkerFunctionalClosed : selectionMarkerFunctional
  transformationEvidence : TransformationEvidence T

def TransformationAnalyticCertificateClosed {T : TransformationPackage}
    (C : TransformationAnalyticCertificate T) : Prop :=
  C.competentCellEfficiency ∧ C.heatShockProtocol ∧ C.selectionMarkerFunctional ∧ TransformationClosed T

theorem transformation_analytic_certificate_closed
    {T : TransformationPackage} (C : TransformationAnalyticCertificate T) :
    TransformationAnalyticCertificateClosed C := by
  exact And.intro C.competentCellEfficiencyClosed
    (And.intro C.heatShockProtocolClosed
      (And.intro C.selectionMarkerFunctionalClosed (transformation_closed_from_evidence T C.transformationEvidence)))

structure ScreeningAnalyticCertificate (S : ScreeningPackage) where
  colonyPcrValidation : Prop
  restrictionDigestValidation : Prop
  sequencingConfirmation : Prop
  colonyPcrValidationClosed : colonyPcrValidation
  restrictionDigestValidationClosed : restrictionDigestValidation
  sequencingConfirmationClosed : sequencingConfirmation
  screeningEvidence : ScreeningEvidence S

def ScreeningAnalyticCertificateClosed {S : ScreeningPackage}
    (C : ScreeningAnalyticCertificate S) : Prop :=
  C.colonyPcrValidation ∧ C.restrictionDigestValidation ∧ C.sequencingConfirmation ∧ ScreeningClosed S

theorem screening_analytic_certificate_closed
    {S : ScreeningPackage} (C : ScreeningAnalyticCertificate S) :
    ScreeningAnalyticCertificateClosed C := by
  exact And.intro C.colonyPcrValidationClosed
    (And.intro C.restrictionDigestValidationClosed
      (And.intro C.sequencingConfirmationClosed (screening_closed_from_evidence S C.screeningEvidence)))

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse