import CombinatorialGamesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGamesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CombinatorialGamesLemmaWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialGamesLemmaCanonicalLaneLean
end HautevilleHouse