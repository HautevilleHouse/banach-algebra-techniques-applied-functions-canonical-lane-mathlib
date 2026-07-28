import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BanachAlgebraAdmittedObject where
  algebra : Type u
  norm : algebra → ℝ
  multiplication : algebra → algebra → algebra
  unit : algebra
  norm_mul : ∀ a b : algebra, norm (multiplication a b) ≤ norm a * norm b
  norm_unit : norm unit = 1
  complete : CompleteSpace algebra
  conclusion : Prop

structure AdmissibleClass where
  object : BanachAlgebraAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BanachAlgebraWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean
end HautevilleHouse