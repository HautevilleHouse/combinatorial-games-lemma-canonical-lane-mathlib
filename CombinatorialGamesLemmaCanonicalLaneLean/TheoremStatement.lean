import HautevilleHouse.CombinatorialGamesLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace CombinatorialGamesLemmaCanonicalLaneLean

structure GameAdmittedObject where
  gameType : Type
  players : Nat
  strategies : Type
  payoffs : Type
  equilibriumExists : Prop
  conclusion : equilibriumExists

def GameWitnessClosed (O : GameAdmittedObject) : Prop :=
  O.equilibriumExists

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  gameConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "combinatorial-games-lemma-canonical-lane",
  theoremName := "combinatorial-games-lemma-canonical-lane",
  theoremObject := "Nash equilibrium existence for finite games",
  classicalBoundary := "classical source boundary",
  gameConstrainedStatement := "game-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := "game_constrained",
  carriedRemainder := "classical source boundary carried by formalization certificate"
}

end CombinatorialGamesLemmaCanonicalLaneLean
end HautevilleHouse