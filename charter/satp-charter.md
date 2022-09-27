# Secure Asset Transfer Protocol (SATP)

This is the draft charter for SATP:

# Objective

There is currently an interoperability problem in many digital asset networks, where assets in one network cannot be moved easily to another network. The problem is more acute in the case of private asset networks, where external entities have no visibility into the state of an asset in the private network.

One example is in private shipping logistics networks where the digital Bill of Lading (a the value-bearing data-object) is not accessible to external entities, such as trade finance networks that are seeking to issue Letters of Credit based on the Bill of Lading. A second example is regulated digital representations of real-world private assets, such as property ownership certificates, and regulated government-issued digital currencies.

The goal of the Secure Asset Transfer Protocol (SATP) working group will be to develop a standard protocol which operates between two peer gateways for the purpose of transferring digital assets and asset-related data between an originator in the origin network to a beneficiary in destination network.

[Wes: I'm thinking "and data" should be removed.  It's too open ended, and I *think* it doesn't add anything that isn't in the digital assets half of things.  Down below you discuss "data sharing" again, but without an example -- it'd be helpful to have something more specific]

# Problem space and architecture

[Wes: it would be helpful to define (or replace) "network" as the usage here is specific, vs a generic network on the internet.  Maybe "asset networks" or something?]

To begin addressing these challenges, SATP will employ a gateway-to-gateway paradigm as a means for moving digital assets from one network to another through a standardized Secure Asset Transfer Protocol used by peer gateways. The same gateway-to-gateway protocol will be used for data sharing between two networks, when one or both are private networks. Additionally, the protocol will be used to address the case of coordinated asset exchanges on two separate networks.

[Wes: how is the last sentence above different than the first in terms of content?]

Each gateway sits at the edge of and represents one network or system,
and the SAT protocol performs a voluntary transfer of a digital asset
from the origin network to a destination network, in such a way that
evidence of the transfer can be obtained from both networks by a
trusted third-party audit entity in the case of disputes. Both the
origin and destination networks are assumed to share a common
understanding of the digital asset.

[mention agreement between them as well?  IE, some legal basis or other agreement is presumed to exist between them and the third party as well?]

There might be several gateways representing the same network or system. It is assumed that the same peer gateways representing the networks are participating in the entire asset transfer sequence from the beginning to the end.

In the case of asset transfers, a key requirement of SATP is to ensure that the digital asset is valid in one network only at any given time. This means that SATP must ensure that the properties of atomicity, consistency, isolation, and durability (ACID) of the underlying networks are satisfied in an asset transfer, and that commitments or rollbacks are supported in the case of a success or failure of the asset transfer operations among the participating networks. The starting point for the discussion regarding ACID properties can be found in [draft-hardjono-sat-architecture-00](https://datatracker.ietf.org/doc/draft-hardjono-sat-architecture/00/).

# Assumptions

This work assumes some fundamental characteristics of the asset networks and gateways that will be participating in asset transfers.  The below are the starting known assumptions.

1. A legal or other agreement is expected to exist between participating gateway holders that can resolve disputes.

2. A legal or other agreement is expected to exist between participating gateway holders and any third-party auditing systems to assist it resolving disputes.

3. Gateways will have escrow capabilities for their networks they represent that may be created in technical, legal or other ways.

4. ...

# Work items

The work items for the SATP Working Group will be as follows:

(1) SATP Architecture: The immediate scope of work for SATP will be a base architecture that defines the gateway-to-gateway paradigm that ensures a common semantic understanding to be shared among the modes of asset transfers, data sharing and coordinated asset exchanges.

(2) SATP Asset Transfer Protocol: Concurrent with the development of the SATP architecture will be the SATP Asset Transfer Protocol that implements the transfer of a digital asset from one gateway to another, satisfying the ACID properties.

[Wes: "mode of" below sounds awkard since it's also saying it's a different protocol -- it should either be 1 protocol with modes, or separate protocols with different names (at least from a descriptive point of view -- internally it may still be a single protocol with sub-protocol transactions)]

(3) SATP Data Sharing Protocol: This mode of the protocol will securely reveal views of data from a network to an authorized external entity using its gateway, in such a way that the correctness and authenticity of the views can be validated by the entity.

(4) SATP Asset Exchange Protocol: This mode of the protocol will perform a coordinated exchange of two assets in two respective networks, with the two corresponding gateways implementing the coordination. Work on this protocol in the SATP working group will begin only after the work on the SATP Asset Transfer Protocol and the SATP Data Sharing protocol has reached their final stages.

(5) SATP Use-Cases: Various real-world use-cases will be collected and described succinctly, with the goal of providing the background to the SATP work.


SATP will define common identifiers, message flows and payloads among the above three protocol modes. A common terminology will be defined in the architecture document.

SATP will reuse existing IETF standards for various aspects of the protocol modes, including but not limited to secure channel establishment (TLS), payload formats (e.g., JSON, CBOR, ProtoBuf, etc.), digital signature and encryption (e.g., JOSE, COSE, etc.), digital certificates and tokens (e.g., PKIX, JWT, etc.), and others. SATP may also reuse existing standards from other organizations (e.g., W3C with DIDs).

Legal frameworks are outside of the scope of the SATP work.


# Milestones

[Wes: I'd stagger these more to show the later ones (eg, data sharing) come later.  The secure assets exchange protocol should also be listed and at the latest?]

SATP Architecture document: Adoption - 3 months; Delivery to IESG – 18 months. The likely starting point for the working group will be [draft-hardjono-sat-architecture-00](https://datatracker.ietf.org/doc/draft-hardjono-sat-architecture/00/).

SATP Asset Transfer Protocol document: Adoption - 3 months; Delivery to IESG – 18 months. The likely starting point for the working group will be [draft-hargreaves-sat-core-00](https://datatracker.ietf.org/doc/draft-hargreaves-sat-core/).

SATP Data Sharing Protocol document. Adoption - 3 months; Delivery to IESG – 18 months. The likely starting point for the working group will be draft-ramakrishna-sat-views-00.txt.

SATP Use-Cases document: Adoption - 3 months; Delivery to IESG – 12 months. The likely starting point for the working group will be [draft-ramakrishna-sat-use-cases-00.txt](https://datatracker.ietf.org/doc/draft-ramakrishna-sat-use-cases/).


