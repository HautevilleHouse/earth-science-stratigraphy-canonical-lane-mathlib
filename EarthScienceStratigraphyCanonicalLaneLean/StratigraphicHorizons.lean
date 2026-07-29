import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure StratigraphicHorizonsPackage where
  layerBoundariesIdentified : Prop
  depositionalSequencePartition : Prop
  markerBedsCorrelated : Prop
  stratigraphicColumnsDefined : Prop

structure StratigraphicHorizonsEvidence (S : StratigraphicHorizonsPackage) where
  layerBoundariesIdentifiedClosed : S.layerBoundariesIdentified
  depositionalSequencePartitionClosed : S.depositionalSequencePartition
  markerBedsCorrelatedClosed : S.markerBedsCorrelated
  stratigraphicColumnsDefinedClosed : S.stratigraphicColumnsDefined

def StratigraphicHorizonsClosed (S : StratigraphicHorizonsPackage) : Prop :=
  S.layerBoundariesIdentified ∧ S.depositionalSequencePartition ∧
  S.markerBedsCorrelated ∧ S.stratigraphicColumnsDefined

theorem stratigraphic_horizons_closed_from_evidence
    (S : StratigraphicHorizonsPackage) (E : StratigraphicHorizonsEvidence S) :
    StratigraphicHorizonsClosed S := by
  exact And.intro E.layerBoundariesIdentifiedClosed
    (And.intro E.depositionalSequencePartitionClosed
      (And.intro E.markerBedsCorrelatedClosed E.stratigraphicColumnsDefinedClosed))

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse
