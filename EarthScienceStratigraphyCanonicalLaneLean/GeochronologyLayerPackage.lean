import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceStratigraphyCanonicalLaneLean.StratigraphicColumnPackage

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure GeochronologyLayerPackage {S : StratigraphicColumnPackage} where
  datingMethods : List String
  absoluteAges : List (ℝ × ℝ × ℝ)
  ageDepthModel : List (ℝ × ℝ)
  datingConsistent : Prop
  agesOrdered : Prop

structure GeochronologyLayerEvidence {S : StratigraphicColumnPackage}
    (G : GeochronologyLayerPackage S) where
  datingConsistentClosed : G.datingConsistent
  agesOrderedClosed : G.agesOrdered

def GeochronologyLayerClosed {S : StratigraphicColumnPackage}
    (G : GeochronologyLayerPackage S) : Prop :=
  G.datingConsistent ∧ G.agesOrdered

theorem geochronology_layer_closed_from_evidence
    {S : StratigraphicColumnPackage} (G : GeochronologyLayerPackage S)
    (E : GeochronologyLayerEvidence G) : GeochronologyLayerClosed G :=
  And.intro E.datingConsistentClosed E.agesOrderedClosed

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse