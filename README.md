# Career OS

Your private AI-powered career workspace.

Turn one messy CV into a polished master CV, compare it with real job posts, understand your match score, and generate ATS-friendly tailored CVs without starting from scratch every time.

Career OS is not another resume template. It is a repo-based workflow that your own AI assistant can read, run, and customize for you.

## What It Does

Career OS helps your AI assistant:

- Read and analyze your current CV
- Find weak sections, missing proof, unclear bullets, and ATS risks
- Build a reusable master CV
- Export clean, ATS-friendly PDFs
- Compare your CV with job postings
- Give a match score with real reasoning
- Create tailored CV versions for specific roles
- Keep changes traceable so you know what changed and why

## Try The Demo

The `examples/` folder contains synthetic career data so you can test the workflow without using a real CV first:

- `examples/sample-current-cv.md`
- `examples/sample-current-cv.pdf`
- `examples/sample-job-description.md`
- `examples/sample-match-report.md`
- `examples/sample-ats-report.md`

All examples are fictional and exist only to demonstrate the expected flow and output quality.

## How It Feels To Use

Instead of asking:

```text
Can you improve my CV?
```

You can ask:

```text
Here is my CV and here is a job posting. Score the match, explain the gaps, and create a tailored ATS-friendly version without inventing anything.
```

Career OS gives your assistant the rules, structure, and workflow so every session starts smarter.

## Default Workflow

1. Ask the user for their current CV.
2. Analyze the CV and identify improvements.
3. Create and save a polished master CV as a PDF.
4. Let the user share job posting links or pasted job descriptions.
5. Score the match between the posting and the master CV.
6. Explain strengths, gaps, risks, and suggested changes.
7. Create a tailored CV for the posting when useful.
8. Run an ATS compatibility check before every final CV export.

## Current Status

This repository is intentionally minimal. No app framework, language runtime, database, or hosting platform has been selected yet.

That keeps the project easy to adapt. The first version is a file-based workflow that any repo-aware AI assistant can understand before a full app is built.

Future versions can add application tracking, interview prep, networking follow-ups, and learning plans.

## Open In Your Own AI Assistant

This repo is designed so each user can open it with their own AI coding assistant or LLM workspace, such as Codex, Claude Code, Cursor, or another local repo-aware assistant. The assistant should read the repo instructions and run the same CV-first workflow locally for that user.

### Option 1: Use As A Template

If this repository is marked as a GitHub template:

1. Open the repository on GitHub.
2. Click **Use this template**.
3. Create a copy under your own GitHub account.
4. Clone your copy locally.
5. Open the folder in your AI coding assistant.

### Option 2: Clone Directly

```bash
git clone https://github.com/sozkan4/Career-OS.git
cd Career-OS
```

Then open this folder in your AI assistant and say:

```text
Read AGENTS.md, README.md, docs/customization.md, and docs/llm-workflow.md. Act as my Career OS assistant. Start by asking for my current CV, analyze it, help me create a master CV PDF, then let me compare it against job postings and create ATS-friendly tailored CVs.
```

For a quick no-risk demo, use:

```text
Read AGENTS.md, README.md, docs/llm-workflow.md, examples/sample-current-cv.md, and examples/sample-job-description.md. Run the Career OS workflow on the synthetic example data. Produce a match score, tailoring recommendations, and an ATS review.
```

## Local Setup

There are no required dependencies yet.

To create a local `.env` file from the example:

```bash
bash scripts/bootstrap.sh
```

## Repository Structure

```text
Career-OS/
├── AGENTS.md
├── README.md
├── .env.example
├── .gitignore
├── data/
├── docs/
│   ├── customization.md
│   └── llm-workflow.md
├── examples/
├── prompts/
└── scripts/
    └── bootstrap.sh
```

## Customization

Start with [docs/customization.md](docs/customization.md). It defines the core CV-first workflow and what to build first.

## Environment Variables

Copy `.env.example` to `.env` for local settings. Do not commit `.env`.
