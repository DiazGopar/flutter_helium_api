// To parse this JSON data, do
//
//     final chainVariables = chainVariablesFromJson(jsonString);

import 'dart:convert';

class ChainVariables {
  ChainVariables({
    required this.chainVariables,
  });

  final ChainVariablesClass chainVariables;

  ChainVariables copyWith({
    required ChainVariablesClass chainVariables,
  }) =>
      ChainVariables(
        chainVariables: this.chainVariables,
      );

  factory ChainVariables.fromRawJson(String str) =>
      ChainVariables.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChainVariables.fromJson(Map<String, dynamic> json) => ChainVariables(
        chainVariables: ChainVariablesClass.fromJson(json["ChainVariables"]),
      );

  Map<String, dynamic> toJson() => {
        "ChainVariables": chainVariables.toJson(),
      };
}

class ChainVariablesClass {
  ChainVariablesClass({
    required this.h3NeighborRes,
    required this.hip17Res5,
    required this.dcPercent,
    required this.electionSeenPenalty,
    required this.netEmissionsMaxRate,
    required this.pocTargetHexParentRes,
    required this.pocV4ProbTimeWt,
    required this.scGcInterval,
    required this.pocPathLimit,
    required this.batchSize,
    required this.electionRestartInterval,
    required this.stakingFeeTxnOuiV1,
    required this.stakingFeeTxnAssertLocationV1,
    required this.betaDecay,
    required this.netEmissionsEnabled,
    required this.pocV4TargetExclusionCells,
    required this.densityTgtRes,
    required this.predicateCallbackMod,
    required this.scMaxActors,
    required this.varGwInactivityThreshold,
    required this.minAssertH3Res,
    required this.electionSelectionPct,
    required this.snapshotInterval,
    required this.h3MaxGridDistance,
    required this.maxPayments,
    required this.pocV4ProbCountWt,
    required this.hip17Res11,
    required this.stakingFeeTxnAssertLocationDataonlyGatewayV1,
    required this.hip17Res10,
    required this.stakeWithdrawalMax,
    required this.hip17InteractivityBlocks,
    required this.predicateCallbackFun,
    required this.pocV4ExclusionCells,
    required this.stakingKeys,
    required this.priceOraclePublicKeys,
    required this.dataAggregationVersion,
    required this.numConsensusMembers,
    required this.pocAddrHashByteCount,
    required this.pocTypoFixes,
    required this.validatorPenaltyFilter,
    required this.pocWitnessConsiderationLimit,
    required this.dkgPenalty,
    required this.pocPerHopMaxWitnesses,
    required this.maxOpenSc,
    required this.stakingKeysToModeMappings,
    required this.regulatoryRegions,
    required this.chainVarsVersion,
    required this.pocV4TargetScoreCurve,
    required this.transferHotspotStalePocBlocks,
    required this.allowPaymentV2Memos,
    required this.pocV4ProbGoodRssi,
    required this.minSubnetSize,
    required this.predicateThreshold,
    required this.pocGoodBucketHigh,
    required this.stakingFeeTxnAddDataonlyGatewayV1,
    required this.electionBbaPenalty,
    required this.electionClusterRes,
    required this.pocCentralityWt,
    required this.hip17Res1,
    required this.txnFeeMultiplier,
    required this.pocV4ParentRes,
    required this.scOvercommit,
    required this.pocV4TargetProbEdgeWt,
    required this.validatorVersion,
    required this.witnessRefreshInterval,
    required this.stakingFeeTxnAddLightGatewayV1,
    required this.validatorLivenessInterval,
    required this.scVersion,
    required this.validatorLivenessGracePeriod,
    required this.txnFees,
    required this.pocChallengersPercent,
    required this.dkgCurve,
    required this.consensusPercent,
    required this.fullGatewayCapabilitiesMask,
    required this.validatorMinimumStake,
    required this.pocV4TargetChallengeAge,
    required this.pocGoodBucketLow,
    required this.electionReplacementSlope,
    required this.pocChallengeSyncInterval,
    required this.hip17Res9,
    required this.dcPayloadSize,
    required this.priceOracleRefreshInterval,
    required this.rewardsTxnVersion,
    required this.electionReplacementFactor,
    required this.pocV5TargetProbRandomnessWt,
    required this.maxXorFilterNum,
    required this.electionRemovalPct,
    required this.stakingFeeTxnAssertLocationLightGatewayV1,
    required this.pocRewardDecayRate,
    required this.maxStaleness,
    required this.pocChallengeesPercent,
    required this.allowZeroAmount,
    required this.scOnlyCountOpenActive,
    required this.blockTime,
    required this.dataonlyGatewayCapabilitiesMask,
    required this.maxAntennaGain,
    required this.hip17Res8,
    required this.hip15TxRewardUnitCap,
    required this.stakeWithdrawalCooldown,
    required this.pocChallengeInterval,
    required this.hip17Res12,
    required this.hip17Res3,
    required this.hip17Res6,
    required this.witnessRefreshRandN,
    required this.blockVersion,
    required this.pocV4RandomnessWt,
    required this.nonce,
    required this.electionInterval,
    required this.maxSubnetNum,
    required this.rewardVersion,
    required this.monthlyReward,
    required this.pocV4ProbBadRssi,
    required this.securitiesPercent,
    required this.varsCommitDelay,
    required this.scOpenValidationBugfix,
    required this.electionRestartIntervalRange,
    required this.penaltyHistoryLimit,
    required this.maxSubnetSize,
    required this.snapshotVersion,
    required this.pocVersion,
    required this.lightGatewayCapabilitiesMask,
    required this.pocV4TargetProbScoreWt,
    required this.tenurePenalty,
    required this.alphaDecay,
    required this.scGraceBlocks,
    required this.witnessRedundancy,
    required this.scCausalityFix,
    required this.maxXorFilterSize,
    required this.priceOraclePriceScanDelay,
    required this.hip17Res2,
    required this.hip17Res7,
    required this.pocV4ProbRssiWt,
    required this.priceOracleHeightDelta,
    required this.assertLocTxnVersion,
    required this.priceOraclePriceScanMax,
    required this.minScore,
    required this.stakingFeeTxnOuiV1PerAddress,
    required this.hip17Res4,
    required this.minAntennaGain,
    required this.minExpireWithin,
    required this.h3ExclusionRingDist,
    required this.fsplLoss,
    required this.hip17Res0,
    required this.electionVersion,
    required this.pocV4ProbNoRssi,
    required this.pocMaxHopCells,
    required this.pocWitnessesPercent,
    required this.stakingFeeTxnAddGatewayV1,
  });

  final int h3NeighborRes;
  final List<int> hip17Res5;
  final double dcPercent;
  final double electionSeenPenalty;
  final int netEmissionsMaxRate;
  final int pocTargetHexParentRes;
  final int pocV4ProbTimeWt;
  final int scGcInterval;
  final int pocPathLimit;
  final int batchSize;
  final int electionRestartInterval;
  final int stakingFeeTxnOuiV1;
  final int stakingFeeTxnAssertLocationV1;
  final double betaDecay;
  final bool netEmissionsEnabled;
  final int pocV4TargetExclusionCells;
  final int densityTgtRes;
  final String predicateCallbackMod;
  final int scMaxActors;
  final int varGwInactivityThreshold;
  final int minAssertH3Res;
  final int electionSelectionPct;
  final int snapshotInterval;
  final int h3MaxGridDistance;
  final int maxPayments;
  final int pocV4ProbCountWt;
  final List<int> hip17Res11;
  final int stakingFeeTxnAssertLocationDataonlyGatewayV1;
  final List<int> hip17Res10;
  final int stakeWithdrawalMax;
  final int hip17InteractivityBlocks;
  final String predicateCallbackFun;
  final int pocV4ExclusionCells;
  final List<String> stakingKeys;
  final List<String> priceOraclePublicKeys;
  final int dataAggregationVersion;
  final int numConsensusMembers;
  final int pocAddrHashByteCount;
  final bool pocTypoFixes;
  final int validatorPenaltyFilter;
  final int pocWitnessConsiderationLimit;
  final int dkgPenalty;
  final int pocPerHopMaxWitnesses;
  final int maxOpenSc;
  final StakingKeysToModeMappings stakingKeysToModeMappings;
  final String regulatoryRegions;
  final int chainVarsVersion;
  final int pocV4TargetScoreCurve;
  final int transferHotspotStalePocBlocks;
  final bool allowPaymentV2Memos;
  final int pocV4ProbGoodRssi;
  final int minSubnetSize;
  final double predicateThreshold;
  final int pocGoodBucketHigh;
  final int stakingFeeTxnAddDataonlyGatewayV1;
  final double electionBbaPenalty;
  final int electionClusterRes;
  final double pocCentralityWt;
  final List<int> hip17Res1;
  final int txnFeeMultiplier;
  final int pocV4ParentRes;
  final int scOvercommit;
  final int pocV4TargetProbEdgeWt;
  final int validatorVersion;
  final int witnessRefreshInterval;
  final int stakingFeeTxnAddLightGatewayV1;
  final int validatorLivenessInterval;
  final int scVersion;
  final int validatorLivenessGracePeriod;
  final bool txnFees;
  final double pocChallengersPercent;
  final String dkgCurve;
  final double consensusPercent;
  final int fullGatewayCapabilitiesMask;
  final int validatorMinimumStake;
  final int pocV4TargetChallengeAge;
  final int pocGoodBucketLow;
  final int electionReplacementSlope;
  final int pocChallengeSyncInterval;
  final List<int> hip17Res9;
  final int dcPayloadSize;
  final int priceOracleRefreshInterval;
  final int rewardsTxnVersion;
  final int electionReplacementFactor;
  final int pocV5TargetProbRandomnessWt;
  final int maxXorFilterNum;
  final int electionRemovalPct;
  final int stakingFeeTxnAssertLocationLightGatewayV1;
  final double pocRewardDecayRate;
  final int maxStaleness;
  final double pocChallengeesPercent;
  final bool allowZeroAmount;
  final bool scOnlyCountOpenActive;
  final int blockTime;
  final int dataonlyGatewayCapabilitiesMask;
  final int maxAntennaGain;
  final List<int> hip17Res8;
  final int hip15TxRewardUnitCap;
  final int stakeWithdrawalCooldown;
  final int pocChallengeInterval;
  final List<int> hip17Res12;
  final List<int> hip17Res3;
  final List<int> hip17Res6;
  final int witnessRefreshRandN;
  final String blockVersion;
  final double pocV4RandomnessWt;
  final int nonce;
  final int electionInterval;
  final int maxSubnetNum;
  final int rewardVersion;
  final int monthlyReward;
  final double pocV4ProbBadRssi;
  final double securitiesPercent;
  final int varsCommitDelay;
  final int scOpenValidationBugfix;
  final int electionRestartIntervalRange;
  final int penaltyHistoryLimit;
  final int maxSubnetSize;
  final int snapshotVersion;
  final int pocVersion;
  final int lightGatewayCapabilitiesMask;
  final int pocV4TargetProbScoreWt;
  final double tenurePenalty;
  final double alphaDecay;
  final int scGraceBlocks;
  final int witnessRedundancy;
  final int scCausalityFix;
  final int maxXorFilterSize;
  final int priceOraclePriceScanDelay;
  final List<int> hip17Res2;
  final List<int> hip17Res7;
  final int pocV4ProbRssiWt;
  final int priceOracleHeightDelta;
  final int assertLocTxnVersion;
  final int priceOraclePriceScanMax;
  final double minScore;
  final int stakingFeeTxnOuiV1PerAddress;
  final List<int> hip17Res4;
  final int minAntennaGain;
  final int minExpireWithin;
  final int h3ExclusionRingDist;
  final int fsplLoss;
  final List<int> hip17Res0;
  final int electionVersion;
  final double pocV4ProbNoRssi;
  final int pocMaxHopCells;
  final double pocWitnessesPercent;
  final int stakingFeeTxnAddGatewayV1;

  ChainVariablesClass copyWith({
    required int h3NeighborRes,
    required List<int> hip17Res5,
    required double dcPercent,
    required double electionSeenPenalty,
    required int netEmissionsMaxRate,
    required int pocTargetHexParentRes,
    required int pocV4ProbTimeWt,
    required int scGcInterval,
    required int pocPathLimit,
    required int batchSize,
    required int electionRestartInterval,
    required int stakingFeeTxnOuiV1,
    required int stakingFeeTxnAssertLocationV1,
    required double betaDecay,
    required bool netEmissionsEnabled,
    required int pocV4TargetExclusionCells,
    required int densityTgtRes,
    required String predicateCallbackMod,
    required int scMaxActors,
    required int varGwInactivityThreshold,
    required int minAssertH3Res,
    required int electionSelectionPct,
    required int snapshotInterval,
    required int h3MaxGridDistance,
    required int maxPayments,
    required int pocV4ProbCountWt,
    required List<int> hip17Res11,
    required int stakingFeeTxnAssertLocationDataonlyGatewayV1,
    required List<int> hip17Res10,
    required int stakeWithdrawalMax,
    required int hip17InteractivityBlocks,
    required String predicateCallbackFun,
    required int pocV4ExclusionCells,
    required List<String> stakingKeys,
    required List<String> priceOraclePublicKeys,
    required int dataAggregationVersion,
    required int numConsensusMembers,
    required int pocAddrHashByteCount,
    required bool pocTypoFixes,
    required int validatorPenaltyFilter,
    required int pocWitnessConsiderationLimit,
    required int dkgPenalty,
    required int pocPerHopMaxWitnesses,
    required int maxOpenSc,
    required StakingKeysToModeMappings stakingKeysToModeMappings,
    required String regulatoryRegions,
    required int chainVarsVersion,
    required int pocV4TargetScoreCurve,
    required int transferHotspotStalePocBlocks,
    required bool allowPaymentV2Memos,
    required int pocV4ProbGoodRssi,
    required int minSubnetSize,
    required double predicateThreshold,
    required int pocGoodBucketHigh,
    required int stakingFeeTxnAddDataonlyGatewayV1,
    required double electionBbaPenalty,
    required int electionClusterRes,
    required double pocCentralityWt,
    required List<int> hip17Res1,
    required int txnFeeMultiplier,
    required int pocV4ParentRes,
    required int scOvercommit,
    required int pocV4TargetProbEdgeWt,
    required int validatorVersion,
    required int witnessRefreshInterval,
    required int stakingFeeTxnAddLightGatewayV1,
    required int validatorLivenessInterval,
    required int scVersion,
    required int validatorLivenessGracePeriod,
    required bool txnFees,
    required double pocChallengersPercent,
    required String dkgCurve,
    required double consensusPercent,
    required int fullGatewayCapabilitiesMask,
    required int validatorMinimumStake,
    required int pocV4TargetChallengeAge,
    required int pocGoodBucketLow,
    required int electionReplacementSlope,
    required int pocChallengeSyncInterval,
    required List<int> hip17Res9,
    required int dcPayloadSize,
    required int priceOracleRefreshInterval,
    required int rewardsTxnVersion,
    required int electionReplacementFactor,
    required int pocV5TargetProbRandomnessWt,
    required int maxXorFilterNum,
    required int electionRemovalPct,
    required int stakingFeeTxnAssertLocationLightGatewayV1,
    required double pocRewardDecayRate,
    required int maxStaleness,
    required double pocChallengeesPercent,
    required bool allowZeroAmount,
    required bool scOnlyCountOpenActive,
    required int blockTime,
    required int dataonlyGatewayCapabilitiesMask,
    required int maxAntennaGain,
    required List<int> hip17Res8,
    required int hip15TxRewardUnitCap,
    required int stakeWithdrawalCooldown,
    required int pocChallengeInterval,
    required List<int> hip17Res12,
    required List<int> hip17Res3,
    required List<int> hip17Res6,
    required int witnessRefreshRandN,
    required String blockVersion,
    required double pocV4RandomnessWt,
    required int nonce,
    required int electionInterval,
    required int maxSubnetNum,
    required int rewardVersion,
    required int monthlyReward,
    required double pocV4ProbBadRssi,
    required double securitiesPercent,
    required int varsCommitDelay,
    required int scOpenValidationBugfix,
    required int electionRestartIntervalRange,
    required int penaltyHistoryLimit,
    required int maxSubnetSize,
    required int snapshotVersion,
    required int pocVersion,
    required int lightGatewayCapabilitiesMask,
    required int pocV4TargetProbScoreWt,
    required double tenurePenalty,
    required double alphaDecay,
    required int scGraceBlocks,
    required int witnessRedundancy,
    required int scCausalityFix,
    required int maxXorFilterSize,
    required int priceOraclePriceScanDelay,
    required List<int> hip17Res2,
    required List<int> hip17Res7,
    required int pocV4ProbRssiWt,
    required int priceOracleHeightDelta,
    required int assertLocTxnVersion,
    required int priceOraclePriceScanMax,
    required double minScore,
    required int stakingFeeTxnOuiV1PerAddress,
    required List<int> hip17Res4,
    required int minAntennaGain,
    required int minExpireWithin,
    required int h3ExclusionRingDist,
    required int fsplLoss,
    required List<int> hip17Res0,
    required int electionVersion,
    required double pocV4ProbNoRssi,
    required int pocMaxHopCells,
    required double pocWitnessesPercent,
    required int stakingFeeTxnAddGatewayV1,
  }) =>
      ChainVariablesClass(
        h3NeighborRes: this.h3NeighborRes,
        hip17Res5: this.hip17Res5,
        dcPercent: this.dcPercent,
        electionSeenPenalty: this.electionSeenPenalty,
        netEmissionsMaxRate: this.netEmissionsMaxRate,
        pocTargetHexParentRes: this.pocTargetHexParentRes,
        pocV4ProbTimeWt: this.pocV4ProbTimeWt,
        scGcInterval: this.scGcInterval,
        pocPathLimit: this.pocPathLimit,
        batchSize: this.batchSize,
        electionRestartInterval: this.electionRestartInterval,
        stakingFeeTxnOuiV1: this.stakingFeeTxnOuiV1,
        stakingFeeTxnAssertLocationV1: this.stakingFeeTxnAssertLocationV1,
        betaDecay: this.betaDecay,
        netEmissionsEnabled: this.netEmissionsEnabled,
        pocV4TargetExclusionCells: this.pocV4TargetExclusionCells,
        densityTgtRes: this.densityTgtRes,
        predicateCallbackMod: this.predicateCallbackMod,
        scMaxActors: this.scMaxActors,
        varGwInactivityThreshold: this.varGwInactivityThreshold,
        minAssertH3Res: this.minAssertH3Res,
        electionSelectionPct: this.electionSelectionPct,
        snapshotInterval: this.snapshotInterval,
        h3MaxGridDistance: this.h3MaxGridDistance,
        maxPayments: this.maxPayments,
        pocV4ProbCountWt: this.pocV4ProbCountWt,
        hip17Res11: this.hip17Res11,
        stakingFeeTxnAssertLocationDataonlyGatewayV1:
            this.stakingFeeTxnAssertLocationDataonlyGatewayV1,
        hip17Res10: this.hip17Res10,
        stakeWithdrawalMax: this.stakeWithdrawalMax,
        hip17InteractivityBlocks: this.hip17InteractivityBlocks,
        predicateCallbackFun: this.predicateCallbackFun,
        pocV4ExclusionCells: this.pocV4ExclusionCells,
        stakingKeys: this.stakingKeys,
        priceOraclePublicKeys: this.priceOraclePublicKeys,
        dataAggregationVersion: this.dataAggregationVersion,
        numConsensusMembers: this.numConsensusMembers,
        pocAddrHashByteCount: this.pocAddrHashByteCount,
        pocTypoFixes: this.pocTypoFixes,
        validatorPenaltyFilter: this.validatorPenaltyFilter,
        pocWitnessConsiderationLimit: this.pocWitnessConsiderationLimit,
        dkgPenalty: this.dkgPenalty,
        pocPerHopMaxWitnesses: this.pocPerHopMaxWitnesses,
        maxOpenSc: this.maxOpenSc,
        stakingKeysToModeMappings: this.stakingKeysToModeMappings,
        regulatoryRegions: this.regulatoryRegions,
        chainVarsVersion: this.chainVarsVersion,
        pocV4TargetScoreCurve: this.pocV4TargetScoreCurve,
        transferHotspotStalePocBlocks: this.transferHotspotStalePocBlocks,
        allowPaymentV2Memos: this.allowPaymentV2Memos,
        pocV4ProbGoodRssi: this.pocV4ProbGoodRssi,
        minSubnetSize: this.minSubnetSize,
        predicateThreshold: this.predicateThreshold,
        pocGoodBucketHigh: this.pocGoodBucketHigh,
        stakingFeeTxnAddDataonlyGatewayV1:
            this.stakingFeeTxnAddDataonlyGatewayV1,
        electionBbaPenalty: this.electionBbaPenalty,
        electionClusterRes: this.electionClusterRes,
        pocCentralityWt: this.pocCentralityWt,
        hip17Res1: this.hip17Res1,
        txnFeeMultiplier: this.txnFeeMultiplier,
        pocV4ParentRes: this.pocV4ParentRes,
        scOvercommit: this.scOvercommit,
        pocV4TargetProbEdgeWt: this.pocV4TargetProbEdgeWt,
        validatorVersion: this.validatorVersion,
        witnessRefreshInterval: this.witnessRefreshInterval,
        stakingFeeTxnAddLightGatewayV1: this.stakingFeeTxnAddLightGatewayV1,
        validatorLivenessInterval: this.validatorLivenessInterval,
        scVersion: this.scVersion,
        validatorLivenessGracePeriod: this.validatorLivenessGracePeriod,
        txnFees: this.txnFees,
        pocChallengersPercent: this.pocChallengersPercent,
        dkgCurve: this.dkgCurve,
        consensusPercent: this.consensusPercent,
        fullGatewayCapabilitiesMask: this.fullGatewayCapabilitiesMask,
        validatorMinimumStake: this.validatorMinimumStake,
        pocV4TargetChallengeAge: this.pocV4TargetChallengeAge,
        pocGoodBucketLow: this.pocGoodBucketLow,
        electionReplacementSlope: this.electionReplacementSlope,
        pocChallengeSyncInterval: this.pocChallengeSyncInterval,
        hip17Res9: this.hip17Res9,
        dcPayloadSize: this.dcPayloadSize,
        priceOracleRefreshInterval: this.priceOracleRefreshInterval,
        rewardsTxnVersion: this.rewardsTxnVersion,
        electionReplacementFactor: this.electionReplacementFactor,
        pocV5TargetProbRandomnessWt: this.pocV5TargetProbRandomnessWt,
        maxXorFilterNum: this.maxXorFilterNum,
        electionRemovalPct: this.electionRemovalPct,
        stakingFeeTxnAssertLocationLightGatewayV1:
            this.stakingFeeTxnAssertLocationLightGatewayV1,
        pocRewardDecayRate: this.pocRewardDecayRate,
        maxStaleness: this.maxStaleness,
        pocChallengeesPercent: this.pocChallengeesPercent,
        allowZeroAmount: this.allowZeroAmount,
        scOnlyCountOpenActive: this.scOnlyCountOpenActive,
        blockTime: this.blockTime,
        dataonlyGatewayCapabilitiesMask: this.dataonlyGatewayCapabilitiesMask,
        maxAntennaGain: this.maxAntennaGain,
        hip17Res8: this.hip17Res8,
        hip15TxRewardUnitCap: this.hip15TxRewardUnitCap,
        stakeWithdrawalCooldown: this.stakeWithdrawalCooldown,
        pocChallengeInterval: this.pocChallengeInterval,
        hip17Res12: this.hip17Res12,
        hip17Res3: this.hip17Res3,
        hip17Res6: this.hip17Res6,
        witnessRefreshRandN: this.witnessRefreshRandN,
        blockVersion: this.blockVersion,
        pocV4RandomnessWt: this.pocV4RandomnessWt,
        nonce: this.nonce,
        electionInterval: this.electionInterval,
        maxSubnetNum: this.maxSubnetNum,
        rewardVersion: this.rewardVersion,
        monthlyReward: this.monthlyReward,
        pocV4ProbBadRssi: this.pocV4ProbBadRssi,
        securitiesPercent: this.securitiesPercent,
        varsCommitDelay: this.varsCommitDelay,
        scOpenValidationBugfix: this.scOpenValidationBugfix,
        electionRestartIntervalRange: this.electionRestartIntervalRange,
        penaltyHistoryLimit: this.penaltyHistoryLimit,
        maxSubnetSize: this.maxSubnetSize,
        snapshotVersion: this.snapshotVersion,
        pocVersion: this.pocVersion,
        lightGatewayCapabilitiesMask: this.lightGatewayCapabilitiesMask,
        pocV4TargetProbScoreWt: this.pocV4TargetProbScoreWt,
        tenurePenalty: this.tenurePenalty,
        alphaDecay: this.alphaDecay,
        scGraceBlocks: this.scGraceBlocks,
        witnessRedundancy: this.witnessRedundancy,
        scCausalityFix: this.scCausalityFix,
        maxXorFilterSize: this.maxXorFilterSize,
        priceOraclePriceScanDelay: this.priceOraclePriceScanDelay,
        hip17Res2: this.hip17Res2,
        hip17Res7: this.hip17Res7,
        pocV4ProbRssiWt: this.pocV4ProbRssiWt,
        priceOracleHeightDelta: this.priceOracleHeightDelta,
        assertLocTxnVersion: this.assertLocTxnVersion,
        priceOraclePriceScanMax: this.priceOraclePriceScanMax,
        minScore: this.minScore,
        stakingFeeTxnOuiV1PerAddress: this.stakingFeeTxnOuiV1PerAddress,
        hip17Res4: this.hip17Res4,
        minAntennaGain: this.minAntennaGain,
        minExpireWithin: this.minExpireWithin,
        h3ExclusionRingDist: this.h3ExclusionRingDist,
        fsplLoss: this.fsplLoss,
        hip17Res0: this.hip17Res0,
        electionVersion: this.electionVersion,
        pocV4ProbNoRssi: this.pocV4ProbNoRssi,
        pocMaxHopCells: this.pocMaxHopCells,
        pocWitnessesPercent: this.pocWitnessesPercent,
        stakingFeeTxnAddGatewayV1: this.stakingFeeTxnAddGatewayV1,
      );

  factory ChainVariablesClass.fromRawJson(String str) =>
      ChainVariablesClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChainVariablesClass.fromJson(Map<String, dynamic> json) =>
      ChainVariablesClass(
        h3NeighborRes: json["h3_neighbor_res"],
        hip17Res5: List<int>.from(json["hip17_res_5"].map((x) => x)),
        dcPercent: json["dc_percent"].toDouble(),
        electionSeenPenalty: json["election_seen_penalty"].toDouble(),
        netEmissionsMaxRate: json["net_emissions_max_rate"],
        pocTargetHexParentRes: json["poc_target_hex_parent_res"],
        pocV4ProbTimeWt: json["poc_v4_prob_time_wt"],
        scGcInterval: json["sc_gc_interval"],
        pocPathLimit: json["poc_path_limit"],
        batchSize: json["batch_size"],
        electionRestartInterval: json["election_restart_interval"],
        stakingFeeTxnOuiV1: json["staking_fee_txn_oui_v1"],
        stakingFeeTxnAssertLocationV1:
            json["staking_fee_txn_assert_location_v1"],
        betaDecay: json["beta_decay"].toDouble(),
        netEmissionsEnabled: json["net_emissions_enabled"],
        pocV4TargetExclusionCells: json["poc_v4_target_exclusion_cells"],
        densityTgtRes: json["density_tgt_res"],
        predicateCallbackMod: json["predicate_callback_mod"],
        scMaxActors: json["sc_max_actors"],
        varGwInactivityThreshold: json["var_gw_inactivity_threshold"],
        minAssertH3Res: json["min_assert_h3_res"],
        electionSelectionPct: json["election_selection_pct"],
        snapshotInterval: json["snapshot_interval"],
        h3MaxGridDistance: json["h3_max_grid_distance"],
        maxPayments: json["max_payments"],
        pocV4ProbCountWt: json["poc_v4_prob_count_wt"],
        hip17Res11: List<int>.from(json["hip17_res_11"].map((x) => x)),
        stakingFeeTxnAssertLocationDataonlyGatewayV1:
            json["staking_fee_txn_assert_location_dataonly_gateway_v1"],
        hip17Res10: List<int>.from(json["hip17_res_10"].map((x) => x)),
        stakeWithdrawalMax: json["stake_withdrawal_max"],
        hip17InteractivityBlocks: json["hip17_interactivity_blocks"],
        predicateCallbackFun: json["predicate_callback_fun"],
        pocV4ExclusionCells: json["poc_v4_exclusion_cells"],
        stakingKeys: List<String>.from(json["staking_keys"].map((x) => x)),
        priceOraclePublicKeys:
            List<String>.from(json["price_oracle_public_keys"].map((x) => x)),
        dataAggregationVersion: json["data_aggregation_version"],
        numConsensusMembers: json["num_consensus_members"],
        pocAddrHashByteCount: json["poc_addr_hash_byte_count"],
        pocTypoFixes: json["poc_typo_fixes"],
        validatorPenaltyFilter: json["validator_penalty_filter"],
        pocWitnessConsiderationLimit: json["poc_witness_consideration_limit"],
        dkgPenalty: json["dkg_penalty"],
        pocPerHopMaxWitnesses: json["poc_per_hop_max_witnesses"],
        maxOpenSc: json["max_open_sc"],
        stakingKeysToModeMappings: StakingKeysToModeMappings.fromJson(
            json["staking_keys_to_mode_mappings"]),
        regulatoryRegions: json["regulatory_regions"],
        chainVarsVersion: json["chain_vars_version"],
        pocV4TargetScoreCurve: json["poc_v4_target_score_curve"],
        transferHotspotStalePocBlocks:
            json["transfer_hotspot_stale_poc_blocks"],
        allowPaymentV2Memos: json["allow_payment_v2_memos"],
        pocV4ProbGoodRssi: json["poc_v4_prob_good_rssi"],
        minSubnetSize: json["min_subnet_size"],
        predicateThreshold: json["predicate_threshold"].toDouble(),
        pocGoodBucketHigh: json["poc_good_bucket_high"],
        stakingFeeTxnAddDataonlyGatewayV1:
            json["staking_fee_txn_add_dataonly_gateway_v1"],
        electionBbaPenalty: json["election_bba_penalty"].toDouble(),
        electionClusterRes: json["election_cluster_res"],
        pocCentralityWt: json["poc_centrality_wt"].toDouble(),
        hip17Res1: List<int>.from(json["hip17_res_1"].map((x) => x)),
        txnFeeMultiplier: json["txn_fee_multiplier"],
        pocV4ParentRes: json["poc_v4_parent_res"],
        scOvercommit: json["sc_overcommit"],
        pocV4TargetProbEdgeWt: json["poc_v4_target_prob_edge_wt"],
        validatorVersion: json["validator_version"],
        witnessRefreshInterval: json["witness_refresh_interval"],
        stakingFeeTxnAddLightGatewayV1:
            json["staking_fee_txn_add_light_gateway_v1"],
        validatorLivenessInterval: json["validator_liveness_interval"],
        scVersion: json["sc_version"],
        validatorLivenessGracePeriod: json["validator_liveness_grace_period"],
        txnFees: json["txn_fees"],
        pocChallengersPercent: json["poc_challengers_percent"].toDouble(),
        dkgCurve: json["dkg_curve"],
        consensusPercent: json["consensus_percent"].toDouble(),
        fullGatewayCapabilitiesMask: json["full_gateway_capabilities_mask"],
        validatorMinimumStake: json["validator_minimum_stake"],
        pocV4TargetChallengeAge: json["poc_v4_target_challenge_age"],
        pocGoodBucketLow: json["poc_good_bucket_low"],
        electionReplacementSlope: json["election_replacement_slope"],
        pocChallengeSyncInterval: json["poc_challenge_sync_interval"],
        hip17Res9: List<int>.from(json["hip17_res_9"].map((x) => x)),
        dcPayloadSize: json["dc_payload_size"],
        priceOracleRefreshInterval: json["price_oracle_refresh_interval"],
        rewardsTxnVersion: json["rewards_txn_version"],
        electionReplacementFactor: json["election_replacement_factor"],
        pocV5TargetProbRandomnessWt: json["poc_v5_target_prob_randomness_wt"],
        maxXorFilterNum: json["max_xor_filter_num"],
        electionRemovalPct: json["election_removal_pct"],
        stakingFeeTxnAssertLocationLightGatewayV1:
            json["staking_fee_txn_assert_location_light_gateway_v1"],
        pocRewardDecayRate: json["poc_reward_decay_rate"].toDouble(),
        maxStaleness: json["max_staleness"],
        pocChallengeesPercent: json["poc_challengees_percent"].toDouble(),
        allowZeroAmount: json["allow_zero_amount"],
        scOnlyCountOpenActive: json["sc_only_count_open_active"],
        blockTime: json["block_time"],
        dataonlyGatewayCapabilitiesMask:
            json["dataonly_gateway_capabilities_mask"],
        maxAntennaGain: json["max_antenna_gain"],
        hip17Res8: List<int>.from(json["hip17_res_8"].map((x) => x)),
        hip15TxRewardUnitCap: json["hip15_tx_reward_unit_cap"],
        stakeWithdrawalCooldown: json["stake_withdrawal_cooldown"],
        pocChallengeInterval: json["poc_challenge_interval"],
        hip17Res12: List<int>.from(json["hip17_res_12"].map((x) => x)),
        hip17Res3: List<int>.from(json["hip17_res_3"].map((x) => x)),
        hip17Res6: List<int>.from(json["hip17_res_6"].map((x) => x)),
        witnessRefreshRandN: json["witness_refresh_rand_n"],
        blockVersion: json["block_version"],
        pocV4RandomnessWt: json["poc_v4_randomness_wt"].toDouble(),
        nonce: json["nonce"],
        electionInterval: json["election_interval"],
        maxSubnetNum: json["max_subnet_num"],
        rewardVersion: json["reward_version"],
        monthlyReward: json["monthly_reward"],
        pocV4ProbBadRssi: json["poc_v4_prob_bad_rssi"].toDouble(),
        securitiesPercent: json["securities_percent"].toDouble(),
        varsCommitDelay: json["vars_commit_delay"],
        scOpenValidationBugfix: json["sc_open_validation_bugfix"],
        electionRestartIntervalRange: json["election_restart_interval_range"],
        penaltyHistoryLimit: json["penalty_history_limit"],
        maxSubnetSize: json["max_subnet_size"],
        snapshotVersion: json["snapshot_version"],
        pocVersion: json["poc_version"],
        lightGatewayCapabilitiesMask: json["light_gateway_capabilities_mask"],
        pocV4TargetProbScoreWt: json["poc_v4_target_prob_score_wt"],
        tenurePenalty: json["tenure_penalty"].toDouble(),
        alphaDecay: json["alpha_decay"].toDouble(),
        scGraceBlocks: json["sc_grace_blocks"],
        witnessRedundancy: json["witness_redundancy"],
        scCausalityFix: json["sc_causality_fix"],
        maxXorFilterSize: json["max_xor_filter_size"],
        priceOraclePriceScanDelay: json["price_oracle_price_scan_delay"],
        hip17Res2: List<int>.from(json["hip17_res_2"].map((x) => x)),
        hip17Res7: List<int>.from(json["hip17_res_7"].map((x) => x)),
        pocV4ProbRssiWt: json["poc_v4_prob_rssi_wt"],
        priceOracleHeightDelta: json["price_oracle_height_delta"],
        assertLocTxnVersion: json["assert_loc_txn_version"],
        priceOraclePriceScanMax: json["price_oracle_price_scan_max"],
        minScore: json["min_score"].toDouble(),
        stakingFeeTxnOuiV1PerAddress:
            json["staking_fee_txn_oui_v1_per_address"],
        hip17Res4: List<int>.from(json["hip17_res_4"].map((x) => x)),
        minAntennaGain: json["min_antenna_gain"],
        minExpireWithin: json["min_expire_within"],
        h3ExclusionRingDist: json["h3_exclusion_ring_dist"],
        fsplLoss: json["fspl_loss"],
        hip17Res0: List<int>.from(json["hip17_res_0"].map((x) => x)),
        electionVersion: json["election_version"],
        pocV4ProbNoRssi: json["poc_v4_prob_no_rssi"].toDouble(),
        pocMaxHopCells: json["poc_max_hop_cells"],
        pocWitnessesPercent: json["poc_witnesses_percent"].toDouble(),
        stakingFeeTxnAddGatewayV1: json["staking_fee_txn_add_gateway_v1"],
      );

  Map<String, dynamic> toJson() => {
        "h3_neighbor_res": h3NeighborRes,
        "hip17_res_5": List<dynamic>.from(hip17Res5.map((x) => x)),
        "dc_percent": dcPercent,
        "election_seen_penalty": electionSeenPenalty,
        "net_emissions_max_rate": netEmissionsMaxRate,
        "poc_target_hex_parent_res": pocTargetHexParentRes,
        "poc_v4_prob_time_wt": pocV4ProbTimeWt,
        "sc_gc_interval": scGcInterval,
        "poc_path_limit": pocPathLimit,
        "batch_size": batchSize,
        "election_restart_interval": electionRestartInterval,
        "staking_fee_txn_oui_v1": stakingFeeTxnOuiV1,
        "staking_fee_txn_assert_location_v1": stakingFeeTxnAssertLocationV1,
        "beta_decay": betaDecay,
        "net_emissions_enabled": netEmissionsEnabled,
        "poc_v4_target_exclusion_cells": pocV4TargetExclusionCells,
        "density_tgt_res": densityTgtRes,
        "predicate_callback_mod": predicateCallbackMod,
        "sc_max_actors": scMaxActors,
        "var_gw_inactivity_threshold": varGwInactivityThreshold,
        "min_assert_h3_res": minAssertH3Res,
        "election_selection_pct": electionSelectionPct,
        "snapshot_interval": snapshotInterval,
        "h3_max_grid_distance": h3MaxGridDistance,
        "max_payments": maxPayments,
        "poc_v4_prob_count_wt": pocV4ProbCountWt,
        "hip17_res_11": List<dynamic>.from(hip17Res11.map((x) => x)),
        "staking_fee_txn_assert_location_dataonly_gateway_v1":
            stakingFeeTxnAssertLocationDataonlyGatewayV1,
        "hip17_res_10": List<dynamic>.from(hip17Res10.map((x) => x)),
        "stake_withdrawal_max": stakeWithdrawalMax,
        "hip17_interactivity_blocks": hip17InteractivityBlocks,
        "predicate_callback_fun": predicateCallbackFun,
        "poc_v4_exclusion_cells": pocV4ExclusionCells,
        "staking_keys": List<dynamic>.from(stakingKeys.map((x) => x)),
        "price_oracle_public_keys":
            List<dynamic>.from(priceOraclePublicKeys.map((x) => x)),
        "data_aggregation_version": dataAggregationVersion,
        "num_consensus_members": numConsensusMembers,
        "poc_addr_hash_byte_count": pocAddrHashByteCount,
        "poc_typo_fixes": pocTypoFixes,
        "validator_penalty_filter": validatorPenaltyFilter,
        "poc_witness_consideration_limit": pocWitnessConsiderationLimit,
        "dkg_penalty": dkgPenalty,
        "poc_per_hop_max_witnesses": pocPerHopMaxWitnesses,
        "max_open_sc": maxOpenSc,
        "staking_keys_to_mode_mappings": stakingKeysToModeMappings.toJson(),
        "regulatory_regions": regulatoryRegions,
        "chain_vars_version": chainVarsVersion,
        "poc_v4_target_score_curve": pocV4TargetScoreCurve,
        "transfer_hotspot_stale_poc_blocks": transferHotspotStalePocBlocks,
        "allow_payment_v2_memos": allowPaymentV2Memos,
        "poc_v4_prob_good_rssi": pocV4ProbGoodRssi,
        "min_subnet_size": minSubnetSize,
        "predicate_threshold": predicateThreshold,
        "poc_good_bucket_high": pocGoodBucketHigh,
        "staking_fee_txn_add_dataonly_gateway_v1":
            stakingFeeTxnAddDataonlyGatewayV1,
        "election_bba_penalty": electionBbaPenalty,
        "election_cluster_res": electionClusterRes,
        "poc_centrality_wt": pocCentralityWt,
        "hip17_res_1": List<dynamic>.from(hip17Res1.map((x) => x)),
        "txn_fee_multiplier": txnFeeMultiplier,
        "poc_v4_parent_res": pocV4ParentRes,
        "sc_overcommit": scOvercommit,
        "poc_v4_target_prob_edge_wt": pocV4TargetProbEdgeWt,
        "validator_version": validatorVersion,
        "witness_refresh_interval": witnessRefreshInterval,
        "staking_fee_txn_add_light_gateway_v1": stakingFeeTxnAddLightGatewayV1,
        "validator_liveness_interval": validatorLivenessInterval,
        "sc_version": scVersion,
        "validator_liveness_grace_period": validatorLivenessGracePeriod,
        "txn_fees": txnFees,
        "poc_challengers_percent": pocChallengersPercent,
        "dkg_curve": dkgCurve,
        "consensus_percent": consensusPercent,
        "full_gateway_capabilities_mask": fullGatewayCapabilitiesMask,
        "validator_minimum_stake": validatorMinimumStake,
        "poc_v4_target_challenge_age": pocV4TargetChallengeAge,
        "poc_good_bucket_low": pocGoodBucketLow,
        "election_replacement_slope": electionReplacementSlope,
        "poc_challenge_sync_interval": pocChallengeSyncInterval,
        "hip17_res_9": List<dynamic>.from(hip17Res9.map((x) => x)),
        "dc_payload_size": dcPayloadSize,
        "price_oracle_refresh_interval": priceOracleRefreshInterval,
        "rewards_txn_version": rewardsTxnVersion,
        "election_replacement_factor": electionReplacementFactor,
        "poc_v5_target_prob_randomness_wt": pocV5TargetProbRandomnessWt,
        "max_xor_filter_num": maxXorFilterNum,
        "election_removal_pct": electionRemovalPct,
        "staking_fee_txn_assert_location_light_gateway_v1":
            stakingFeeTxnAssertLocationLightGatewayV1,
        "poc_reward_decay_rate": pocRewardDecayRate,
        "max_staleness": maxStaleness,
        "poc_challengees_percent": pocChallengeesPercent,
        "allow_zero_amount": allowZeroAmount,
        "sc_only_count_open_active": scOnlyCountOpenActive,
        "block_time": blockTime,
        "dataonly_gateway_capabilities_mask": dataonlyGatewayCapabilitiesMask,
        "max_antenna_gain": maxAntennaGain,
        "hip17_res_8": List<dynamic>.from(hip17Res8.map((x) => x)),
        "hip15_tx_reward_unit_cap": hip15TxRewardUnitCap,
        "stake_withdrawal_cooldown": stakeWithdrawalCooldown,
        "poc_challenge_interval": pocChallengeInterval,
        "hip17_res_12": List<dynamic>.from(hip17Res12.map((x) => x)),
        "hip17_res_3": List<dynamic>.from(hip17Res3.map((x) => x)),
        "hip17_res_6": List<dynamic>.from(hip17Res6.map((x) => x)),
        "witness_refresh_rand_n": witnessRefreshRandN,
        "block_version": blockVersion,
        "poc_v4_randomness_wt": pocV4RandomnessWt,
        "nonce": nonce,
        "election_interval": electionInterval,
        "max_subnet_num": maxSubnetNum,
        "reward_version": rewardVersion,
        "monthly_reward": monthlyReward,
        "poc_v4_prob_bad_rssi": pocV4ProbBadRssi,
        "securities_percent": securitiesPercent,
        "vars_commit_delay": varsCommitDelay,
        "sc_open_validation_bugfix": scOpenValidationBugfix,
        "election_restart_interval_range": electionRestartIntervalRange,
        "penalty_history_limit": penaltyHistoryLimit,
        "max_subnet_size": maxSubnetSize,
        "snapshot_version": snapshotVersion,
        "poc_version": pocVersion,
        "light_gateway_capabilities_mask": lightGatewayCapabilitiesMask,
        "poc_v4_target_prob_score_wt": pocV4TargetProbScoreWt,
        "tenure_penalty": tenurePenalty,
        "alpha_decay": alphaDecay,
        "sc_grace_blocks": scGraceBlocks,
        "witness_redundancy": witnessRedundancy,
        "sc_causality_fix": scCausalityFix,
        "max_xor_filter_size": maxXorFilterSize,
        "price_oracle_price_scan_delay": priceOraclePriceScanDelay,
        "hip17_res_2": List<dynamic>.from(hip17Res2.map((x) => x)),
        "hip17_res_7": List<dynamic>.from(hip17Res7.map((x) => x)),
        "poc_v4_prob_rssi_wt": pocV4ProbRssiWt,
        "price_oracle_height_delta": priceOracleHeightDelta,
        "assert_loc_txn_version": assertLocTxnVersion,
        "price_oracle_price_scan_max": priceOraclePriceScanMax,
        "min_score": minScore,
        "staking_fee_txn_oui_v1_per_address": stakingFeeTxnOuiV1PerAddress,
        "hip17_res_4": List<dynamic>.from(hip17Res4.map((x) => x)),
        "min_antenna_gain": minAntennaGain,
        "min_expire_within": minExpireWithin,
        "h3_exclusion_ring_dist": h3ExclusionRingDist,
        "fspl_loss": fsplLoss,
        "hip17_res_0": List<dynamic>.from(hip17Res0.map((x) => x)),
        "election_version": electionVersion,
        "poc_v4_prob_no_rssi": pocV4ProbNoRssi,
        "poc_max_hop_cells": pocMaxHopCells,
        "poc_witnesses_percent": pocWitnessesPercent,
        "staking_fee_txn_add_gateway_v1": stakingFeeTxnAddGatewayV1,
      };
}

class StakingKeysToModeMappings {
  StakingKeysToModeMappings({
    required this.the14SKWeeYwqWrBSnLGq79URQqZyw3Ldi7OBdxbF6A54QboTnbxdl,
    required this.the14Rb2UcfS9U89QmKswpZpjRcuvcVu1HaSyqyGy486EvsYtvdJmR,
    required this.the14ILrXUuGVhb7W1P8X3IBvRwoT9OemgbDonm5VvzJk56TdV8Nv1,
    required this.the14IC6N1HkqUjH7WeChHvQhPqJ1HbWbKpZxzVeHHykCa7TNdyf2C,
    required this.the14H2Zf1GEr9NmvDb2U53QucLn2JLrKu1EcBoxGnSnQ6TiT6V2KM,
    required this.the14Go8HvEDnotWTyhYv6Hu5PTnRuaQzJqbB6DsDm1OThkCcZe9Zd,
    required this.the14EUfY1GsjK4Wh6UZYoeagnFtigBKdvPruAxLmc5UsUmeDj3Yib,
    required this.the14Nbxje5KAaztMigY4DcjXsmg4CSqjYwvteQWwQsYhsu2Tkn6Af,
    required this.the14DdSjvEkBq46XQ24LAtHwQkAeoUuzHfGCosgJe33NRq6RZwPg3,
    required this.the146S5XCtvB1VwqYzJnRr8GoiAdufTscGaUb2IhKubvYuvMrrNCx,
    required this.the143Qf5DTGyAg1FqaE85MPApvjauFu8FUy6WavirQfJjDgSkC4Gn,
    required this.the13Y2EqUUzyQhQGtDSoXktz8M5JHnSiwAkltYnHNxZq2UH5GgGym,
    required this.the13V9IGhjvQUtVaZXcFfrcEbL1NPr4R8QJowBgMUcaGm2V1AV6Mn,
    required this.the13DaGgWvDQyTyHfdcPz8ZDsvtWgPnNfJ4Oh31Teec4TrWfjMx53,
    required this.the13CbbZXzqwp6Ymm5JvAu5T1TRhenEnejvu5Q8VpLhunQye1Acpp,
    required this.the13Zni1He7Ky9PUmkXMhEhTwfUpL9AcEv1M2UbbvFsrU9QptMgE3,
    required this.the13XuP2DjHehVkKguDdzd2Ev5AeqMLuJ8Uq44EfEcDmVTnBcvc6F,
    required this.the13Mpg5HCNjSxHJvWjaanwJpBuTXu1D4G5PGvGBkqQe3F8MAwXhK,
    required this.the13Ms2KZhu4H6Wp3TExgoHdDFjBsb9Hb9JBvcbK9XmfNyJ7JqzVv,
    required this.the13LVwCqZekltVnf3SjGpy1NMkTe7FWtUVjmDfeuscMFgeK3F9Pn,
    required this.the13H6RpJojJjkqPRfzdrFbDbpYw4B3A6HyMxgGfRgXf31Nuwq4XJ,
    required this.the13ENbEqpAvytjLnqavnbSAzurhGoCsNkGecMx7EHhdAfEaDirdY,
    required this.the134C7Hn3VhfBlqZex4PVwtxQ2UPjh97H9Yd2Bhzy1W2XhMJyY6D,
    required this.the12ZX4JgDgMbJgRwmCfRngxBuphkQRqkUTcLzYhtQvd4Qgu8KiL4,
  });

  final String the14SKWeeYwqWrBSnLGq79URQqZyw3Ldi7OBdxbF6A54QboTnbxdl;
  final String the14Rb2UcfS9U89QmKswpZpjRcuvcVu1HaSyqyGy486EvsYtvdJmR;
  final String the14ILrXUuGVhb7W1P8X3IBvRwoT9OemgbDonm5VvzJk56TdV8Nv1;
  final String the14IC6N1HkqUjH7WeChHvQhPqJ1HbWbKpZxzVeHHykCa7TNdyf2C;
  final String the14H2Zf1GEr9NmvDb2U53QucLn2JLrKu1EcBoxGnSnQ6TiT6V2KM;
  final String the14Go8HvEDnotWTyhYv6Hu5PTnRuaQzJqbB6DsDm1OThkCcZe9Zd;
  final String the14EUfY1GsjK4Wh6UZYoeagnFtigBKdvPruAxLmc5UsUmeDj3Yib;
  final String the14Nbxje5KAaztMigY4DcjXsmg4CSqjYwvteQWwQsYhsu2Tkn6Af;
  final String the14DdSjvEkBq46XQ24LAtHwQkAeoUuzHfGCosgJe33NRq6RZwPg3;
  final String the146S5XCtvB1VwqYzJnRr8GoiAdufTscGaUb2IhKubvYuvMrrNCx;
  final String the143Qf5DTGyAg1FqaE85MPApvjauFu8FUy6WavirQfJjDgSkC4Gn;
  final String the13Y2EqUUzyQhQGtDSoXktz8M5JHnSiwAkltYnHNxZq2UH5GgGym;
  final String the13V9IGhjvQUtVaZXcFfrcEbL1NPr4R8QJowBgMUcaGm2V1AV6Mn;
  final String the13DaGgWvDQyTyHfdcPz8ZDsvtWgPnNfJ4Oh31Teec4TrWfjMx53;
  final String the13CbbZXzqwp6Ymm5JvAu5T1TRhenEnejvu5Q8VpLhunQye1Acpp;
  final String the13Zni1He7Ky9PUmkXMhEhTwfUpL9AcEv1M2UbbvFsrU9QptMgE3;
  final String the13XuP2DjHehVkKguDdzd2Ev5AeqMLuJ8Uq44EfEcDmVTnBcvc6F;
  final String the13Mpg5HCNjSxHJvWjaanwJpBuTXu1D4G5PGvGBkqQe3F8MAwXhK;
  final String the13Ms2KZhu4H6Wp3TExgoHdDFjBsb9Hb9JBvcbK9XmfNyJ7JqzVv;
  final String the13LVwCqZekltVnf3SjGpy1NMkTe7FWtUVjmDfeuscMFgeK3F9Pn;
  final String the13H6RpJojJjkqPRfzdrFbDbpYw4B3A6HyMxgGfRgXf31Nuwq4XJ;
  final String the13ENbEqpAvytjLnqavnbSAzurhGoCsNkGecMx7EHhdAfEaDirdY;
  final String the134C7Hn3VhfBlqZex4PVwtxQ2UPjh97H9Yd2Bhzy1W2XhMJyY6D;
  final String the12ZX4JgDgMbJgRwmCfRngxBuphkQRqkUTcLzYhtQvd4Qgu8KiL4;

  StakingKeysToModeMappings copyWith({
    required String the14SKWeeYwqWrBSnLGq79URQqZyw3Ldi7OBdxbF6A54QboTnbxdl,
    required String the14Rb2UcfS9U89QmKswpZpjRcuvcVu1HaSyqyGy486EvsYtvdJmR,
    required String the14ILrXUuGVhb7W1P8X3IBvRwoT9OemgbDonm5VvzJk56TdV8Nv1,
    required String the14IC6N1HkqUjH7WeChHvQhPqJ1HbWbKpZxzVeHHykCa7TNdyf2C,
    required String the14H2Zf1GEr9NmvDb2U53QucLn2JLrKu1EcBoxGnSnQ6TiT6V2KM,
    required String the14Go8HvEDnotWTyhYv6Hu5PTnRuaQzJqbB6DsDm1OThkCcZe9Zd,
    required String the14EUfY1GsjK4Wh6UZYoeagnFtigBKdvPruAxLmc5UsUmeDj3Yib,
    required String the14Nbxje5KAaztMigY4DcjXsmg4CSqjYwvteQWwQsYhsu2Tkn6Af,
    required String the14DdSjvEkBq46XQ24LAtHwQkAeoUuzHfGCosgJe33NRq6RZwPg3,
    required String the146S5XCtvB1VwqYzJnRr8GoiAdufTscGaUb2IhKubvYuvMrrNCx,
    required String the143Qf5DTGyAg1FqaE85MPApvjauFu8FUy6WavirQfJjDgSkC4Gn,
    required String the13Y2EqUUzyQhQGtDSoXktz8M5JHnSiwAkltYnHNxZq2UH5GgGym,
    required String the13V9IGhjvQUtVaZXcFfrcEbL1NPr4R8QJowBgMUcaGm2V1AV6Mn,
    required String the13DaGgWvDQyTyHfdcPz8ZDsvtWgPnNfJ4Oh31Teec4TrWfjMx53,
    required String the13CbbZXzqwp6Ymm5JvAu5T1TRhenEnejvu5Q8VpLhunQye1Acpp,
    required String the13Zni1He7Ky9PUmkXMhEhTwfUpL9AcEv1M2UbbvFsrU9QptMgE3,
    required String the13XuP2DjHehVkKguDdzd2Ev5AeqMLuJ8Uq44EfEcDmVTnBcvc6F,
    required String the13Mpg5HCNjSxHJvWjaanwJpBuTXu1D4G5PGvGBkqQe3F8MAwXhK,
    required String the13Ms2KZhu4H6Wp3TExgoHdDFjBsb9Hb9JBvcbK9XmfNyJ7JqzVv,
    required String the13LVwCqZekltVnf3SjGpy1NMkTe7FWtUVjmDfeuscMFgeK3F9Pn,
    required String the13H6RpJojJjkqPRfzdrFbDbpYw4B3A6HyMxgGfRgXf31Nuwq4XJ,
    required String the13ENbEqpAvytjLnqavnbSAzurhGoCsNkGecMx7EHhdAfEaDirdY,
    required String the134C7Hn3VhfBlqZex4PVwtxQ2UPjh97H9Yd2Bhzy1W2XhMJyY6D,
    required String the12ZX4JgDgMbJgRwmCfRngxBuphkQRqkUTcLzYhtQvd4Qgu8KiL4,
  }) =>
      StakingKeysToModeMappings(
        the14SKWeeYwqWrBSnLGq79URQqZyw3Ldi7OBdxbF6A54QboTnbxdl:
            this.the14SKWeeYwqWrBSnLGq79URQqZyw3Ldi7OBdxbF6A54QboTnbxdl,
        the14Rb2UcfS9U89QmKswpZpjRcuvcVu1HaSyqyGy486EvsYtvdJmR:
            this.the14Rb2UcfS9U89QmKswpZpjRcuvcVu1HaSyqyGy486EvsYtvdJmR,
        the14ILrXUuGVhb7W1P8X3IBvRwoT9OemgbDonm5VvzJk56TdV8Nv1:
            this.the14ILrXUuGVhb7W1P8X3IBvRwoT9OemgbDonm5VvzJk56TdV8Nv1,
        the14IC6N1HkqUjH7WeChHvQhPqJ1HbWbKpZxzVeHHykCa7TNdyf2C:
            this.the14IC6N1HkqUjH7WeChHvQhPqJ1HbWbKpZxzVeHHykCa7TNdyf2C,
        the14H2Zf1GEr9NmvDb2U53QucLn2JLrKu1EcBoxGnSnQ6TiT6V2KM:
            this.the14H2Zf1GEr9NmvDb2U53QucLn2JLrKu1EcBoxGnSnQ6TiT6V2KM,
        the14Go8HvEDnotWTyhYv6Hu5PTnRuaQzJqbB6DsDm1OThkCcZe9Zd:
            this.the14Go8HvEDnotWTyhYv6Hu5PTnRuaQzJqbB6DsDm1OThkCcZe9Zd,
        the14EUfY1GsjK4Wh6UZYoeagnFtigBKdvPruAxLmc5UsUmeDj3Yib:
            this.the14EUfY1GsjK4Wh6UZYoeagnFtigBKdvPruAxLmc5UsUmeDj3Yib,
        the14Nbxje5KAaztMigY4DcjXsmg4CSqjYwvteQWwQsYhsu2Tkn6Af:
            this.the14Nbxje5KAaztMigY4DcjXsmg4CSqjYwvteQWwQsYhsu2Tkn6Af,
        the14DdSjvEkBq46XQ24LAtHwQkAeoUuzHfGCosgJe33NRq6RZwPg3:
            this.the14DdSjvEkBq46XQ24LAtHwQkAeoUuzHfGCosgJe33NRq6RZwPg3,
        the146S5XCtvB1VwqYzJnRr8GoiAdufTscGaUb2IhKubvYuvMrrNCx:
            this.the146S5XCtvB1VwqYzJnRr8GoiAdufTscGaUb2IhKubvYuvMrrNCx,
        the143Qf5DTGyAg1FqaE85MPApvjauFu8FUy6WavirQfJjDgSkC4Gn:
            this.the143Qf5DTGyAg1FqaE85MPApvjauFu8FUy6WavirQfJjDgSkC4Gn,
        the13Y2EqUUzyQhQGtDSoXktz8M5JHnSiwAkltYnHNxZq2UH5GgGym:
            this.the13Y2EqUUzyQhQGtDSoXktz8M5JHnSiwAkltYnHNxZq2UH5GgGym,
        the13V9IGhjvQUtVaZXcFfrcEbL1NPr4R8QJowBgMUcaGm2V1AV6Mn:
            this.the13V9IGhjvQUtVaZXcFfrcEbL1NPr4R8QJowBgMUcaGm2V1AV6Mn,
        the13DaGgWvDQyTyHfdcPz8ZDsvtWgPnNfJ4Oh31Teec4TrWfjMx53:
            this.the13DaGgWvDQyTyHfdcPz8ZDsvtWgPnNfJ4Oh31Teec4TrWfjMx53,
        the13CbbZXzqwp6Ymm5JvAu5T1TRhenEnejvu5Q8VpLhunQye1Acpp:
            this.the13CbbZXzqwp6Ymm5JvAu5T1TRhenEnejvu5Q8VpLhunQye1Acpp,
        the13Zni1He7Ky9PUmkXMhEhTwfUpL9AcEv1M2UbbvFsrU9QptMgE3:
            this.the13Zni1He7Ky9PUmkXMhEhTwfUpL9AcEv1M2UbbvFsrU9QptMgE3,
        the13XuP2DjHehVkKguDdzd2Ev5AeqMLuJ8Uq44EfEcDmVTnBcvc6F:
            this.the13XuP2DjHehVkKguDdzd2Ev5AeqMLuJ8Uq44EfEcDmVTnBcvc6F,
        the13Mpg5HCNjSxHJvWjaanwJpBuTXu1D4G5PGvGBkqQe3F8MAwXhK:
            this.the13Mpg5HCNjSxHJvWjaanwJpBuTXu1D4G5PGvGBkqQe3F8MAwXhK,
        the13Ms2KZhu4H6Wp3TExgoHdDFjBsb9Hb9JBvcbK9XmfNyJ7JqzVv:
            this.the13Ms2KZhu4H6Wp3TExgoHdDFjBsb9Hb9JBvcbK9XmfNyJ7JqzVv,
        the13LVwCqZekltVnf3SjGpy1NMkTe7FWtUVjmDfeuscMFgeK3F9Pn:
            this.the13LVwCqZekltVnf3SjGpy1NMkTe7FWtUVjmDfeuscMFgeK3F9Pn,
        the13H6RpJojJjkqPRfzdrFbDbpYw4B3A6HyMxgGfRgXf31Nuwq4XJ:
            this.the13H6RpJojJjkqPRfzdrFbDbpYw4B3A6HyMxgGfRgXf31Nuwq4XJ,
        the13ENbEqpAvytjLnqavnbSAzurhGoCsNkGecMx7EHhdAfEaDirdY:
            this.the13ENbEqpAvytjLnqavnbSAzurhGoCsNkGecMx7EHhdAfEaDirdY,
        the134C7Hn3VhfBlqZex4PVwtxQ2UPjh97H9Yd2Bhzy1W2XhMJyY6D:
            this.the134C7Hn3VhfBlqZex4PVwtxQ2UPjh97H9Yd2Bhzy1W2XhMJyY6D,
        the12ZX4JgDgMbJgRwmCfRngxBuphkQRqkUTcLzYhtQvd4Qgu8KiL4:
            this.the12ZX4JgDgMbJgRwmCfRngxBuphkQRqkUTcLzYhtQvd4Qgu8KiL4,
      );

  factory StakingKeysToModeMappings.fromRawJson(String str) =>
      StakingKeysToModeMappings.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StakingKeysToModeMappings.fromJson(Map<String, dynamic> json) =>
      StakingKeysToModeMappings(
        the14SKWeeYwqWrBSnLGq79URQqZyw3Ldi7OBdxbF6A54QboTnbxdl:
            json["14sKWeeYWQWrBSnLGq79uRQqZyw3Ldi7oBdxbF6a54QboTNBXDL"],
        the14Rb2UcfS9U89QmKswpZpjRcuvcVu1HaSyqyGy486EvsYtvdJmR:
            json["14rb2UcfS9U89QmKswpZpjRCUVCVu1haSyqyGY486EvsYtvdJmR"],
        the14ILrXUuGVhb7W1P8X3IBvRwoT9OemgbDonm5VvzJk56TdV8Nv1:
            json["14iLrXUuGVhb7w1P8X3iBvRwoT9oemgbDonm5VVZJk56TdV8NV1"],
        the14IC6N1HkqUjH7WeChHvQhPqJ1HbWbKpZxzVeHHykCa7TNdyf2C:
            json["14iC6N1HkqUjH7WEChHVQhPqJ1hbWBKpZXZVeHHykCA7tNDYF2C"],
        the14H2Zf1GEr9NmvDb2U53QucLn2JLrKu1EcBoxGnSnQ6TiT6V2KM:
            json["14h2zf1gEr9NmvDb2U53qucLN2jLrKU1ECBoxGnSnQ6tiT6V2kM"],
        the14Go8HvEDnotWTyhYv6Hu5PTnRuaQzJqbB6DsDm1OThkCcZe9Zd:
            json["14go8hvEDnotWTyhYv6Hu5PTnRUAQzJqbB6dsDm1oThkCcZe9zd"],
        the14EUfY1GsjK4Wh6UZYoeagnFtigBKdvPruAxLmc5UsUmeDj3Yib:
            json["14eUfY1GsjK4WH6uZYoeagnFtigBKdvPruAXLmc5UsUMEDj3yib"],
        the14Nbxje5KAaztMigY4DcjXsmg4CSqjYwvteQWwQsYhsu2Tkn6Af:
            json["14NBXJE5kAAZTMigY4dcjXSMG4CSqjYwvteQWwQsYhsu2TKN6AF"],
        the14DdSjvEkBq46XQ24LAtHwQkAeoUuzHfGCosgJe33NRq6RZwPg3:
            json["14DdSjvEkBQ46xQ24LAtHwQkAeoUUZHfGCosgJe33nRQ6rZwPG3"],
        the146S5XCtvB1VwqYzJnRr8GoiAdufTscGaUb2IhKubvYuvMrrNCx:
            json["146S5XCtvB1VwqYzJnRr8goiADUFTscGAUb2ihKUBVYuvMrrNCx"],
        the143Qf5DTGyAg1FqaE85MPApvjauFu8FUy6WavirQfJjDgSkC4Gn:
            json["143QF5dTGyAg1FqaE85mPApvjauFU8fUy6wavirQfJJDgSkC4gn"],
        the13Y2EqUUzyQhQGtDSoXktz8M5JHnSiwAkltYnHNxZq2UH5GgGym:
            json["13y2EqUUzyQhQGtDSoXktz8m5jHNSiwAKLTYnHNxZq2uH5GGGym"],
        the13V9IGhjvQUtVaZXcFfrcEbL1NPr4R8QJowBgMUcaGm2V1AV6Mn:
            json["13v9iGhjvQUtVaZXcFFRCEbL1nPR4R8QJowBgMUcaGM2v1aV6mn"],
        the13DaGgWvDQyTyHfdcPz8ZDsvtWgPnNfJ4Oh31Teec4TrWfjMx53:
            json["13daGGWvDQyTyHFDCPz8zDSVTWgPNNfJ4oh31Teec4TRWfjMx53"],
        the13CbbZXzqwp6Ymm5JvAu5T1TRhenEnejvu5Q8VpLhunQye1Acpp:
            json["13cbbZXzqwp6YMM5JvAu5T1TRhenENEJVU5Q8vpLhunQYE1Acpp"],
        the13Zni1He7Ky9PUmkXMhEhTwfUpL9AcEv1M2UbbvFsrU9QptMgE3:
            json["13Zni1he7KY9pUmkXMhEhTwfUpL9AcEV1m2UbbvFsrU9QPTMgE3"],
        the13XuP2DjHehVkKguDdzd2Ev5AeqMLuJ8Uq44EfEcDmVTnBcvc6F:
            json["13XuP2DjHEHVkKguDDZD2ev5AeqMLuJ8UQ44efEcDmVTnBcvc6F"],
        the13Mpg5HCNjSxHJvWjaanwJpBuTXu1D4G5PGvGBkqQe3F8MAwXhK:
            json["13Mpg5hCNjSxHJvWjaanwJPBuTXu1d4g5pGvGBkqQe3F8mAwXhK"],
        the13Ms2KZhu4H6Wp3TExgoHdDFjBsb9Hb9JBvcbK9XmfNyJ7JqzVv:
            json["13MS2kZHU4h6wp3tExgoHdDFjBsb9HB9JBvcbK9XmfNyJ7jqzVv"],
        the13LVwCqZekltVnf3SjGpy1NMkTe7FWtUVjmDfeuscMFgeK3F9Pn:
            json["13LVwCqZEKLTVnf3sjGPY1NMkTE7fWtUVjmDfeuscMFgeK3f9pn"],
        the13H6RpJojJjkqPRfzdrFbDbpYw4B3A6HyMxgGfRgXf31Nuwq4XJ:
            json["13H6RpJojJjkqPRfzdrFBDbpYw4b3A6HyMxgGFRgXf31Nuwq4xJ"],
        the13ENbEqpAvytjLnqavnbSAzurhGoCsNkGecMx7EHhdAfEaDirdY:
            json["13ENbEQPAvytjLnqavnbSAzurhGoCSNkGECMx7eHHDAfEaDirdY"],
        the134C7Hn3VhfBlqZex4PVwtxQ2UPjh97H9Yd2Bhzy1W2XhMJyY6D:
            json["134C7Hn3vhfBLQZex4PVwtxQ2uPJH97h9YD2bhzy1W2XhMJyY6d"],
        the12ZX4JgDgMbJgRwmCfRngxBuphkQRqkUTcLzYhtQvd4Qgu8KiL4:
            json["12zX4jgDGMbJgRwmCfRNGXBuphkQRqkUTcLzYHTQvd4Qgu8kiL4"],
      );

  Map<String, dynamic> toJson() => {
        "14sKWeeYWQWrBSnLGq79uRQqZyw3Ldi7oBdxbF6a54QboTNBXDL":
            the14SKWeeYwqWrBSnLGq79URQqZyw3Ldi7OBdxbF6A54QboTnbxdl,
        "14rb2UcfS9U89QmKswpZpjRCUVCVu1haSyqyGY486EvsYtvdJmR":
            the14Rb2UcfS9U89QmKswpZpjRcuvcVu1HaSyqyGy486EvsYtvdJmR,
        "14iLrXUuGVhb7w1P8X3iBvRwoT9oemgbDonm5VVZJk56TdV8NV1":
            the14ILrXUuGVhb7W1P8X3IBvRwoT9OemgbDonm5VvzJk56TdV8Nv1,
        "14iC6N1HkqUjH7WEChHVQhPqJ1hbWBKpZXZVeHHykCA7tNDYF2C":
            the14IC6N1HkqUjH7WeChHvQhPqJ1HbWbKpZxzVeHHykCa7TNdyf2C,
        "14h2zf1gEr9NmvDb2U53qucLN2jLrKU1ECBoxGnSnQ6tiT6V2kM":
            the14H2Zf1GEr9NmvDb2U53QucLn2JLrKu1EcBoxGnSnQ6TiT6V2KM,
        "14go8hvEDnotWTyhYv6Hu5PTnRUAQzJqbB6dsDm1oThkCcZe9zd":
            the14Go8HvEDnotWTyhYv6Hu5PTnRuaQzJqbB6DsDm1OThkCcZe9Zd,
        "14eUfY1GsjK4WH6uZYoeagnFtigBKdvPruAXLmc5UsUMEDj3yib":
            the14EUfY1GsjK4Wh6UZYoeagnFtigBKdvPruAxLmc5UsUmeDj3Yib,
        "14NBXJE5kAAZTMigY4dcjXSMG4CSqjYwvteQWwQsYhsu2TKN6AF":
            the14Nbxje5KAaztMigY4DcjXsmg4CSqjYwvteQWwQsYhsu2Tkn6Af,
        "14DdSjvEkBQ46xQ24LAtHwQkAeoUUZHfGCosgJe33nRQ6rZwPG3":
            the14DdSjvEkBq46XQ24LAtHwQkAeoUuzHfGCosgJe33NRq6RZwPg3,
        "146S5XCtvB1VwqYzJnRr8goiADUFTscGAUb2ihKUBVYuvMrrNCx":
            the146S5XCtvB1VwqYzJnRr8GoiAdufTscGaUb2IhKubvYuvMrrNCx,
        "143QF5dTGyAg1FqaE85mPApvjauFU8fUy6wavirQfJJDgSkC4gn":
            the143Qf5DTGyAg1FqaE85MPApvjauFu8FUy6WavirQfJjDgSkC4Gn,
        "13y2EqUUzyQhQGtDSoXktz8m5jHNSiwAKLTYnHNxZq2uH5GGGym":
            the13Y2EqUUzyQhQGtDSoXktz8M5JHnSiwAkltYnHNxZq2UH5GgGym,
        "13v9iGhjvQUtVaZXcFFRCEbL1nPR4R8QJowBgMUcaGM2v1aV6mn":
            the13V9IGhjvQUtVaZXcFfrcEbL1NPr4R8QJowBgMUcaGm2V1AV6Mn,
        "13daGGWvDQyTyHFDCPz8zDSVTWgPNNfJ4oh31Teec4TRWfjMx53":
            the13DaGgWvDQyTyHfdcPz8ZDsvtWgPnNfJ4Oh31Teec4TrWfjMx53,
        "13cbbZXzqwp6YMM5JvAu5T1TRhenENEJVU5Q8vpLhunQYE1Acpp":
            the13CbbZXzqwp6Ymm5JvAu5T1TRhenEnejvu5Q8VpLhunQye1Acpp,
        "13Zni1he7KY9pUmkXMhEhTwfUpL9AcEV1m2UbbvFsrU9QPTMgE3":
            the13Zni1He7Ky9PUmkXMhEhTwfUpL9AcEv1M2UbbvFsrU9QptMgE3,
        "13XuP2DjHEHVkKguDDZD2ev5AeqMLuJ8UQ44efEcDmVTnBcvc6F":
            the13XuP2DjHehVkKguDdzd2Ev5AeqMLuJ8Uq44EfEcDmVTnBcvc6F,
        "13Mpg5hCNjSxHJvWjaanwJPBuTXu1d4g5pGvGBkqQe3F8mAwXhK":
            the13Mpg5HCNjSxHJvWjaanwJpBuTXu1D4G5PGvGBkqQe3F8MAwXhK,
        "13MS2kZHU4h6wp3tExgoHdDFjBsb9HB9JBvcbK9XmfNyJ7jqzVv":
            the13Ms2KZhu4H6Wp3TExgoHdDFjBsb9Hb9JBvcbK9XmfNyJ7JqzVv,
        "13LVwCqZEKLTVnf3sjGPY1NMkTE7fWtUVjmDfeuscMFgeK3f9pn":
            the13LVwCqZekltVnf3SjGpy1NMkTe7FWtUVjmDfeuscMFgeK3F9Pn,
        "13H6RpJojJjkqPRfzdrFBDbpYw4b3A6HyMxgGFRgXf31Nuwq4xJ":
            the13H6RpJojJjkqPRfzdrFbDbpYw4B3A6HyMxgGfRgXf31Nuwq4XJ,
        "13ENbEQPAvytjLnqavnbSAzurhGoCSNkGECMx7eHHDAfEaDirdY":
            the13ENbEqpAvytjLnqavnbSAzurhGoCsNkGecMx7EHhdAfEaDirdY,
        "134C7Hn3vhfBLQZex4PVwtxQ2uPJH97h9YD2bhzy1W2XhMJyY6d":
            the134C7Hn3VhfBlqZex4PVwtxQ2UPjh97H9Yd2Bhzy1W2XhMJyY6D,
        "12zX4jgDGMbJgRwmCfRNGXBuphkQRqkUTcLzYHTQvd4Qgu8kiL4":
            the12ZX4JgDgMbJgRwmCfRngxBuphkQRqkUTcLzYhtQvd4Qgu8KiL4,
      };
}
