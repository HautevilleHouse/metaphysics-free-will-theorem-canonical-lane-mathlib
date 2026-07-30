import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillTheoremCanonicalLaneLean

structure IndeterminismPackage where
  randomProcesses : Prop
  stochasticEvolution : Prop
  multiplePossibleOutcomes : Prop
  freeChoiceManifested : Prop

structure IndeterminismEvidence (I : IndeterminismPackage) where
  randomProcessesClosed : I.randomProcesses
  stochasticEvolutionClosed : I.stochasticEvolution
  multiplePossibleOutcomesClosed : I.multiplePossibleOutcomes
  freeChoiceManifestedClosed : I.freeChoiceManifested

def IndeterminismClosed (I : IndeterminismPackage) : Prop :=
  I.randomProcesses ∧ I.stochasticEvolution ∧ I.multiplePossibleOutcomes ∧ I.freeChoiceManifested

theorem indeterminism_closed_from_evidence (I : IndeterminismPackage) (E : IndeterminismEvidence I) : IndeterminismClosed I := by
  exact And.intro E.randomProcessesClosed (And.intro E.stochasticEvolutionClosed (And.intro E.multiplePossibleOutcomesClosed E.freeChoiceManifestedClosed))

end MetaphysicsFreeWillTheoremCanonicalLaneLean
end HautevilleHouse