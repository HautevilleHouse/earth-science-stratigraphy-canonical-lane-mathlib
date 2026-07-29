import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure MagnetostratigraphyReversalPackage where
  magneticPolarityReversals : Type u
  polarityChrons : magneticPolarityReversals → Prop
  reversalRate : magneticPolarityReversals → Type v
  correlation : Prop
  timescaleCalibration : Prop

structure MagnetostratigraphyReversalEvidence (M : MagnetostratigraphyReversalPackage) where
  polarityChronsClosed : M.polarityChrons
  reversalRateClosed : M.reversalRate
  correlationClosed : M.correlation
  timescaleCalibrationClosed : M.timescaleCalibration

def MagnetostratigraphyReversalClosed (M : MagnetostratigraphyReversalPackage) : Prop :=
  M.polarityChrons ∧ M.reversalRate ∧ M.correlation ∧ M.timescaleCalibration

theorem magnetostratigraphy_reversal_closed_from_evidence (M : MagnetostratigraphyReversalPackage) (E : MagnetostratigraphyReversalEvidence M) : MagnetostratigraphyReversalClosed M := by
  exact And.intro E.polarityChronsClosed (And.intro E.reversalRateClosed (And.intro E.correlationClosed E.timescaleCalibrationClosed))

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse