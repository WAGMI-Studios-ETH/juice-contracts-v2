// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import './../structs/JBSplit.sol';
import './IJBSplitsStore.sol';

interface IJBSplitsPayer {
  event SetDefaultSplits(
    uint256 indexed projectId,
    uint256 indexed group,
    uint256 indexed domain,
    address caller
  );

  function defaultSplitsProjectId() external view returns (uint256);

  function defaultSplitsDomain() external view returns (uint256);

  function defaultSplitsGroup() external view returns (uint256);

  function splitsStore() external view returns (IJBSplitsStore);

  function setDefaultSplits(
    uint256 _projectId,
    uint256 _domain,
    uint256 _group
  ) external;
}
