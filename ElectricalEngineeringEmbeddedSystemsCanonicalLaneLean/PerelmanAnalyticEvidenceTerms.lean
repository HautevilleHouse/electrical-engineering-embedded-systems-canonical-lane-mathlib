import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

structure SchedulabilityEvidenceTerms {S : ResourceNonCollapsingPackage} (C : SchedulabilityAnalyticCertificate S) where
  timingGuaranteedClosed : C.timingGuaranteed
  resourceGuaranteedClosed : C.resourceGuaranteed
  schedulabilityDecidableClosed : C.schedulabilityDecidable
  resourceNonCollapsingClosed : ResourceNonCollapsingClosed S

def SchedulabilityAnalyticCertificate.evidenceTerms {S : ResourceNonCollapsingPackage}
    (C : SchedulabilityAnalyticCertificate S) : SchedulabilityEvidenceTerms C :=
  {
    timingGuaranteedClosed := C.timingGuaranteed
    resourceGuaranteedClosed := C.resourceGuaranteed
    schedulabilityDecidableClosed := C.schedulabilityDecidable
    resourceNonCollapsingClosed := resource_non_collapsing_closed_from_evidence S C.resourceEvidence
  }

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse
