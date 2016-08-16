#!/usr/bin/env bash

nohup membersrvc &> /tmp/membersrvc.log &
sleep 3
CORE_PEER_ID=vp0 CORE_PEER_ADDRESSAUTODETECT=true CORE_SECURITY_ENABLED=true  CORE_SECURITY_PRIVACY=false CORE_PEER_PKI_ECA_PADDR=172.16.0.62:50051  CORE_PEER_PKI_TCA_PADDR=172.16.0.62:50051 CORE_PEER_PKI_TLSCA_PADDR=172.16.0.62:50051 CORE_SECURITY_ENROLLID=test_vp0 CORE_SECURITY_ENROLLSECRET=MwYpmSRjupbT CORE_PEER_VALIDATOR_CONSENSUS_PLUGIN=pbft peer node start &> /tmp/peer.log &
