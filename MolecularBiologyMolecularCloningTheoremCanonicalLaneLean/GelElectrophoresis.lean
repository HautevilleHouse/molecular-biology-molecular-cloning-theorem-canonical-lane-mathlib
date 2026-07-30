import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure GelElectrophoresis where
  gelMatrix : Type
  ladder : List ℝ
  fragmentSize : ℕ → ℝ
  resolution : ℝ
  detectionLimit : ℝ
  resolutionClosed : resolution ≥ 1
  detectionLimitClosed : detectionLimit ≤ 0.1

def GelElectrophoresisClosed (G : GelElectrophoresis) : Prop :=
  G.resolution ≥ 1 ∧ G.detectionLimit ≤ 0.1

theorem gel_electrophoresis_closed_from_evidence (G : GelElectrophoresis) :
    GelElectrophoresisClosed G := by
  exact And.intro G.resolutionClosed G.detectionLimitClosed

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse