import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceStratigraphyCanonicalLaneLean.BasinAnalysis

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure DepositionalEnvironmentPackage {C : StratigraphicColumnPackage}
    {Seq : SequenceStratigraphyPackage C} {B : BasinAnalysisPackage Seq} where
  environmentType : Type u
  faciesModel : Prop
  paleocurrent : Prop
  fossilAssemblage : Prop

def DepositionalEnvironmentClosed {C : StratigraphicColumnPackage}
    {Seq : SequenceStratigraphyPackage C} {B : BasinAnalysisPackage Seq}
    (D : DepositionalEnvironmentPackage Seq B) : Prop :=
  D.faciesModel ∧ D.paleocurrent ∧ D.fossilAssemblage

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse