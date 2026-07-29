import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure BiostratigraphyZone where
  zoneName : String
  fossilAssemblage : List String
  ageRange : Float × Float
  defined : Prop

def biostratigraphyZoneClosed (Z : BiostratigraphyZone) : Prop :=
  Z.defined

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse