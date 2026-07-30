import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyMolecularCloningTheoremCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.MolecularBiologyMolecularCloningTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

def ConstrainedMolecularCloningClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_molecular_cloning_endgame (A : AdmissibleClass) :
    ConstrainedMolecularCloningClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse