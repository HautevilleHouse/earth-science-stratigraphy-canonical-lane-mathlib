import HautevilleHouse.EarthScienceStratigraphyCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure StratigraphyAdmittedObject where
  basin : Type
  stratigraphyTopology : TopologicalSpace basin
  strataSequence : List (Set basin)
  unconformitiesRecorded : List (String × String)
  correlationEstablished : Prop

def stratigraphyWitnessClosed (O : StratigraphyAdmittedObject) : Prop :=
  O.correlationEstablished

structure AdmissibleClass where
  object : StratigraphyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  stratigraphyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

structure AdmissibleObject where
  lithologySet : Type
  faciesModel : lithologySet → Type
  chronoCorrelation : Prop
  boreholeData : List (String × ℕ)
  coreDescriptionComplete : Prop

def BridgeClosed (o : AdmissibleObject) : Prop :=
  o.chronoCorrelation ∧ o.coreDescriptionComplete

def GateClosed (o : AdmissibleObject) : Prop :=
  ¬ o.boreholeData.isEmpty

theorem bridge_from_admissible_object (o : AdmissibleObject) : BridgeClosed o := by
  exact And.intro o.chronoCorrelation o.coreDescriptionComplete

theorem gate_from_admissible_object (o : AdmissibleObject) : GateClosed o := by
  exact by
    cases o.boreholeData
    · exact False.elim (by
        have h : ¬ [] = [] := by decide
        exact h rfl)
    · exact True.intro

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse