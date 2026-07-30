import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyMolecularCloningTheoremCanonicalLaneLean

structure Ligation where
  insertDna : Prop
  vectorDna : Prop
  ligaseEnzyme : Prop
  atpPresent : Prop
  temperatureOptimal : Prop

structure LigationEvidence (L : Ligation) where
  insertDnaClosed : L.insertDna
  vectorDnaClosed : L.vectorDna
  ligaseEnzymeClosed : L.ligaseEnzyme
  atpPresentClosed : L.atpPresent
  temperatureOptimalClosed : L.temperatureOptimal

def LigationClosed (L : Ligation) : Prop :=
  L.insertDna ∧ L.vectorDna ∧ L.ligaseEnzyme ∧ L.atpPresent ∧ L.temperatureOptimal

theorem ligation_closed_from_evidence (L : Ligation) (E : LigationEvidence L) :
    LigationClosed L := by
  exact And.intro E.insertDnaClosed
    (And.intro E.vectorDnaClosed
      (And.intro E.ligaseEnzymeClosed
        (And.intro E.atpPresentClosed E.temperatureOptimalClosed)))

end MolecularBiologyMolecularCloningTheoremCanonicalLaneLean
end HautevilleHouse