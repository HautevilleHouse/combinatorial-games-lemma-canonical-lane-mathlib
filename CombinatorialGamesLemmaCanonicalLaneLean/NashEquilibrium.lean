import HautevilleHouse.CombinatorialGamesLemmaCanonicalLaneLean.GameBridgeLemmas

namespace HautevilleHouse
namespace CombinatorialGamesLemmaCanonicalLaneLean

structure NashEquilibriumPackage where
  playerSet : Type
  strategyProfiles : Type
  payoffFunctions : Type
  nashEquilibriumDefined : Prop
  existenceTheorem : Prop
  mixedStrategiesAllowed : Prop

structure NashEquilibriumEvidence (N : NashEquilibriumPackage) where
  nashEquilibriumDefinedClosed : N.nashEquilibriumDefined
  existenceTheoremClosed : N.existenceTheorem
  mixedStrategiesAllowedClosed : N.mixedStrategiesAllowed

def NashEquilibriumClosed (N : NashEquilibriumPackage) : Prop :=
  N.nashEquilibriumDefined ∧ N.existenceTheorem ∧ N.mixedStrategiesAllowed

theorem nash_equilibrium_closed_from_evidence
    (N : NashEquilibriumPackage) (E : NashEquilibriumEvidence N) :
    NashEquilibriumClosed N := by
  exact And.intro E.nashEquilibriumDefinedClosed
    (And.intro E.existenceTheoremClosed E.mixedStrategiesAllowedClosed)

end CombinatorialGamesLemmaCanonicalLaneLean
end HautevilleHouse