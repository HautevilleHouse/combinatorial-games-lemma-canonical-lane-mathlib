import HautevilleHouse.CombinatorialGamesLemmaCanonicalLaneLean.NashEquilibrium

namespace HautevilleHouse
namespace CombinatorialGamesLemmaCanonicalLaneLean

structure MinimaxTheoremPackage where
  zeroSumGame : Type
  valueOfGame : Prop
  optimalStrategies : Prop
  minimaxEquality : Prop

structure MinimaxTheoremEvidence (M : MinimaxTheoremPackage) where
  valueOfGameClosed : M.valueOfGame
  optimalStrategiesClosed : M.optimalStrategies
  minimaxEqualityClosed : M.minimaxEquality

def MinimaxTheoremClosed (M : MinimaxTheoremPackage) : Prop :=
  M.valueOfGame ∧ M.optimalStrategies ∧ M.minimaxEquality

theorem minimax_theorem_closed_from_evidence
    (M : MinimaxTheoremPackage) (E : MinimaxTheoremEvidence M) :
    MinimaxTheoremClosed M := by
  exact And.intro E.valueOfGameClosed
    (And.intro E.optimalStrategiesClosed E.minimaxEqualityClosed)

end CombinatorialGamesLemmaCanonicalLaneLean
end HautevilleHouse