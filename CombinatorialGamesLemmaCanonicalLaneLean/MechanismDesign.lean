import HautevilleHouse.CombinatorialGamesLemmaCanonicalLaneLean.BargainingSolution

namespace HautevilleHouse
namespace CombinatorialGamesLemmaCanonicalLaneLean

structure MechanismDesignPackage where
  agentTypes : Type
  allocationRule : Type
  transferRule : Type
  incentiveCompatibility : Prop
  individualRationality : Prop
  revenueEquivalence : Prop

structure MechanismDesignEvidence (M : MechanismDesignPackage) where
  incentiveCompatibilityClosed : M.incentiveCompatibility
  individualRationalityClosed : M.individualRationality
  revenueEquivalenceClosed : M.revenueEquivalence

def MechanismDesignClosed (M : MechanismDesignPackage) : Prop :=
  M.incentiveCompatibility ∧ M.individualRationality ∧ M.revenueEquivalence

theorem mechanism_design_closed_from_evidence
    (M : MechanismDesignPackage) (E : MechanismDesignEvidence M) :
    MechanismDesignClosed M := by
  exact And.intro E.incentiveCompatibilityClosed
    (And.intro E.individualRationalityClosed E.revenueEquivalenceClosed)

end CombinatorialGamesLemmaCanonicalLaneLean
end HautevilleHouse