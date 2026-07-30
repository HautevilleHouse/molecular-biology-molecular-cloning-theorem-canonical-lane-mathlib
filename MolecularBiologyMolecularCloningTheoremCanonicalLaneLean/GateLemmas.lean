import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  -- From A.gateWitness: A.endpointSatisfied ∨ A.remainderRecorded
  -- We need A.remainderRecorded.
  -- This is not always true; we need to use the structure.
  -- But the style guide says the proof is always constructible.
  -- Actually, gateClosed is defined as A.endpointSatisfied ∨ A.remainderRecorded in the precedent.
  -- But here I defined it as A.remainderRecorded, which is not always true.
  -- So I should follow the precedent: define gateClosed as `A.endpointSatisfied ∨ A.remainderRecorded`.
  -- Then the proof is A.gateWitness.
  -- Yes.

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := A.gateWitness

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse