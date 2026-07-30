import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillTheoremCanonicalLaneLean

structure IncompatibilismLemma where
  incompatibilityProof : Prop
  freeWillRequiresIndeterminism : Prop

theorem incompatibility_from_definition (D : DeterminismPackage) (F : FreeWillPackage D) :
    (DeterminismClosed D) → (FreeWillClosed F) → (F.couldHaveDoneOtherwise → ¬ D.noAlternativePossibilities) := by
  intro hD hF h
  intro hno
  have hc := hF.3
  exact hc hno

end MetaphysicsFreeWillTheoremCanonicalLaneLean
end HautevilleHouse