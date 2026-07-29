import HautevilleHouse.EarthScienceStratigraphyCanonicalLaneLean.SequenceStratigraphy
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

def StratigraphyAdmissibleClass (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem stratigraphy_admissible_endgame (A : AdmissibleClass) :
    StratigraphyAdmissibleClass A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse
