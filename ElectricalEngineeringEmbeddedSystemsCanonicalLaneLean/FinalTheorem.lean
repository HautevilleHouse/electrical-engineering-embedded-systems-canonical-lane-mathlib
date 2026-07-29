import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean

def ConstrainedEmbeddedSystemClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_embedded_system_endgame (A : AdmissibleClass) : ConstrainedEmbeddedSystemClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElectricalEngineeringEmbeddedSystemsCanonicalLaneLean
end HautevilleHouse