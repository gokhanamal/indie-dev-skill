---
name: indie-dev-skill
description: Design onboarding and subscription paywalls for mobile utility apps with pricing, trial, copy, and A/B test guidance for conversion-focused growth decisions.
---

# Indie Dev Skills

## Overview
Use this skill to build onboarding and paywall flows that drive Day-0 trial starts, annual plan adoption, and long-term retention. It combines onboarding guidance with paywall and pricing strategy.

## Scope And Assumptions
- Primary scope: mobile utility apps with subscription-led growth
- If region is missing, assume US and label that assumption explicitly
- If platform is missing, provide platform-agnostic guidance
- Treat all numeric benchmarks as rough planning targets, not guarantees

## Workflow Decision Tree

### 1) Clarify context
- App category, user problem, target regions
- Current pricing, trial setup, and metrics (if available)
- If data is missing, state assumptions before making recommendations

### 2) Build onboarding flow
- Identify user problem
- Personalize quickly (scan, quiz, or setup)
- Demonstrate value before pricing

### 3) Design paywall
- Multi-screen value -> proof -> trial -> pricing
- Annual plan highlighted and preselected
- Equivalent monthly cost shown for annual

### 4) Validate against defaults
- Trial attached to annual plan, 7–14 days
- “Cancel anytime” visible
- Paywall appears inside onboarding

### 5) Define experiments
- 2–4 A/B tests with hypotheses and success metrics

## Decision Policy (Conflict Arbitration)
- Start with Annual Default when:
- No strong evidence of high price sensitivity
- Category supports longer commitment (productivity, health, education, pro utility)
- Use Weekly Entry then Upsell when:
- Early data shows annual trial-start friction
- Audience is high-churn, low-commitment, or highly price-sensitive
- Resolution rule:
- If guidance conflicts, prioritize current product metrics over static defaults
- If metrics are unavailable, provide both variants and mark one as primary with rationale

## Starter Defaults (US Utility Apps, unless user overrides)
- Currency scope: USD only; localize prices before applying outside US
- Weekly: $4.99
- Monthly: $5.99
- Annual: $29.99 (Best Value highlight, default selected)
- Trial: 7-14 days, attached to annual, "Cancel anytime" visible
- Alternative variant to test: weekly-first entry with annual upsell

## Conflict Matrix
- `Annual default`: best for maximizing annual adoption and stronger upfront value framing
- `Weekly-first`: best for reducing Day-0 commitment friction in price-sensitive segments
- `Tie-breaker`: pick the option that improves `download -> trial` without harming `trial -> paid`

## Deliverables
Provide all or subset as requested:
- Onboarding screen sequence with goals
- Paywall flow outline (screen-by-screen)
- Pricing table and selection hierarchy
- Copy blocks (headline, subhead, benefits, CTA, disclaimers)
- Loss-aversion messaging variants
- Experiment plan with success metrics

## Required Response Template
Return outputs using these sections in order:
1. Assumptions
2. Recommended Onboarding Flow
3. Paywall Structure
4. Pricing And Trial Setup
5. Copy Variants
6. Experiment Plan (2-4 tests with hypothesis, primary metric, guardrail)
7. Risks And Tradeoffs

## References
- `references/onboarding-playbook-2025.md` - Onboarding rules, benchmarks, and tests
- `references/paywall-playbook-2025.md` - Pricing rules, trial strategy, benchmarks, and tests
- `references/subscription-apps-2025-highlights.md` - Report highlights on trial timing, conversion, and paywall placement
- `references/mobile-onboarding-usability-guidance.md` - Usability-first guidance on when onboarding is justified and how to keep it minimal
- `references/in-app-subscriptions-2025-highlights.md` - Pricing mix, regional trends, and paywall tactics

## Philosophy
- The decision to subscribe happens before the paywall
- Optimize for Day-0 trial starts and annual adoption
- Prefer clarity and value-first messaging over gimmicks
