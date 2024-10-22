#!/bin/bash

exec /opt/bin/snowbridge-relay run parachain \
    --config /opt/config/asset-hub-parachain-relay.json \
    --ethereum.private-key-file <(aws secretsmanager get-secret-value \
        --secret-id "snowbridge/asset-hub-parachain-relay" \
        --query SecretString \
        --output text)
