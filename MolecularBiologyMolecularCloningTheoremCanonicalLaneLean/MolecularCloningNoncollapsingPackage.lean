import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure MolecularCloningNoncollapsingPackage where
  replicationOriginStability : Prop
  plasmidCopyNumberRegulation : Prop
  restrictionEnzymeCompatibility : Prop

structure MolecularCloningNoncollapsingEvidence (N : MolecularCloningNoncollapsingPackage) where
  replicationOriginStabilityClosed : N.replicationOriginStability
  plasmidCopyNumberRegulationClosed : N.plasmidCopyNumberRegulation
  restrictionEnzymeCompatibilityClosed : N.restrictionEnzymeCompatibility

def MolecularCloningNoncollapsingClosed (N : MolecularCloningNoncollapsingPackage) : Prop :=
  N.replicationOriginStability ∧ N.plasmidCopyNumberRegulation ∧ N.restrictionEnzymeCompatibility

theorem molecular_cloning_noncollapsing_closed_from_evidence
    (N : MolecularCloningNoncollapsingPackage)
    (E : MolecularCloningNoncollapsingEvidence N) :
    MolecularCloningNoncollapsingClosed N := by
  exact And.intro E.replicationOriginStabilityClosed
    (And.intro E.plasmidCopyNumberRegulationClosed E.restrictionEnzymeCompatibilityClosed)

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse