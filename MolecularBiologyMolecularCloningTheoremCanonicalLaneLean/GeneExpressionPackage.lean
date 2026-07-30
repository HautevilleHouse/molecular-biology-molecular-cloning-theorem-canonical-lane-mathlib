import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure GeneExpressionPackage where
  organism : Type
  transcriptome : Type
  expressionLevels : organism → transcriptome → ℝ
  regulatoryNetwork : Prop
  measurementError : ℝ
  regulatoryNetworkClosed : regulatoryNetwork

def GeneExpressionClosed (G : GeneExpressionPackage) : Prop :=
  G.regulatoryNetwork

theorem gene_expression_closed_from_package (G : GeneExpressionPackage) :
    GeneExpressionClosed G := by
  exact G.regulatoryNetworkClosed

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse