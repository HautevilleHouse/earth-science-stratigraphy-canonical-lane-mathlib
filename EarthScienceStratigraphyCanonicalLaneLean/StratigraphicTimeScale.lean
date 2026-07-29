import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure StratigraphicTimeScalePackage where
  chronostratigraphicChart : Prop
  geochronologicUnitsDefined : Prop
  relativeDatingEstablished : Prop
  absoluteAgeConstraints : Prop

structure StratigraphicTimeScaleEvidence (T : StratigraphicTimeScalePackage) where
  chronostratigraphicChartClosed : T.chronostratigraphicChart
  geochronologicUnitsDefinedClosed : T.geochronologicUnitsDefined
  relativeDatingEstablishedClosed : T.relativeDatingEstablished
  absoluteAgeConstraintsClosed : T.absoluteAgeConstraints

def StratigraphicTimeScaleClosed (T : StratigraphicTimeScalePackage) : Prop :=
  T.chronostratigraphicChart ∧ T.geochronologicUnitsDefined ∧
  T.relativeDatingEstablished ∧ T.absoluteAgeConstraints

theorem stratigraphic_time_scale_closed_from_evidence
    (T : StratigraphicTimeScalePackage) (E : StratigraphicTimeScaleEvidence T) :
    StratigraphicTimeScaleClosed T := by
  exact And.intro E.chronostratigraphicChartClosed
    (And.intro E.geochronologicUnitsDefinedClosed
      (And.intro E.relativeDatingEstablishedClosed E.absoluteAgeConstraintsClosed))

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse
