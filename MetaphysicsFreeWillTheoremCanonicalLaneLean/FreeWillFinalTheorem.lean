import canonicalLaneMathlib.AdmissibleClass
import MetaphysicsFreeWillTheoremCanonicalLaneLean.FreeWillClosure

namespace HautevilleHouse
namespace MetaphysicsFreeWillTheoremCanonicalLaneLean

def ConstrainedFreeWillTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_free_will_theorem_endgame (A : AdmissibleClass) :
    ConstrainedFreeWillTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetaphysicsFreeWillTheoremCanonicalLaneLean
end HautevilleHouse