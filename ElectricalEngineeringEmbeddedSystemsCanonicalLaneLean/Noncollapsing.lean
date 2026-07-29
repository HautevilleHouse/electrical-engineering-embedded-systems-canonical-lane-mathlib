import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

structure ResourceNonCollapsingPackage where
  memoryBound : Prop
  cpuUtilizationBound : Prop
  bandwidthBound : Prop
  memoryBoundTerm : memoryBound
  cpuUtilizationBoundTerm : cpuUtilizationBound
  bandwidthBoundTerm : bandwidthBound

structure ResourceNonCollapsingEvidence (N : ResourceNonCollapsingPackage) where
  memoryBoundClosed : N.memoryBound
  cpuUtilizationBoundClosed : N.cpuUtilizationBound
  bandwidthBoundClosed : N.bandwidthBound

def ResourceNonCollapsingClosed (N : ResourceNonCollapsingPackage) : Prop :=
  N.memoryBound ∧ N.cpuUtilizationBound ∧ N.bandwidthBound

theorem resource_non_collapsing_closed_from_evidence (N : ResourceNonCollapsingPackage) (E : ResourceNonCollapsingEvidence N) :
    ResourceNonCollapsingClosed N := by
  exact And.intro E.memoryBoundClosed (And.intro E.cpuUtilizationBoundClosed E.bandwidthBoundClosed)

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse
