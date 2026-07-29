import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

structure SchedulabilityAnalyticCertificate (S : ResourceNonCollapsingPackage) where
  timingGuaranteed : Prop
  resourceGuaranteed : Prop
  schedulabilityDecidable : Prop
  timingGuaranteedTerm : timingGuaranteed
  resourceGuaranteedTerm : resourceGuaranteed
  schedulabilityDecidableTerm : schedulabilityDecidable
  resourceEvidence : ResourceNonCollapsingEvidence S

def SchedulabilityAnalyticCertificateClosed {S : ResourceNonCollapsingPackage}
    (C : SchedulabilityAnalyticCertificate S) : Prop :=
  C.timingGuaranteed ∧ C.resourceGuaranteed ∧ C.schedulabilityDecidable ∧ ResourceNonCollapsingClosed S

theorem schedulability_analytic_certificate_closed
    {S : ResourceNonCollapsingPackage} (C : SchedulabilityAnalyticCertificate S) :
    SchedulabilityAnalyticCertificateClosed C := by
  exact And.intro C.timingGuaranteedTerm
    (And.intro C.resourceGuaranteedTerm
      (And.intro C.schedulabilityDecidableTerm
        (resource_non_collapsing_closed_from_evidence S C.resourceEvidence)))

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse
