import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure ChronostratigraphyScale where
  epochs : List (String × Float × Float)  -- name, start, end
  globalBoundaryStratotype : String
  defined : Prop

def chronostratigraphyScaleClosed (S : ChronostratigraphyScale) : Prop :=
  S.defined

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse