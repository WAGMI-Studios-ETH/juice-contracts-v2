// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import '../structs/JBGroupedSplits.sol';
import './IJBDirectory.sol';
import './IJBSplitsPayer.sol';
import './IJBSplitsStore.sol';

interface IJBETHERC20SplitsPayerDeployer {
  event DeploySplitsPayer(
    IJBSplitsPayer indexed splitsPayer,
    JBGroupedSplits splits,
    IJBSplitsStore _splitsStore,
    uint256 indexed defaultProjectId,
    address indexed defaultBeneficiary,
    bool defaultPreferClaimedTokens,
    string defaultMemo,
    bytes defaultMetadata,
    IJBDirectory directory,
    address owner,
    address caller
  );

  function deploySplitsPayer(
    JBGroupedSplits calldata _groupedSplits,
    IJBSplitsStore _splitsStore,
    uint256 _defaultProjectId,
    address payable _defaultBeneficiary,
    bool _defaultPreferClaimedTokens,
    string calldata _defaultMemo,
    bytes calldata _defaultMetadata,
    IJBDirectory _directory,
    address _owner
  ) external returns (IJBSplitsPayer splitsPayer);
}
