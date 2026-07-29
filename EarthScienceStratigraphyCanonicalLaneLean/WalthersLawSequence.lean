import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure WalthersLawSequencePackage where
  faciesStacking : Type u
  lateralTransition : faciesStacking → Type v
  verticalSuccession : faciesStacking → Prop
  environmentalContinuity : Prop
  spatialCorrelation : Prop

structure WalthersLawSequenceEvidence (W : WalthersLawSequencePackage) where
  lateralTransitionClosed : W.lateralTransition
  verticalSuccessionClosed : W.verticalSuccession
  environmentalContinuityClosed : W.environmentalContinuity
  spatialCorrelationClosed : W.spatialCorrelation

def WalthersLawSequenceClosed (W : WalthersLawSequencePackage) : Prop :=
  W.lateralTransition ∧ W.verticalSuccession ∧ W.environmentalContinuity ∧ W.spatialCorrelation

theorem walthers_law_sequence_closed_from_evidence (W : WalthersLawSequencePackage) (E : WalthersLawSequenceEvidence W) : WalthersLawSequenceClosed W := by
  exact And.intro E.lateralTransitionClosed (And.intro E.verticalSuccessionClosed (And.intro E.environmentalContinuityClosed E.spatialCorrelationClosed))

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse