# Secure Asset Transfer Protocol (SATP)

This is the draft charter for SATP:

# Objective

There is currently a growing interest in several industry sectors of using the Internet as the foundation for the exchange of digital assets.

The goal of the Secure Asset Transfer Protocol (SATP) working group will be to develop a standard protocol which operates between two peer gateways for the purpose of transferring digital assets between networks or systems.  

# Problem space and architecture

Each gateway represents one network or system, and the SAT protocol performs a unidirectional transfer of a digital asset from the origin network to a destination network, with third-party verifiability.

A key goal for the SAT protocol is to ensure that the properties of atomicity, consistency, isolation and durability (ACID) are satisfied in an asset transfer, and that rollbacks are supported in the case of a failure in satisfying all these properties.

The requirement of consistency implies that asset transfer protocol always leaves both networks in a consistent state (that at any moment the asset must be valid in one network only). Atomicity means that the protocol must guarantee that either the transfer commits entirely (completes) or entirely fails, where failure is taken to mean there is no change to the state of the asset in the origin network.

The property of isolation means that while a transfer is occurring to a digital asset from an origin network, no other state changes can occur to the asset. The property of durability means that once the transfer has been committed by both gateways on behalf of the respective networks, the commitment must hold regardless of subsequent unavailability (e.g. crash) of the gateways implementing the transfer protocol.

# Scope

SATP will use existing IETF standards for various aspects of the protocol, including secure channel establishment (TLS), payload formats (e.g. JSON, JOSE, JWT, CBOR, COSE), digital signatures and encryption (JOSE, JWE), digital certificates (PKIX) and others.

Although the immediate focus is on a unidirectional asset transfer protocol, the resulting building blocks should be usable to support future designs of bidirectional transfers.

Specifically, the SATP working group will work on:

- SATP terminology (extending NISTIR-8202 or ISO-22739)
- API-endpoints (e.g. RESTful APIs)
- Resource identifiers
- Message flows and payloads

# Milestones

- SATP Use-Cases document – 6 months
- SATP Architecture document – 12 months
- SATP Protocol document – 12 months





