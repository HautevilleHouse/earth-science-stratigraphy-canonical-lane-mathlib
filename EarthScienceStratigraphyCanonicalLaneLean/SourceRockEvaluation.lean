import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceStratigraphyCanonicalLaneLean.DepositionalEnvironments

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure SourceRockPackage {C : StratigraphicColumnPackage}
    {Seq : SequenceStratigraphyPackage C} {B : BasinAnalysisPackage Seq}
    {D : DepositionalEnvironmentPackage Seq B} where
  totalOrganicCarbon : Prop
  kerogenType : Type u
  thermalMaturity : Prop
  generationPotential : Prop

structure SourceRockEvidence {C : StratigraphicColumnPackage}
    {Seq : SequenceStratigraphyPackage C} {B : BasinAnalysisPackage Seq}
    {D : DepositionalEnvironmentPackage Seq B}
    (S : SourceRockPackage D) where
  totalOrganicCarbonClosed : S.totalOrganicCarbon
  thermalMaturityClosed : S.thermalMaturity
  generationPotentialClosed : S.generationPotential

def SourceRockClosed {C : StratigraphicColumnPackage}
    {Seq : SequenceStratigraphyPackage C} {B : BasinAnalysisPackage Seq}
    {D : DepositionalEnvironmentPackage Seq B} (S : SourceRockPackage D) : Prop :=
  S.totalOrganicCarbon ∧ S.thermalMaturity ∧ S.generationPotential

theorem source_rock_closed_from_evidence
    {C : StratigraphicColumnPackage} {Seq : SequenceStratigraphyPackage C}
    {B : BasinAnalysisPackage Seq} {D : DepositionalEnvironmentPackage Seq B}
    (S : SourceRockPackage D) (E : SourceRockEvidence S) : SourceRockClosed S := by
  exact And.intro E.totalOrganicCarbonClosed (And.intro E.thermalMaturityClosed E.generationPotentialClosed)

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse