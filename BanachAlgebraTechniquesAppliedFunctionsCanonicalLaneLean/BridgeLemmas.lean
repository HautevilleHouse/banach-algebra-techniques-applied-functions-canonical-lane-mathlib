import BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BanachAlgebraWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean
end HautevilleHouse