import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceStratigraphyCanonicalLaneLean.StratigraphicColumnPackage
import HautevilleHouse.EarthScienceStratigraphyCanonicalLaneLean.FaciesCorrelationBody
import HautevilleHouse.EarthScienceStratigraphyCanonicalLaneLean.SedimentaryBasinAnalysisPackage

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure StratigraphicCorrelationClosure {S : StratigraphicColumnPackage}
    {F : FaciesCorrelationBody S} {B : SedimentaryBasinAnalysisPackage S} where
  columnClosed : StratigraphicColumnClosed S
  faciesClosed : FaciesCorrelationClosed F
  basinClosed : SedimentaryBasinAnalysisClosed B

def ConstrainedStratigraphyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_stratigraphy_endgame (A : AdmissibleClass) :
    ConstrainedStratigraphyClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse