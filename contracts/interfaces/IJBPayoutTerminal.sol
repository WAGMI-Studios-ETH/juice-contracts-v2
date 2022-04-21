// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

interface IJBPayoutTerminal {
  function distributePayoutsOf(
    uint256 _projectId,
    uint256 _amount,
    uint256 _currency,
    uint256 _minReturnedTokens,
    string calldata _memo
  ) external returns (uint256 netLeftoverDistributionAmount);

  function useAllowanceOf(
    uint256 _projectId,
    uint256 _amount,
    uint256 _currency,
    uint256 _minReturnedTokens,
    address payable _beneficiary,
    string calldata _memo
  ) external returns (uint256 netDistributedAmount);
}
