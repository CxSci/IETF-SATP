# SATP Lock Assertion Format Draft

We propose that the lock evidence format does not matter for SATP - instead, since the gateways trust each other, the origin gateway just needs to assert that the lock happened. Hence we are moving from a definition of a lock evidence towards the definition of a lock assertion.

## Format

Below you can find the initial proposed format for the assertion message.

```json
{
  	"gatewayId": "string",
    "networkId": "string",
    "assetId": "string",
    "assetProfileId": "string",
    "assetState": "string",
    "assetStateExpiration": "string"
}
```

## Field Definition and Discussion

- gatewayId - the id of the SATP gateway. We propose string DIDs, such as did:web:gateway.example#gateway42
- networkId - the id of the underlying network. Discussions are still ongoing, but one idea is to use the universal network id draft that Weijia's team created 
- assetId - the id of the asset (out of scope as we decided globally recognised asset ids should be handled by a legal entity)
- assetProfileId - asset type or profile that is the subject to the current transfer from the client and server
- assetState - one of the SATP states that the asset can be in, presumably, for this message the state will be "locked"
- assetStateExpiration - expiration time for the state, in milliseconds