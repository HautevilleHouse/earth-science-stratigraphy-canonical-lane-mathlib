import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure StratigraphicPackage where
  basinGeometry : Prop
  sedimentaryLayers : Prop
  stratigraphicOrder : Prop
  faciesSuccession : Prop
  boundingSurfaces : Prop

def StratigraphicClosed (S : StratigraphicPackage) : Prop :=
  S.basinGeometry ∧ S.sedimentaryLayers ∧ S.stratigraphicOrder ∧
  S.faciesSuccession ∧ S.boundingSurfaces

structure StratigraphicEvidence (S : StratigraphicPackage) where
  basinGeometryClosed : S.basinGeometry
  sedimentaryLayersClosed : S.sedimentaryLayers
  stratigraphicOrderClosed : S.stratigraphicOrder
  faciesSuccessionClosed : S.faciesSuccession
  boundingSurfacesClosed : S.boundingSurfaces

theorem stratigraphic_closed_from_evidence (S : StratigraphicPackage)
    (E : StratigraphicEvidence S) : StratigraphicClosed S := by
  exact And.intro E.basinGeometryClosed
    (And.intro E.sedimentaryLayersClosed
      (And.intro E.stratigraphicOrderClosed
        (And.intro E.faciesSuccessionClosed E.boundingSurfacesClosed)))

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse
