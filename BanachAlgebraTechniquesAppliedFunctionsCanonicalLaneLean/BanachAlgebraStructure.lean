import BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean

structure BanachAlgebraPackage where
  algebra : Type u
  norm : algebra → ℝ
  multiplication : algebra → algebra → algebra
  unit : algebra
  norm_mul : ∀ a b : algebra, norm (multiplication a b) ≤ norm a * norm b
  norm_unit : norm unit = 1
  complete : CompleteSpace algebra
  commutative : Prop
  unital : Prop

structure BanachAlgebraEvidence (B : BanachAlgebraPackage) where
  norm_mul_closed : B.norm_mul
  norm_unit_closed : B.norm_unit
  complete_closed : B.complete
  commutative_closed : B.commutative
  unital_closed : B.unital

def BanachAlgebraClosed (B : BanachAlgebraPackage) : Prop :=
  B.norm_mul ∧ B.norm_unit ∧ B.complete ∧ B.commutative ∧ B.unital

theorem banach_algebra_closed_from_evidence (B : BanachAlgebraPackage) (E : BanachAlgebraEvidence B) :
    BanachAlgebraClosed B := by
  exact And.intro E.norm_mul_closed (
    And.intro E.norm_unit_closed (
      And.intro E.complete_closed (
        And.intro E.commutative_closed E.unital_closed)))

end BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean
end HautevilleHouse