import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGamesLemmaCanonicalLaneLean

structure CooperativeGamePackage where
  playerSet : Type u
  characteristicFunction : Type v
  imputationSet : Type w
  coreNonempty : Prop
  shapleyValueDefined : Prop
  balancednessCondition : Prop

structure CooperativeGameEvidence (C : CooperativeGamePackage) where
  coreNonemptyClosed : C.coreNonempty
  shapleyValueDefinedClosed : C.shapleyValueDefined
  balancednessConditionClosed : C.balancednessCondition

def CooperativeGameClosed (C : CooperativeGamePackage) : Prop :=
  C.coreNonempty ∧ C.shapleyValueDefined ∧ C.balancednessCondition

theorem cooperative_game_closed_from_evidence (C : CooperativeGamePackage) (E : CooperativeGameEvidence C) :
    CooperativeGameClosed C := by
  exact And.intro E.coreNonemptyClosed (And.intro E.shapleyValueDefinedClosed E.balancednessConditionClosed)

end CombinatorialGamesLemmaCanonicalLaneLean
end HautevilleHouse