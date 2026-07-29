import HautevilleHouse.CombinatorialGamesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGamesLemmaCanonicalLaneLean

structure PlayerStrategyPackage where
  strategySet : Type u
  bestResponseFunction : Type v
  nashEquilibriumCondition : Prop
  existenceProof : Prop
  uniquenessProof : Prop

structure PlayerStrategyEvidence (P : PlayerStrategyPackage) where
  nashEquilibriumConditionClosed : P.nashEquilibriumCondition
  existenceProofClosed : P.existenceProof
  uniquenessProofClosed : P.uniquenessProof

def PlayerStrategyClosed (P : PlayerStrategyPackage) : Prop :=
  P.nashEquilibriumCondition ∧ P.existenceProof ∧ P.uniquenessProof

theorem player_strategy_closed_from_evidence (P : PlayerStrategyPackage)
    (E : PlayerStrategyEvidence P) : PlayerStrategyClosed P := by
  exact And.intro E.nashEquilibriumConditionClosed
    (And.intro E.existenceProofClosed E.uniquenessProofClosed)

end HautevilleHouse.CombinatorialGamesLemmaCanonicalLaneLean
end HautevilleHouse