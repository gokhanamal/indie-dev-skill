# Agent Guidelines for Subscription Onboarding and Paywall Skills

This document provides guidance for AI agents working with these skills to ensure consistency and avoid common pitfalls.

## Core Principles

### 1. Subscription Growth Focus Only
**This is an onboarding + paywall skill set.** Do not include:
- Backend or server architecture guidance
- Payment processing or compliance details
- Analytics SDK implementation steps
- App build or release instructions

**Exception**: Include a simple event list for instrumentation if the user asks.

### 2. No Code Formatting or Linting
**Do not include formatting or linting rules.** Avoid:
- Property ordering requirements
- Code organization mandates
- Whitespace or indentation rules
- Naming convention enforcement
- File structure requirements

**Exception**: Mention organization patterns as optional suggestions for readability, never as requirements.

### 3. No Architectural Opinions
**Stick to facts, not architectures.** Avoid:
- Enforcing MVVM, MVC, or any specific architecture
- Requiring specific folder structures
- Dictating dependency injection patterns
- Prescribing router or coordinator patterns

**Exception**: Suggest separating business logic for testability without enforcing how.

### 4. No Tool-Specific Instructions
**Agents cannot use external tools.** Do not include:
- Detailed A/B testing platform usage
- SDK-specific implementation instructions
- IDE-specific features
- Command-line tool usage beyond basic git

**Exception**: Mention that users can run experiments in their A/B testing platform without procedural steps.

## Content Guidelines

### Suggestions vs Requirements

**Use "suggest" or "consider" for optional optimizations:**
- ✅ "Consider testing 7 vs 14-day trials"
- ❌ "Always use 14-day trials"

**Use "always" or "never" only for correctness or core rules:**
- ✅ "Always show the annual plan as Best Value when using the default pricing"
- ✅ "Never hide the trial inside deep feature flows"

### Strategy Guidance

**Present strategy as rules of thumb, not guarantees.** Avoid promising results.

**Do not claim legal or compliance guidance.**

### Monetization Guidance

**Support hybrid monetization:**
- Subscription for full access
- Consumables or lifetime purchases as optional alternatives

## What to Include

### ✅ Include These Topics:
- Paywall timing and placement
- Pricing hierarchy and plan defaults
- Trial setup and messaging
- Value communication and loss aversion
- Onboarding flow steps and value demonstration
- Benchmarks as rough targets
- A/B test ideas with hypotheses

### ❌ Exclude These Topics:
- App architecture and code organization
- Backend billing implementation
- Payment compliance and tax guidance
- Tool-specific setup steps
- Extensive analytics instrumentation details

## Language and Tone

### Use Clear, Direct Language:
- "Use X instead of Y" (for conflicting patterns)
- "Consider X when Y" (for optional optimizations)
- "Avoid X because Y" (for anti-patterns)
- "X is preferred over Y" (for best practices)

### Avoid Prescriptive Language:
- ❌ "You must structure your project like this"
- ❌ "Always use MVVM"
- ❌ "Implement this SDK step-by-step"

## Examples

### Good Example:
```markdown
## Paywall Timing

**Always show the paywall during onboarding.** Never hide trials behind deep feature flows.

When you encounter annual pricing, consider showing the equivalent monthly cost.
```

### Bad Example:
```markdown
## Project Structure

**Always organize files like this:**
1. Models
2. Views
3. Controllers

**Implement this SDK by following these steps:**
1. Install package
2. Configure keys
3. Initialize in AppDelegate
```

## Updating the Skills

When adding new content:
1. Ask: "Is this directly about onboarding or paywalls?"
2. Ask: "Is this a fact or a preference?"
3. Ask: "Can agents actually use this without external tools?"
4. Ask: "Is this about correctness or optimization?"

If unsure, err on the side of excluding content.

## Summary

**Focus**: Onboarding + paywall strategy and copy
**Avoid**: Architecture, tooling, compliance
**Tone**: Factual, helpful, non-prescriptive
**Goal**: Make agents effective at subscription growth design without enforcing opinions
