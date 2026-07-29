import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

structure MemoryAllocatorPackage where
  staticAllocationGuaranteed : Prop
  noFragmentation : Prop
  boundedAllocationTime : Prop
  memoryProtectionProvided : Prop

structure MemoryAllocatorEvidence (M : MemoryAllocatorPackage) where
  staticAllocationGuaranteedClosed : M.staticAllocationGuaranteed
  noFragmentationClosed : M.noFragmentation
  boundedAllocationTimeClosed : M.boundedAllocationTime
  memoryProtectionProvidedClosed : M.memoryProtectionProvided

def MemoryAllocatorClosed (M : MemoryAllocatorPackage) : Prop :=
  M.staticAllocationGuaranteed ∧ M.noFragmentation ∧ M.boundedAllocationTime ∧ M.memoryProtectionProvided

theorem memory_allocator_closed_from_evidence (M : MemoryAllocatorPackage) (E : MemoryAllocatorEvidence M) : MemoryAllocatorClosed M := by
  exact And.intro E.staticAllocationGuaranteedClosed
    (And.intro E.noFragmentationClosed
      (And.intro E.boundedAllocationTimeClosed E.memoryProtectionProvidedClosed))

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse