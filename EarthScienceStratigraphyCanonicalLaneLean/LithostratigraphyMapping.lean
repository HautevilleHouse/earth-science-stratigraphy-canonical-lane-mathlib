import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure LithostratigraphyMappingPackage where
  lithologicUnits : Type u
  unitBoundaries : lithologicUnits → Prop
  lithofacies : lithologicUnits → Type v
  stratigraphicPosition : lithologicUnits → Prop
  mappability : Prop

structure LithostratigraphyMappingEvidence (L : LithostratigraphyMappingPackage) where
  unitBoundariesClosed : L.unitBoundaries
  lithofaciesClosed : L.lithofacies
  stratigraphicPositionClosed : L.stratigraphicPosition
  mappabilityClosed : L.mappability

def LithostratigraphyMappingClosed (L : LithostratigraphyMappingPackage) : Prop :=
  L.unitBoundaries ∧ L.lithofacies ∧ L.stratigraphicPosition ∧ L.mappability

theorem lithostratigraphy_mapping_closed_from_evidence (L : LithostratigraphyMappingPackage) (E : LithostratigraphyMappingEvidence L) : LithostratigraphyMappingClosed L := by
  exact And.intro E.unitBoundariesClosed (And.intro E.lithofaciesClosed (And.intro E.stratigraphicPositionClosed E.mappabilityClosed))

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse