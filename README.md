# Indie Dev Skills

Expert guidance for any AI coding tool that supports the [Agent Skills open format](https://agentskills.io/home) — onboarding and subscription paywalls for mobile utility apps, with a focus on Day-0 trials, annual adoption, and value-first messaging.

This skill distills practical onboarding and paywall best practices into actionable, concise references for agents and growth workflows.

## Who this is for
- Indie developers shipping subscription-based mobile apps
- Teams refining onboarding, paywalls, pricing, and trials
- Anyone optimizing trial starts, trial-to-paid conversion, and annual adoption

## How to Use This Skill

### Option A: Using skills.sh (recommended)
Install this skill with a single command:

```bash
npx skills add https://github.com/gokhanamal/indie-dev-skill --skill indie-dev-skill
```

Then use the skill in your AI agent, for example:
> Use the indie-dev-skill skill and design an onboarding flow with an early paywall and annual plan focus

### Option B: Claude Code Plugin

#### Personal Usage
To install this Skill for your personal use in Claude Code:

1. Add the marketplace:

```bash
/plugin marketplace add gokhanamal/indie-dev-skill
```

2. Install the Skill:

```bash
/plugin install indie-dev-skill@indie-dev-skill
```

#### Project Configuration
To automatically provide this Skill to everyone working in a repository, configure the repository's `.claude/settings.json`:

```json
{
  "enabledPlugins": {
    "indie-dev-skill@indie-dev-skill": true
  },
  "extraKnownMarketplaces": {
    "indie-dev-skill": {
      "source": {
        "source": "github",
        "repo": "gokhanamal/indie-dev-skill"
      }
    }
  }
}
```

### Option C: Manual install
1) **Clone** this repository.
2) **Install or symlink** the `indie-dev-skill/` folder following your tool’s official skills installation docs.
3) **Use your AI tool** as usual and ask it to use the “indie-dev-skill” skill for onboarding and paywall tasks.

## What This Skill Offers

This skill gives your AI tool practical guidance. It can:

### Design Onboarding Flows
- Identify the user’s core problem and success moment
- Personalize early (scan, quiz, setup)
- Demonstrate value before pricing
- Place the paywall inside onboarding

### Build Paywalls That Convert
- Multi-screen paywall flow (value -> proof -> trial -> pricing)
- Clear plan hierarchy with annual highlighted
- Loss-aversion messaging variants
- Trial placement and “cancel anytime” framing

### Improve Pricing and Experiments
- Default plan setup and annual focus
- Pricing mix insights (weekly vs monthly vs annual)
- A/B tests for timing, copy, trial length, and plan defaults

## Example Prompts

### Prompt 1: New App Launch
```text
Use the indie-dev-skill skill. Build an onboarding + paywall plan for a new AI scanner app in the US.
No existing funnel data. I need copy and 3 experiments.
```

Expected output shape:
```text
Assumptions
Recommended Onboarding Flow
Paywall Structure
Pricing And Trial Setup
Copy Variants
Experiment Plan
Risks And Tradeoffs
```

### Prompt 2: Underperforming Conversion
```text
Use the indie-dev-skill skill. My metrics are:
download->trial 4.1%, trial->paid 21%. Trial is 3 days on monthly only.
Suggest fixes and tests.
```

Expected output shape:
```text
Assumptions
Recommended Onboarding Flow
Paywall Structure
Pricing And Trial Setup
Copy Variants
Experiment Plan
Risks And Tradeoffs
```

### Prompt 3: Regionalization
```text
Use the indie-dev-skill skill. We are launching in US + Western Europe.
Give a regional pricing/trial strategy with guardrails.
```

Expected output shape:
```text
Assumptions
Recommended Onboarding Flow
Paywall Structure
Pricing And Trial Setup
Copy Variants
Experiment Plan
Risks And Tradeoffs
```

## What Makes This Skill Different

**Non-Opinionated**: Focuses on conversion fundamentals, not app architecture.

**Evidence-informed**: Uses benchmark data and industry reports for trial timing and paywall placement.

**Practical & concise**: Treats the agent as capable; provides decision trees and ready-to-use outputs.

## Skill Structure
<!-- BEGIN REFERENCE STRUCTURE -->
```text
indie-dev-skill/
  SKILL.md
  references/
    metric-definitions.md - Funnel metric definitions and calculation boundaries
    in-app-subscriptions-2025-highlights.md - Pricing mix, regional trends, and paywall tactics
    mobile-onboarding-usability-guidance.md - When onboarding is justified and how to keep it minimal
    onboarding-playbook-2025.md - Onboarding rules, benchmarks, and tests
    paywall-playbook-2025.md - Pricing rules, trial strategy, benchmarks, and tests
    subscription-apps-2025-highlights.md - Trial timing, conversion, and paywall placement
```
<!-- END REFERENCE STRUCTURE -->

## Contributing

Contributions are welcome. This repository follows the [Agent Skills open format](https://agentskills.io/home), which has specific structural requirements.

## License

This skill is open-source and available under the MIT License. See [LICENSE](LICENSE) for details.
