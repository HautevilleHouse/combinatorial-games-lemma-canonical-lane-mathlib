import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGamesLemmaCanonicalLaneLean

structure CombinatorialGamesLemmaAdmittedObject where
  playerSet : Type u
  strategySet : Type v
  payoffFunction : (playerSet → strategySet) → ℝ
  nashEquilibriumExists : Prop
  conclusion : nashEquilibriumExists

def CombinatorialGamesLemmaWitnessClosed (O : CombinatorialGamesLemmaAdmittedObject) : Prop :=
  O.nashEquilibriumExists

end CombinatorialGamesLemmaCanonicalLaneLean
end HautevilleHouse