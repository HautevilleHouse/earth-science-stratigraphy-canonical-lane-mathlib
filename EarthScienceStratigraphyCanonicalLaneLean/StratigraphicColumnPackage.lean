import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure StratigraphicColumnPackage where
  borehole : Type u
  depthIntervals : List (ℝ × ℝ)
  lithologyTypes : List String
  ageEstimates : List (ℝ × ℝ)
  columnContinuous : Prop
  noGaps : Prop
  ageConsistent : Prop

structure StratigraphicColumnEvidence (S : StratigraphicColumnPackage) where
  columnContinuousClosed : S.columnContinuous
  noGapsClosed : S.noGaps
  ageConsistentClosed : S.ageConsistent

def StratigraphicColumnClosed (S : StratigraphicColumnPackage) : Prop :=
  S.columnContinuous ∧ S.noGaps ∧ S.ageConsistent

theorem stratigraphic_column_closed_from_evidence
    (S : StratigraphicColumnPackage) (E : StratigraphicColumnEvidence S) :
    StratigraphicColumnClosed S :=
  And.intro E.columnContinuousClosed (And.intro E.noGapsClosed E.ageConsistentClosed)

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse