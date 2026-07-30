import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillTheoremCanonicalLaneLean

structure DeterminismPackage where
  pastState : Prop
  lawsOfNature : Prop
  futureDetermined : Prop
  noAlternativePossibilities : Prop

structure DeterminismEvidence (D : DeterminismPackage) where
  pastStateClosed : D.pastState
  lawsOfNatureClosed : D.lawsOfNature
  futureDeterminedClosed : D.futureDetermined
  noAlternativePossibilitiesClosed : D.noAlternativePossibilities

def DeterminismClosed (D : DeterminismPackage) : Prop :=
  D.pastState ∧ D.lawsOfNature ∧ D.futureDetermined ∧ D.noAlternativePossibilities

theorem determinism_closed_from_evidence (D : DeterminismPackage) (E : DeterminismEvidence D) :
    DeterminismClosed D := by
  exact And.intro E.pastStateClosed (And.intro E.lawsOfNatureClosed (And.intro E.futureDeterminedClosed E.noAlternativePossibilitiesClosed))

end MetaphysicsFreeWillTheoremCanonicalLaneLean
end HautevilleHouse