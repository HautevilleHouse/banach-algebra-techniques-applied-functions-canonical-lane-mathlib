import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean.BanachAlgebraPackage

namespace HautevilleHouse
namespace BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean

structure FunctionBanachAlgebra (X : Type u) [TopologicalSpace X] [CompactSpace X] where
  algebra : BanachAlgebra
  carrierType : Type u := C(X, ℂ)
  pointwiseMultiplication : Prop
  supNorm : ℝ
  supNormMakesBanach : Prop

structure ContinuousFunctionAlgebraEvidence (X : Type u) [TopologicalSpace X] [CompactSpace X] (F : FunctionBanachAlgebra X) where
  pointwiseMultiplicationClosed : F.pointwiseMultiplication
  supNormMakesBanachClosed : F.supNormMakesBanach

def ContinuousFunctionAlgebraClosed (X : Type u) [TopologicalSpace X] [CompactSpace X] (F : FunctionBanachAlgebra X) : Prop :=
  F.pointwiseMultiplication ∧ F.supNormMakesBanach

theorem continuous_function_algebra_closed_from_evidence (X : Type u) [TopologicalSpace X] [CompactSpace X] (F : FunctionBanachAlgebra X) (E : ContinuousFunctionAlgebraEvidence X F) :
    ContinuousFunctionAlgebraClosed X F := by
  exact And.intro E.pointwiseMultiplicationClosed E.supNormMakesBanachClosed

end BanachAlgebraTechniquesAppliedFunctionsCanonicalLaneLean
end HautevilleHouse