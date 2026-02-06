---
name: indie-dev-skill
description: Design onboarding and subscription paywalls for mobile apps with pricing, trial, copy, and A/B test guidance for conversion-focused growth decisions.
---

# Indie Dev Skills

## Quick Start
When invoked, return output in this exact section order:
1. Assumptions
2. Recommended Onboarding Flow
3. Paywall Structure
4. Pricing And Trial Setup
5. Copy Variants
6. Experiment Plan (2-4 tests with hypothesis, primary metric, guardrail)
7. Risks And Tradeoffs

Example output skeleton:
```markdown
## Assumptions
- Region: US
- Category: Mobile app

## Recommended Onboarding Flow
- Screen 1: Problem framing
- Screen 2: Personalization
- Screen 3: Value reveal

## Paywall Structure
- Value -> proof -> trial -> pricing

## Pricing And Trial Setup
- Default: annual plan with trial
- Second option: weekly plan
- Optional third option: monthly plan

## Copy Variants
- Headline A, Headline B

## Experiment Plan
- Test 1: hypothesis, primary metric, guardrail
- Test 2: hypothesis, primary metric, guardrail

## Risks And Tradeoffs
- Potential annual friction in price-sensitive users
```

## Overview
Use this skill to build onboarding and paywall flows that drive Day-0 trial starts, annual plan adoption, and long-term retention. It combines onboarding guidance with paywall and pricing strategy, with the paywall shown at the end of onboarding after meaningful user interaction.

## Scope And Assumptions
- Primary scope: mobile apps with subscription-led growth
- Primary user: solo developers and small indie teams with limited time and analytics depth
- If region is missing, assume US and label that assumption explicitly
- If platform is missing, provide platform-agnostic guidance
- Treat all numeric benchmarks as rough planning targets, not guarantees
- Utility-app benchmark references are directional; adapt recommendations by category

## Indie Execution Mode
When the user has limited data or engineering bandwidth:
- Prioritize the smallest shippable onboarding + paywall flow over complex optimization plans
- Recommend no more than 2 experiments per cycle
- Prefer single-variable tests over multi-variable designs
- Focus first on improving `download -> trial`, then `trial -> paid`
- Include a 1-week shipping plan with concrete steps

## Onboarding Placement Rule
- Require at least one meaningful user interaction before the paywall (input, selection, quiz, scan, or setup step)
- Show the paywall at the end of onboarding, not before the user interacts
- Ensure onboarding demonstrates user-specific value before pricing exposure

## Onboarding UX Rules
- Prefer no dedicated onboarding when the core flow is already obvious
- Use dedicated onboarding only when user data, personalization, or novel workflow explanation is required
- Keep onboarding short (typically 3-5 screens) with one concept per step
- Keep onboarding skippable with visible `Skip` and a clear progress indicator
- Avoid feature-promo carousels at first launch unless the feature is truly unfamiliar
- Prefer contextual help and in-flow guidance over long tutorial slides
- Defer visual theme customization until after users understand core app value

## Input Checklist
Capture these inputs before recommendations:
- Region and currency
- App category and target user
- Current plans and price points
- Trial setup (length, plan attachment, timing)
- Funnel metrics (`download -> trial`, `trial -> paid`, `download -> paid`)
- Constraints (brand, legal copy requirements, launch timing)

If inputs are missing, default to:
- Region: US
- Currency: USD
- Category: Mobile app
- Trial: 7-14 days attached to annual
- Team context: indie/solo, low analytics maturity

## Disallowed Outputs
Never include:
- Legal, tax, or compliance advice
- Backend billing architecture or server implementation plans
- SDK-specific setup instructions or tool walkthroughs
- App architecture mandates (MVVM/MVC or project-structure prescriptions)
- Guaranteed outcome claims from benchmark data

## Workflow Decision Tree

### 1) Clarify context
- App category, user problem, target regions
- Current pricing, trial setup, and metrics (if available)
- If data is missing, state assumptions before making recommendations

### 2) Build onboarding flow
- Identify user problem
- Personalize quickly (scan, quiz, or setup)
- Demonstrate value before pricing
- Include at least one interaction step before presenting the paywall
- Keep each step focused on one job and ensure skip/progress affordances are visible

### 3) Design paywall
- Multi-screen value -> proof -> trial -> pricing
- Annual plan highlighted and preselected
- Equivalent monthly cost shown for annual

### 4) Validate against defaults
- Trial attached to annual plan, 7–14 days
- “Cancel anytime” visible
- Paywall appears at the end of onboarding after interaction

### 5) Define experiments
- 2–4 A/B tests with hypotheses and success metrics
- If indie/low-data: narrow to 1–2 tests and run sequentially

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

## Starter Defaults (US Mobile Apps, unless user overrides)
- Currency scope: USD only; localize prices before applying outside US
- Primary default: Annual $29.99 with 7-14 day trial ("Best Value", default selected, "Cancel anytime" visible)
- Second option: Weekly $4.99
- Optional third option: Monthly $5.99
- Recommended first test variant: weekly-first entry with annual upsell

## Conflict Matrix
- `Annual + trial default`: best for maximizing annual adoption and stronger upfront value framing
- `Weekly second option`: best for reducing Day-0 commitment friction in price-sensitive segments
- `Tie-breaker`: pick the option that improves `download -> trial` without harming `trial -> paid`

## Deliverables
Provide all or subset as requested:
- Onboarding screen sequence with goals
- Interaction checkpoint before paywall
- Paywall flow outline (screen-by-screen)
- UI design tips for onboarding and paywall layout
- Pricing table and selection hierarchy
- Copy blocks (headline, subhead, benefits, CTA, disclaimers)
- Loss-aversion messaging variants
- Experiment plan with success metrics
- Lightweight implementation plan (what to ship this week)

## Minimum Event List (Optional)
If the user asks for instrumentation, keep it minimal:
- `onboarding_started`
- `onboarding_completed`
- `paywall_viewed`
- `trial_started`
- `subscription_purchased`
- `trial_canceled`

## Required Response Template
Return outputs using these sections in order:
1. Assumptions
2. Recommended Onboarding Flow
3. Paywall Structure
4. Pricing And Trial Setup
5. Copy Variants
6. Experiment Plan (2-4 tests with hypothesis, primary metric, guardrail)
7. Risks And Tradeoffs
8. Next 7 Days Plan

## References
- `references/onboarding-playbook.md` - Onboarding rules, benchmarks, and tests
- `references/paywall-playbook.md` - Pricing rules, trial strategy, benchmarks, and tests
- `references/subscription-apps-highlights.md` - Report highlights on trial timing, conversion, and paywall placement
- `references/mobile-onboarding-usability-guidance.md` - Usability-first guidance on when onboarding is justified and how to keep it minimal
- `references/mobile-onboarding-paywall-design-tips.md` - Practical mobile UI design tips for onboarding and paywall presentation
- `references/in-app-subscriptions-highlights.md` - Pricing mix, regional trends, and paywall tactics
- `references/metric-definitions.md` - Funnel metric definitions and calculation boundaries

## Philosophy
- The decision to subscribe happens before the paywall
- Optimize for Day-0 trial starts and annual adoption
- Prefer clarity and value-first messaging over gimmicks
