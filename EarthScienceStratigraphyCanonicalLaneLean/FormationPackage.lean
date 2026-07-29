import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure FormationPackage where
  formationName : String
  members : List String
  thicknessRange : Float × Float
  defined : Prop

def formationPackageClosed (P : FormationPackage) : Prop :=
  P.defined

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse