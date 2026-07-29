import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure SequenceStratigraphyPackage where
  sequenceBoundaries : List String
  systemTracts : List String
  defined : Prop

def sequenceStratigraphyPackageClosed (P : SequenceStratigraphyPackage) : Prop :=
  P.defined

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse