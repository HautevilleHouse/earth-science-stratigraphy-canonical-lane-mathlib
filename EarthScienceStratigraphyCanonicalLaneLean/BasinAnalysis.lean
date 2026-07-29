import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure BasinAnalysisPackage where
  tectonicSetting : Prop
  subsidenceHistory : Prop
  sedimentSupply : Prop
  seaLevelChanges : Prop
  basinFillGeometry : Prop
  accommodationSpace : Prop

def BasinAnalysisClosed (B : BasinAnalysisPackage) : Prop :=
  B.tectonicSetting ∧ B.subsidenceHistory ∧ B.sedimentSupply ∧
  B.seaLevelChanges ∧ B.basinFillGeometry ∧ B.accommodationSpace

structure BasinAnalysisEvidence (B : BasinAnalysisPackage) where
  tectonicSettingClosed : B.tectonicSetting
  subsidenceHistoryClosed : B.subsidenceHistory
  sedimentSupplyClosed : B.sedimentSupply
  seaLevelChangesClosed : B.seaLevelChanges
  basinFillGeometryClosed : B.basinFillGeometry
  accommodationSpaceClosed : B.accommodationSpace

theorem basin_analysis_closed_from_evidence (B : BasinAnalysisPackage)
    (E : BasinAnalysisEvidence B) : BasinAnalysisClosed B := by
  exact And.intro E.tectonicSettingClosed
    (And.intro E.subsidenceHistoryClosed
      (And.intro E.sedimentSupplyClosed
        (And.intro E.seaLevelChangesClosed
          (And.intro E.basinFillGeometryClosed E.accommodationSpaceClosed))))

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse
