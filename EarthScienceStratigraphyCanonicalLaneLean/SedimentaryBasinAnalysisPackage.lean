import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceStratigraphyCanonicalLaneLean.StratigraphicColumnPackage

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure SedimentaryBasinAnalysisPackage {S : StratigraphicColumnPackage} where
  basinShape : Type u
  subsidenceHistory : List (ℝ × ℝ)
  sedimentFlux : List (ℝ × ℝ)
  accommodationCreated : Prop
  fluxBalanced : Prop

structure SedimentaryBasinAnalysisEvidence {S : StratigraphicColumnPackage}
    (B : SedimentaryBasinAnalysisPackage S) where
  accommodationCreatedClosed : B.accommodationCreated
  fluxBalancedClosed : B.fluxBalanced

def SedimentaryBasinAnalysisClosed {S : StratigraphicColumnPackage}
    (B : SedimentaryBasinAnalysisPackage S) : Prop :=
  B.accommodationCreated ∧ B.fluxBalanced

theorem sedimentary_basin_analysis_closed_from_evidence
    {S : StratigraphicColumnPackage} (B : SedimentaryBasinAnalysisPackage S)
    (E : SedimentaryBasinAnalysisEvidence B) : SedimentaryBasinAnalysisClosed B :=
  And.intro E.accommodationCreatedClosed E.fluxBalancedClosed

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse