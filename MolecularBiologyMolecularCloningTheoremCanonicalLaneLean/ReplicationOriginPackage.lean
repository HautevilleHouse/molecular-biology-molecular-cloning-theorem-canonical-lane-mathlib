import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure ReplicationOriginPackage where
  originSequence : String
  initiatorBinding : Prop
  unwindingEfficiency : Prop
  bidirectionalReplication : Prop
  originRecognitionComplex : Prop
  initiatorBindingTerm : initiatorBinding
  unwindingEfficiencyTerm : unwindingEfficiency
  bidirectionalReplicationTerm : bidirectionalReplication
  originRecognitionComplexTerm : originRecognitionComplex

structure ReplicationOriginEvidence (R : ReplicationOriginPackage) where
  initiatorBindingClosed : R.initiatorBinding
  unwindingEfficiencyClosed : R.unwindingEfficiency
  bidirectionalReplicationClosed : R.bidirectionalReplication
  originRecognitionComplexClosed : R.originRecognitionComplex

def ReplicationOriginClosed (R : ReplicationOriginPackage) : Prop :=
  R.initiatorBinding ∧ R.unwindingEfficiency ∧ R.bidirectionalReplication ∧ R.originRecognitionComplex

theorem replication_origin_closed_from_evidence (R : ReplicationOriginPackage) (E : ReplicationOriginEvidence R) :
    ReplicationOriginClosed R := by
  exact And.intro E.initiatorBindingClosed
    (And.intro E.unwindingEfficiencyClosed
      (And.intro E.bidirectionalReplicationClosed E.originRecognitionComplexClosed))

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse