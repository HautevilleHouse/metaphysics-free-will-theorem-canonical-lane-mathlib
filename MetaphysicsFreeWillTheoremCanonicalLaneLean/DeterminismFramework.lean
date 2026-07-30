import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillTheoremCanonicalLaneLean

structure DeterminismFramework where
  stateTransitionSystem : Prop
  initialConditions : Prop
  deterministicEvolution : Prop
  outcomeSpace : Prop
  counterfactualStability : Prop

structure DeterminismEvidence (D : DeterminismFramework) where
  stateTransitionSystemClosed : D.stateTransitionSystem
  initialConditionsClosed : D.initialConditions
  deterministicEvolutionClosed : D.deterministicEvolution
  outcomeSpaceClosed : D.outcomeSpace
  counterfactualStabilityClosed : D.counterfactualStability

def DeterminismClosed (D : DeterminismFramework) : Prop :=
  D.stateTransitionSystem ∧ D.initialConditions ∧ D.deterministicEvolution ∧ D.outcomeSpace ∧ D.counterfactualStability

theorem determinism_closed_from_evidence (D : DeterminismFramework) (E : DeterminismEvidence D) : DeterminismClosed D := by
  exact And.intro E.stateTransitionSystemClosed
    (And.intro E.initialConditionsClosed
      (And.intro E.deterministicEvolutionClosed
        (And.intro E.outcomeSpaceClosed E.counterfactualStabilityClosed)))

end MetaphysicsFreeWillTheoremCanonicalLaneLean
end HautevilleHouse
