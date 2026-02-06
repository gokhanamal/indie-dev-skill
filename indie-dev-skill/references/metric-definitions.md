# Metric Definitions

Use these definitions consistently when planning or reporting experiments.

## Core Funnel Metrics
- `download -> trial`:
The percentage of app downloads that start a free trial.
Formula: `trial_starts / installs`

- `trial -> paid`:
The percentage of trial starts that convert to paid subscribers.
Formula: `paid_conversions_from_trial / trial_starts`

- `download -> paid`:
The percentage of app downloads that become paid subscribers.
Formula: `paid_subscribers / installs`

## Counting Boundaries
- Count each user once per reporting window for conversion metrics.
- Use the same attribution window across all variants in an A/B test.
- Exclude restored purchasers from new-conversion rate calculations unless explicitly required.
- Define when a trial start is recorded (e.g., successful store transaction callback) and keep that event definition stable.

## Reporting Rules
- Always report numerator, denominator, and resulting percentage.
- Pair primary conversion metrics with at least one guardrail metric (refund rate, cancellation rate, retention).
- Treat benchmark ranges as directional context, not expected guarantees.
