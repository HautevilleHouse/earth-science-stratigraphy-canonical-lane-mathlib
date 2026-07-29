import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceStratigraphyCanonicalLaneLean.StratigraphicColumnPackage

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure FaciesCorrelationBody {S : StratigraphicColumnPackage} where
  faciesTypes : List String
  correlationSurfaces : List (ℝ × ℝ)
  verticalSequence : List (String × ℝ × ℝ)
  correlationEstablished : Prop
  sequenceConsistent : Prop

structure FaciesCorrelationEvidence {S : StratigraphicColumnPackage}
    (F : FaciesCorrelationBody S) where
  correlationEstablishedClosed : F.correlationEstablished
  sequenceConsistentClosed : F.sequenceConsistent

def FaciesCorrelationClosed {S : StratigraphicColumnPackage}
    (F : FaciesCorrelationBody S) : Prop :=
  F.correlationEstablished ∧ F.sequenceConsistent

theorem facies_correlation_closed_from_evidence
    {S : StratigraphicColumnPackage} (F : FaciesCorrelationBody S)
    (E : FaciesCorrelationEvidence F) : FaciesCorrelationClosed F :=
  And.intro E.correlationEstablishedClosed E.sequenceConsistentClosed

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse