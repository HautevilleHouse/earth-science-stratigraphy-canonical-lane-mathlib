import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure LithostratigraphyUnit where
  unitName : String
  lithology : String
  thickness : Float
  defined : Prop

def lithostratigraphyUnitClosed (U : LithostratigraphyUnit) : Prop :=
  U.defined

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse