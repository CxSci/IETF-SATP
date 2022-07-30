# IETF-SATP 

## IETF links

- The [proposed SATP charter](https://github.com/CxSci/IETF-SAT/blob/main/sat-charter-draft.md)

## Background

IETF Secure Asset Transfer (SAT) group

The goal of Secure Asset Transfer (SAT) is to develop a standard protocol which operates between two gateways for the purpose of transferring digital assets between networks or systems. Each gateway represents one network or system, and the SAT protocol performs a unidirectional transfer of a digital asset from the origin network to a destination network.

Aside from non-repudiation, the goal of the SAT protocol is to ensure that the properties of atomicity, consistency, isolation and durability (ACID) of a transfer of a digital asset are satisfied.

The requirement of consistency implies that asset transfer protocol always leaves both networks in a consistent state (that at any moment the asset must be located in one network only). Atomicity means that the protocol must guarantee that either the transfer commits entirely (completes) or entirely fails, where failure is taken to mean there is no change to the state of the asset in the origin network.

The property of isolation means that while a transfer is occurring to a digital asset from an origin network, no other state changes can occur to the asset. The property of durability means that once the transfer has been committed by both gateways, the commitment must hold regardless of subsequent unavailability (e.g. crash) of the gateways implementing the transfer protocol.

SAT will use existing IETF standards for various aspects of the protocol, including secure channel establishment (TLS), payload formats (JSON/JWT), digital signatures and encryption (JOSE, JWE), digital certificates (PKIX) and others.
