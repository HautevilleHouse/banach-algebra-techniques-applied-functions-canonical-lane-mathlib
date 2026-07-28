import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean

structure BanachAlgebra where
  carrier : Type u
  norm : carrier → ℝ
  normedRing : NormedRing carrier
  complete : CompleteSpace carrier
  involution : carrier → carrier
  starRing : StarRing carrier
  cstarCondition : ∀ x : carrier, ‖x⋆ * x‖ = ‖x‖^2

structure BanachAlgebraEvidence (A : BanachAlgebra) where
  normedRingClosed : NormedRing A.carrier
  completeClosed : CompleteSpace A.carrier
  starRingClosed : StarRing A.carrier
  cstarConditionClosed : ∀ x : A.carrier, ‖x⋆ * x‖ = ‖x‖^2

def BanachAlgebraClosed (A : BanachAlgebra) : Prop :=
  A.carrier.normedRing ∧ A.carrier.complete ∧ A.carrier.starRing ∧ A.carrier.cstarCondition

theorem banach_algebra_closed_from_evidence (A : BanachAlgebra) (E : BanachAlgebraEvidence A) :
    BanachAlgebraClosed A := by
  exact And.intro E.normedRingClosed (And.intro E.completeClosed (And.intro E.starRingClosed E.cstarConditionClosed))

end BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean
end HautevilleHouse