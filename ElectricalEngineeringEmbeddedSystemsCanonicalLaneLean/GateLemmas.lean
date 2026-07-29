import HautevilleHouse.ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse