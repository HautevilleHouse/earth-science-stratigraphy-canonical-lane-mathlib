import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceStratigraphyCanonicalLaneLean.SourceRockEvaluation

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure ReservoirCharacterizationPackage {C : StratigraphicColumnPackage}
    {Seq : SequenceStratigraphyPackage C} {B : BasinAnalysisPackage Seq}
    {D : DepositionalEnvironmentPackage Seq B} {S : SourceRockPackage D} where
  porosity : Prop
  permeability : Prop
  diagenesis : Type u
  fluidSaturation : Prop

structure ReservoirCharacterizationEvidence {C : StratigraphicColumnPackage}
    {Seq : SequenceStratigraphyPackage C} {B : BasinAnalysisPackage Seq}
    {D : DepositionalEnvironmentPackage Seq B} {S : SourceRockPackage D}
    (R : ReservoirCharacterizationPackage S) where
  porosityClosed : R.porosity
  permeabilityClosed : R.permeability
  fluidSaturationClosed : R.fluidSaturation

def ReservoirCharacterizationClosed {C : StratigraphicColumnPackage}
    {Seq : SequenceStratigraphyPackage C} {B : BasinAnalysisPackage Seq}
    {D : DepositionalEnvironmentPackage Seq B} {S : SourceRockPackage D}
    (R : ReservoirCharacterizationPackage S) : Prop :=
  R.porosity ∧ R.permeability ∧ R.fluidSaturation

theorem reservoir_characterization_closed_from_evidence
    {C : StratigraphicColumnPackage} {Seq : SequenceStratigraphyPackage C}
    {B : BasinAnalysisPackage Seq} {D : DepositionalEnvironmentPackage Seq B}
    {S : SourceRockPackage D} (R : ReservoirCharacterizationPackage S)
    (E : ReservoirCharacterizationEvidence R) : ReservoirCharacterizationClosed R := by
  exact And.intro E.porosityClosed (And.intro E.permeabilityClosed E.fluidSaturationClosed)

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse