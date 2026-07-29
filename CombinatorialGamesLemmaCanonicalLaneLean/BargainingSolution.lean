import HautevilleHouse.CombinatorialGamesLemmaCanonicalLaneLean.MinimaxTheorem

namespace HautevilleHouse
namespace CombinatorialGamesLemmaCanonicalLaneLean

structure BargainingSolutionPackage where
  bargainingSet : Type
  threatPoint : ℝ × ℝ
  nashBargainingSolution : Prop
  kalaiSmorodinskySolution : Prop
  solutionExists : Prop

structure BargainingSolutionEvidence (B : BargainingSolutionPackage) where
  nashBargainingSolutionClosed : B.nashBargainingSolution
  kalaiSmorodinskySolutionClosed : B.kalaiSmorodinskySolution
  solutionExistsClosed : B.solutionExists

def BargainingSolutionClosed (B : BargainingSolutionPackage) : Prop :=
  B.nashBargainingSolution ∧ B.kalaiSmorodinskySolution ∧ B.solutionExists

theorem bargaining_solution_closed_from_evidence
    (B : BargainingSolutionPackage) (E : BargainingSolutionEvidence B) :
    BargainingSolutionClosed B := by
  exact And.intro E.nashBargainingSolutionClosed
    (And.intro E.kalaiSmorodinskySolutionClosed E.solutionExistsClosed)

end CombinatorialGamesLemmaCanonicalLaneLean
end HautevilleHouse