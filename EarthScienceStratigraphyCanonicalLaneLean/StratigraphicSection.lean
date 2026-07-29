import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure StratigraphicColumn where
  layers : List (String × Float × Float)  -- name, thickness, age
  orderingConsistent : Prop
  nonEmpty : Prop

def stratigraphicSectionClosed (C : StratigraphicColumn) : Prop :=
  C.orderingConsistent ∧ C.nonEmpty

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse