import HautevilleHouse.CombinatorialGamesLemmaCanonicalLaneLean.MechanismDesign

namespace HautevilleHouse
namespace CombinatorialGamesLemmaCanonicalLaneLean

structure GameValueDynamicsPackage {P : PlayerStrategyPackage}
    {M : MinimaxTheoremPackage P} {B : BargainingSolutionPackage M}
    {D : MechanismDesignPackage B} where
  dynamicProcess : Type u
  evolutionFunction : Type v
  convergenceToEquilibrium : Prop
  stabilityProperty : Prop
  rateOfConvergence : Prop

structure GameValueDynamicsEvidence {P : PlayerStrategyPackage}
    {M : MinimaxTheoremPackage P} {B : BargainingSolutionPackage M}
    {D : MechanismDesignPackage B}
    (G : GameValueDynamicsPackage D) where
  convergenceToEquilibriumClosed : G.convergenceToEquilibrium
  stabilityPropertyClosed : G.stabilityProperty
  rateOfConvergenceClosed : G.rateOfConvergence

def GameValueDynamicsClosed {P : PlayerStrategyPackage}
    {M : MinimaxTheoremPackage P} {B : BargainingSolutionPackage M}
    {D : MechanismDesignPackage B}
    (G : GameValueDynamicsPackage D) : Prop :=
  G.convergenceToEquilibrium ∧ G.stabilityProperty ∧ G.rateOfConvergence

theorem game_value_dynamics_closed_from_evidence {P : PlayerStrategyPackage}
    {M : MinimaxTheoremPackage P} {B : BargainingSolutionPackage M}
    {D : MechanismDesignPackage B}
    (G : GameValueDynamicsPackage D) (E : GameValueDynamicsEvidence G) :
    GameValueDynamicsClosed G := by
  exact And.intro E.convergenceToEquilibriumClosed
    (And.intro E.stabilityPropertyClosed E.rateOfConvergenceClosed)

end HautevilleHouse.CombinatorialGamesLemmaCanonicalLaneLean
end HautevilleHouse