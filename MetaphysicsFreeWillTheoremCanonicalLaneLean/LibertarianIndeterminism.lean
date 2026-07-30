import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsFreeWillTheoremCanonicalLaneLean

structure LibertarianIndeterminismPackage where
  indeterministicSource : Prop
  agentCausation : Prop
  nonDeterministicChoice : Prop
  indeterministicSourceClosed : indeterministicSource
  agentCausationClosed : agentCausation
  nonDeterministicChoiceClosed : nonDeterministicChoice

structure LibertarianIndeterminismEvidence (L : LibertarianIndeterminismPackage) where
  indeterministicSourceClosed : L.indeterministicSource
  agentCausationClosed : L.agentCausation
  nonDeterministicChoiceClosed : L.nonDeterministicChoice

def LibertarianIndeterminismClosed (L : LibertarianIndeterminismPackage) : Prop :=
  L.indeterministicSource ∧ L.agentCausation ∧ L.nonDeterministicChoice

theorem libertarian_indeterminism_closed_from_evidence
    (L : LibertarianIndeterminismPackage) (E : LibertarianIndeterminismEvidence L) :
    LibertarianIndeterminismClosed L := by
  exact And.intro E.indeterministicSourceClosed
    (And.intro E.agentCausationClosed E.nonDeterministicChoiceClosed)

end MetaphysicsFreeWillTheoremCanonicalLaneLean
end HautevilleHouse
