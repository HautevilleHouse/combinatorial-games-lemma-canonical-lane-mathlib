import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGamesLemmaCanonicalLaneLean

structure GameAdmittedObject where
  gameSet : Type
  strategySpace : Type
  outcomeFunction : strategySpace → strategySpace → ℝ
  nashEquilibriumExists : Prop
  conclusion : nashEquilibriumExists

structure AdmissibleClass where
  object : GameAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GameWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def GameWitnessClosed (O : GameAdmittedObject) : Prop :=
  O.nashEquilibriumExists

end CombinatorialGamesLemmaCanonicalLaneLean
end HautevilleHouse