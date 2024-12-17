# Elixir Enum.reduce Bug: Conditional Accumulation

This repository demonstrates a common pitfall when using Elixir's `Enum.reduce` function with conditional accumulation. The issue occurs when the condition within the reduce function is not met for any element in the list.  This leads to the accumulator retaining its initial value rather than accumulating any result. This example uses a simple integer list and a condition to highlight the subtle error.

The `bug.exs` file illustrates the problem; the `bugSolution.exs` demonstrates a corrected implementation.

## How to Reproduce

1. Clone this repository.
2. Navigate to the root directory.
3. Run `elixir bug.exs` in the terminal. Observe the unexpected output.
4. Run `elixir bugSolution.exs` to see the corrected behavior.

## Problem and Solution

The problem arises from the conditional logic within the `Enum.reduce`. If the condition `x > 3` is never true, the accumulator never updates.  The solution uses `Enum.filter` to pre-filter the list, ensuring that only elements satisfying the condition are processed.  This way, the `Enum.reduce` operates correctly on the relevant data.