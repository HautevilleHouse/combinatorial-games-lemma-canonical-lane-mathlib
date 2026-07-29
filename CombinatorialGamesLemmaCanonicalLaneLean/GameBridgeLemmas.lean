import HautevilleHouse.CombinatorialGamesLemmaCanonicalLaneLean.GameLemmaAdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGamesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GameWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialGamesLemmaCanonicalLaneLean
end HautevilleHouse