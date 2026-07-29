import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGamesLemmaCanonicalLaneLean

structure ExtensiveFormGamePackage where
  gameTree : Type u
  informationSets : Type v
  strategies : Type w
  perfectRecall : Prop
  subgamePerfectEquilibrium : Prop
  sequentialRationality : Prop

structure ExtensiveFormGameEvidence (E : ExtensiveFormGamePackage) where
  perfectRecallClosed : E.perfectRecall
  subgamePerfectEquilibriumClosed : E.subgamePerfectEquilibrium
  sequentialRationalityClosed : E.sequentialRationality

def ExtensiveFormGameClosed (E : ExtensiveFormGamePackage) : Prop :=
  E.perfectRecall ∧ E.subgamePerfectEquilibrium ∧ E.sequentialRationality

theorem extensive_form_game_closed_from_evidence (E : ExtensiveFormGamePackage) (Ev : ExtensiveFormGameEvidence E) :
    ExtensiveFormGameClosed E := by
  exact And.intro Ev.perfectRecallClosed (And.intro Ev.subgamePerfectEquilibriumClosed Ev.sequentialRationalityClosed)

end CombinatorialGamesLemmaCanonicalLaneLean
end HautevilleHouse