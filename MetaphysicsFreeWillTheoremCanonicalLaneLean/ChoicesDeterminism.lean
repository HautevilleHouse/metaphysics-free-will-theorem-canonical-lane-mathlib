import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillTheoremCanonicalLaneLean

structure DeterministicChoiceAgent where
  initialConditions : Prop
  deterministicLaw : Prop
  outputFunction : outputType
  outputType : Type
  determinismProof : initialConditions ∧ deterministicLaw → outputFunction = determinedValue
  determinedValue : outputType

structure LibertarianChoiceAgent where
  initialConditions : Prop
  indeterministicLaw : Prop
  outputFunction : outputType
  outputType : Type
  alternativePossible : outputFunction ≠ libertarianValue
  libertarianValue : outputType
  freeWillClaim : ¬ (initialConditions ∧ indeterministicLaw → outputFunction = libertarianValue)

def DeterministicClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem determinism_from_closure (A : AdmissibleClass) : DeterministicClosed A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetaphysicsFreeWillTheoremCanonicalLaneLean
end HautevilleHouse