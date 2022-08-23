# Secure Asset Transfer Protocol (SATP)

This is the draft charter for SATP:

# Objective

There is currently an interoperability problem in many digital asset networks, where assets in one network cannot be moved easily to another network. The problem is more acute in the case of private asset networks, where external entities have no visibility into the state of an asset in the private network.

One example is the private shipping logistics networks where the digital Bill of Lading as the value-bearing data-object is not accessible to external entities, such as trade finance networks, seeking to issue Letters of Credit based on the Bill of Lading. A second example is regulated digital representations of real-world private assets, such as property ownership certificates, and regulated government-issued digital currencies.

The goal of the Secure Asset Transfer Protocol (SATP) working group will be to develop a standard protocol which operates between two peer gateways for the purpose of transferring digital assets and data between an originator in the origin network to a beneficiary in destination network.

# Problem space and architecture

To begin addressing these challenges, SATP will employ the gateway paradigm as a means for digital assets to be moved from one network to another through a standardized asset transfer protocol implemented between peer gateways. The same gateway paradigm will be used for data sharing between two networks, when one or both are private networks. Additionally, the  gateway paradigm will be used for the case of coordinated local asset exchanges occurring in two networks.

Each gateway represents one network or system, and the SAT protocol performs a voluntary transfer of a digital asset from the origin network to a destination network, in such a way that evidence of the transfer can be obtained from both networks by a trusted third-party audit entity in the case of disputes. 

Both the origin and destination network are assumed to share a common understanding of the digital asset and both networks operate under a common legal framework. 

There might be several gateways representing the same network or system. When we refer to an asset transfer among two networks, we assume that the same peer gateways representing the networks are participating in the entire asset transfer sequence from the beginning to the end.

In the case of asset transfers, a key requirement of SATP to ensure that the digital asset is valid in one network at any given time. This means that SATP must ensure that the properties of atomicity, consistency, isolation, and durability (ACID) of the underlying networks are satisfied in an asset transfer, and that commitments or rollbacks are supported in the case of a success or failure of the asset transfer operations among the participating networks.

The atomicity property must guarantee that either a transfer commits entirely (completes) or entirely fails, where failure is taken to mean there is no change to the state of the asset in the origin network.

The property of consistency means that the asset transfer protocol must always leave both networks in a consistent state with regards to the value-bearing data-object representing the asset.

The property of isolation means that while a transfer is occurring from an origin network, no other state changes can occur to the asset. The property of durability means that once the transfer has been committed by both gateways on behalf of the respective networks, the commitment must hold regardless of subsequent unavailability (e.g. crash) of the gateways implementing the transfer protocol.

# Scope

The immediate scope of work for SATP will be a base architecture that utilizes the gateway paradigm in such a way that it permits a common semantic understanding to be shared among the broad cases of asset transfers, data sharing and coordinated local asset exchanges.

SATP will use existing IETF standards for various aspects of the protocol, including secure channel establishment (TLS), payload formats (e.g. JSON, JOSE, JWT, CBOR, COSE, etc.), digital signatures and encryption (JOSE, JWE), digital certificates (PKIX) and others.

Specifically, the SATP working group will work on:

SATP terminology (extending NISTIR-8202 or ISO-22739)
API-endpoints (e.g. RESTful APIs)
Resource identifiers
Message flows and payloads

# Milestones

- SATP Use-Cases document – 6 months
- SATP Architecture document – 12 months
- SATP Asset Transfer Protocol document – 12 months
- SATP Data Sharing document – 12 months

