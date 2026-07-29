import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EarthScienceStratigraphyCanonicalLaneLean.StratigraphicHorizons

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure SedimentaryProcessesPackage where
  sedimentTransportRegimes : Prop
  depositionalEnvironmentsClassified : Prop
  diageneticAlterationsModeled : Prop
  faciesAssociationsDerived : Prop

structure SedimentaryProcessesEvidence (P : SedimentaryProcessesPackage) where
  sedimentTransportRegimesClosed : P.sedimentTransportRegimes
  depositionalEnvironmentsClassifiedClosed : P.depositionalEnvironmentsClassified
  diageneticAlterationsModeledClosed : P.diageneticAlterationsModeled
  faciesAssociationsDerivedClosed : P.faciesAssociationsDerived

def SedimentaryProcessesClosed (P : SedimentaryProcessesPackage) : Prop :=
  P.sedimentTransportRegimes ∧ P.depositionalEnvironmentsClassified ∧
  P.diageneticAlterationsModeled ∧ P.faciesAssociationsDerived

theorem sedimentary_processes_closed_from_evidence
    (P : SedimentaryProcessesPackage) (E : SedimentaryProcessesEvidence P) :
    SedimentaryProcessesClosed P := by
  exact And.intro E.sedimentTransportRegimesClosed
    (And.intro E.depositionalEnvironmentsClassifiedClosed
      (And.intro E.diageneticAlterationsModeledClosed E.faciesAssociationsDerivedClosed))

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse
