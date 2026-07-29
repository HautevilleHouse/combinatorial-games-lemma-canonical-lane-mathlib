import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGamesLemmaCanonicalLaneLean

structure PotentialGamePackage where
  players : Nat
  strategyProfiles : Type u
  payoffFunctions : Type v
  potentialFunction : Type w
  existencePotential : Prop
  convergenceToEquilibrium : Prop

structure PotentialGameEvidence (P : PotentialGamePackage) where
  existencePotentialClosed : P.existencePotential
  convergenceToEquilibriumClosed : P.convergenceToEquilibrium

def PotentialGameClosed (P : PotentialGamePackage) : Prop :=
  P.existencePotential ∧ P.convergenceToEquilibrium

theorem potential_game_closed_from_evidence (P : PotentialGamePackage)
    (E : PotentialGameEvidence P) : PotentialGameClosed P := by
  exact And.intro E.existencePotentialClosed E.convergenceToEquilibriumClosed

end CombinatorialGamesLemmaCanonicalLaneLean
end HautevilleHouse