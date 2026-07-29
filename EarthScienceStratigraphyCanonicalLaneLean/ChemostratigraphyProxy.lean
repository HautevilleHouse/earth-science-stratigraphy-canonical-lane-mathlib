import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceStratigraphyCanonicalLaneLean

structure ChemostratigraphyProxyPackage where
  geochemicalProxies : Type u
  elementalRatios : geochemicalProxies → Prop
  isotopicSignatures : geochemicalProxies → Type v
  stratigraphicTrends : geochemicalProxies → Prop
  environmentalInterpretation : Prop

structure ChemostratigraphyProxyEvidence (C : ChemostratigraphyProxyPackage) where
  elementalRatiosClosed : C.elementalRatios
  isotopicSignaturesClosed : C.isotopicSignatures
  stratigraphicTrendsClosed : C.stratigraphicTrends
  environmentalInterpretationClosed : C.environmentalInterpretation

def ChemostratigraphyProxyClosed (C : ChemostratigraphyProxyPackage) : Prop :=
  C.elementalRatios ∧ C.isotopicSignatures ∧ C.stratigraphicTrends ∧ C.environmentalInterpretation

theorem chemostratigraphy_proxy_closed_from_evidence (C : ChemostratigraphyProxyPackage) (E : ChemostratigraphyProxyEvidence C) : ChemostratigraphyProxyClosed C := by
  exact And.intro E.elementalRatiosClosed (And.intro E.isotopicSignaturesClosed (And.intro E.stratigraphicTrendsClosed E.environmentalInterpretationClosed))

end EarthScienceStratigraphyCanonicalLaneLean
end HautevilleHouse