import HautevilleHouse.CombinatorialGamesLemmaCanonicalLaneLean.GameGateLemmas

namespace HautevilleHouse
namespace CombinatorialGamesLemmaCanonicalLaneLean

def ConstrainedGameClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_game_endgame (A : AdmissibleClass) :
    ConstrainedGameClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialGamesLemmaCanonicalLaneLean
end HautevilleHouse