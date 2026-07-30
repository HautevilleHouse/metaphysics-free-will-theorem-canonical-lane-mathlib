import MetaphysicsFreeWillTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MetaphysicsFreeWillTheoremCanonicalLaneLean

def ConstrainedFreeWillClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_free_will_endgame (A : AdmissibleClass) :
    ConstrainedFreeWillClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetaphysicsFreeWillTheoremCanonicalLaneLean
end HautevilleHouse
