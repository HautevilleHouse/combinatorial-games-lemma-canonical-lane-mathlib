import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGamesLemmaCanonicalLaneLean

structure GamePlayers where
  players : Nat

structure StrategyProfiles (P : GamePlayers) where
  profile : Type
  strategies : P.players → Type
  change : (i : P.players) → profile → strategies i → profile

structure PayoffFunctions (P : GamePlayers) (S : StrategyProfiles P) where
  payoff : P.players → S.profile → ℝ

end CombinatorialGamesLemmaCanonicalLaneLean
end HautevilleHouse