import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure BiostratigraphyZonationPackage where
  fossilAssemblages : Type u
  zoneDefinition : fossilAssemblages → Prop
  indexFossils : fossilAssemblages → Type v
  biohorizons : fossilAssemblages → Prop
  temporalCorrelation : Prop

structure BiostratigraphyZonationEvidence (B : BiostratigraphyZonationPackage) where
  zoneDefinitionClosed : B.zoneDefinition
  indexFossilsClosed : B.indexFossils
  biohorizonsClosed : B.biohorizons
  temporalCorrelationClosed : B.temporalCorrelation

def BiostratigraphyZonationClosed (B : BiostratigraphyZonationPackage) : Prop :=
  B.zoneDefinition ∧ B.indexFossils ∧ B.biohorizons ∧ B.temporalCorrelation

theorem biostratigraphy_zonation_closed_from_evidence (B : BiostratigraphyZonationPackage) (E : BiostratigraphyZonationEvidence B) : BiostratigraphyZonationClosed B := by
  exact And.intro E.zoneDefinitionClosed (And.intro E.indexFossilsClosed (And.intro E.biohorizonsClosed E.temporalCorrelationClosed))

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse