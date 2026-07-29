import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure StratigraphicColumnPackage where
  columnId : Type u
  thickness : Type v
  lithology : Type w
  boundaryDepth : columnId -> thickness
  capRockPresent : Prop
  reservoirQuality : Prop

def StratigraphicColumnClosed (S : StratigraphicColumnPackage) : Prop :=
  (S.boundaryDepth S.columnId = S.boundaryDepth S.columnId) ∧ S.capRockPresent ∧ S.reservoirQuality

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse