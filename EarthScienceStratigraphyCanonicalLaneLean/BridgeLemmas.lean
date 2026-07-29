import HautevilleHouse.EarthScienceStratigraphyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  stratigraphyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.correlationEstablished

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse