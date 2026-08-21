# Career OS

Career OS is a Codex-ready starter template for building a CV-first career operating system.

Use it to analyze a user's current CV, create a strong master CV, compare that CV against job postings, and generate ATS-friendly role-specific CV versions.

## Current Status

This repository is intentionally minimal. No app framework, language runtime, database, or hosting platform has been selected yet.

That keeps the project easy to adapt. The default product flow is:

1. Ask the user for their current CV.
2. Analyze the CV and identify improvements.
3. Create and save a polished master CV as a PDF.
4. Let the user share job posting links or pasted job descriptions.
5. Score the match between the posting and the master CV.
6. Explain strengths, gaps, risks, and suggested changes.
7. Create a tailored CV for the posting when useful.
8. Run an ATS compatibility check before every final CV export.

Future versions can add application tracking, interview prep, networking follow-ups, and learning plans.

## Open In Your Own Codex

This repo is designed so each user can open it with their own Codex or LLM coding assistant. The assistant should read the repo instructions and run the same CV-first workflow locally for that user.

### Option 1: Use As A Template

If this repository is marked as a GitHub template:

1. Open the repository on GitHub.
2. Click **Use this template**.
3. Create a copy under your own GitHub account.
4. Clone your copy locally.
5. Open the folder in Codex.

### Option 2: Clone Directly

```bash
git clone https://github.com/sozkan4/Career-OS.git
cd Career-OS
```

Then open this folder in Codex and say:

```text
Read AGENTS.md, README.md, docs/customization.md, and docs/llm-workflow.md. Act as my Career OS assistant. Start by asking for my current CV, analyze it, help me create a master CV PDF, then let me compare it against job postings and create ATS-friendly tailored CVs.
```

## Local Setup

There are no required dependencies yet.

To create a local `.env` file from the example:

```bash
./scripts/bootstrap.sh
```

If the script is not executable on your machine, run:

```bash
chmod +x scripts/bootstrap.sh
./scripts/bootstrap.sh
```

## Repository Structure

```text
Career-OS/
├── AGENTS.md
├── README.md
├── .env.example
├── .gitignore
├── docs/
│   ├── customization.md
│   └── llm-workflow.md
└── scripts/
    └── bootstrap.sh
```

## Customization

Start with [docs/customization.md](docs/customization.md). It defines the core CV-first workflow and what to build first.

## Environment Variables

Copy `.env.example` to `.env` for local settings. Do not commit `.env`.
