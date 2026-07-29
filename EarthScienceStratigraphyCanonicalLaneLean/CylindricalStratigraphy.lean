import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure CylindricalStratigraphyPackage where
  stratigraphicColumn : Type u
  beddingPlanes : stratigraphicColumn → Prop
  faciesSequence : stratigraphicColumn → Type v
  unconformities : stratigraphicColumn → Prop
  lateralContinuity : Prop
  verticalOrdering : Prop

structure CylindricalStratigraphyEvidence (C : CylindricalStratigraphyPackage) where
  beddingPlanesClosed : C.beddingPlanes
  faciesSequenceClosed : C.faciesSequence
  unconformitiesClosed : C.unconformities
  lateralContinuityClosed : C.lateralContinuity
  verticalOrderingClosed : C.verticalOrdering

def CylindricalStratigraphyClosed (C : CylindricalStratigraphyPackage) : Prop :=
  C.beddingPlanes ∧ C.faciesSequence ∧ C.unconformities ∧ C.lateralContinuity ∧ C.verticalOrdering

theorem cylindrical_stratigraphy_closed_from_evidence (C : CylindricalStratigraphyPackage) (E : CylindricalStratigraphyEvidence C) : CylindricalStratigraphyClosed C := by
  exact And.intro E.beddingPlanesClosed (And.intro E.faciesSequenceClosed (And.intro E.unconformitiesClosed (And.intro E.lateralContinuityClosed E.verticalOrderingClosed)))

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse