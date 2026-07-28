import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean

structure BanachAlgebraObject where
  carrier : Type u
  norm : carrier → ℝ
  mul : carrier → carrier → carrier
  one : carrier
  normedRing : NormedRing carrier
  complete : MetricSpace carrier
  norm_mul : ∀ x y : carrier, norm (mul x y) ≤ norm x * norm y
  norm_one : norm one = 1
  conclusion : True

structure BanachAlgebraSpace (A : BanachAlgebraObject) where
  carrier : Type u
  norm : carrier → ℝ
  module : Module ℂ carrier
  isBanachSpace : Prop
  normedSpace : NormedSpace ℂ carrier
  complete : Prop

def BanachAlgebraWitnessClosed (O : BanachAlgebraObject) : Prop :=
  True

end BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean
end HautevilleHouse