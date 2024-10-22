#!/bin/bash

exec /opt/bin/snowbridge-relay run execution \
    --config /opt/config/asset-hub-ethereum-relay.json \
    --substrate.private-key-file <(aws secretsmanager get-secret-value \
        --secret-id "snowbridge/asset-hub-ethereum-relay" \
        --query SecretString \
        --output text)
