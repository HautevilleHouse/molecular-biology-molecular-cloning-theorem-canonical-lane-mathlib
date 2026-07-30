import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyMolecularCloningTheoremCanonicalLaneLean.PlasmidVectorMap
import HautevilleHouse.MolecularBiologyMolecularCloningTheoremCanonicalLaneLean.RestrictionEnzymeDigest

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure LigationAssemblyPackage (P : PlasmidVectorMap) (R : RestrictionEnzymeDigestPackage P) where
  insertVectorMolarRatio : Prop
  ligaseActivity : Prop
  temperatureCycling : Prop
  circularizationEfficiency : Prop

structure LigationAssemblyEvidence (P : PlasmidVectorMap) (R : RestrictionEnzymeDigestPackage P) (L : LigationAssemblyPackage P R) where
  insertVectorMolarRatioClosed : L.insertVectorMolarRatio
  ligaseActivityClosed : L.ligaseActivity
  temperatureCyclingClosed : L.temperatureCycling
  circularizationEfficiencyClosed : L.circularizationEfficiency

def LigationAssemblyClosed (P : PlasmidVectorMap) (R : RestrictionEnzymeDigestPackage P) (L : LigationAssemblyPackage P R) : Prop :=
  L.insertVectorMolarRatio ∧ L.ligaseActivity ∧ L.temperatureCycling ∧ L.circularizationEfficiency

theorem ligation_assembly_closed_from_evidence
    (P : PlasmidVectorMap) (R : RestrictionEnzymeDigestPackage P) (L : LigationAssemblyPackage P R)
    (E : LigationAssemblyEvidence P R L) : LigationAssemblyClosed P R L := by
  exact And.intro E.insertVectorMolarRatioClosed
    (And.intro E.ligaseActivityClosed
      (And.intro E.temperatureCyclingClosed E.circularizationEfficiencyClosed))

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse