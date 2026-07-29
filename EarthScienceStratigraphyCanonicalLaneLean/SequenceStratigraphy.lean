import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceStratigraphyCanonicalLaneLean.StratigraphicTimeScale
import HautevilleHouse.EarthScienceStratigraphyCanonicalLaneLean.BasinAnalysis

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure SequenceStratigraphyPackage {T : StratigraphicTimeScalePackage} {B : BasinAnalysisPackage S P} where
  systemsTractsIdentified : Prop
  sequenceBoundariesMapped : Prop
  parasequenceStackingPatterns : Prop
  seaLevelCurveDerived : Prop

structure SequenceStratigraphyEvidence {T : StratigraphicTimeScalePackage} {B : BasinAnalysisPackage S P}
    (Q : SequenceStratigraphyPackage T B) where
  systemsTractsIdentifiedClosed : Q.systemsTractsIdentified
  sequenceBoundariesMappedClosed : Q.sequenceBoundariesMapped
  parasequenceStackingPatternsClosed : Q.parasequenceStackingPatterns
  seaLevelCurveDerivedClosed : Q.seaLevelCurveDerived

def SequenceStratigraphyClosed {T : StratigraphicTimeScalePackage} {B : BasinAnalysisPackage S P}
    (Q : SequenceStratigraphyPackage T B) : Prop :=
  Q.systemsTractsIdentified ∧ Q.sequenceBoundariesMapped ∧
  Q.parasequenceStackingPatterns ∧ Q.seaLevelCurveDerived

theorem sequence_stratigraphy_closed_from_evidence
    {T : StratigraphicTimeScalePackage} {B : BasinAnalysisPackage S P}
    (Q : SequenceStratigraphyPackage T B) (E : SequenceStratigraphyEvidence Q) :
    SequenceStratigraphyClosed Q := by
  exact And.intro E.systemsTractsIdentifiedClosed
    (And.intro E.sequenceBoundariesMappedClosed
      (And.intro E.parasequenceStackingPatternsClosed E.seaLevelCurveDerivedClosed))

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse
