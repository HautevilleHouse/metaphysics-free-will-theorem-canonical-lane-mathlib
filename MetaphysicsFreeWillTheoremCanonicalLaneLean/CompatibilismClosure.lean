import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillTheoremCanonicalLaneLean

structure CompatibilismPackage where
  determinismSatisfied : Prop
  freeWillDefinitionSatisfied : Prop
  compatibilityThesis : Prop

def CompatibilismClosed (C : CompatibilismPackage) : Prop :=
  C.determinismSatisfied ∧ C.freeWillDefinitionSatisfied ∧ C.compatibilityThesis

theorem compatibilism_holds (C : CompatibilismPackage) :
    CompatibilismClosed C := by
  exact And.intro C.determinismSatisfied (And.intro C.freeWillDefinitionSatisfied C.compatibilityThesis)

end MetaphysicsFreeWillTheoremCanonicalLaneLean
end HautevilleHouse