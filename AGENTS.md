# Career OS Agent Guide

## Project Status

This repository is currently an AI-assistant-ready starter template for a personal Career OS. No application stack has been selected yet.

Do not assume a framework, package manager, database, or hosting platform unless the user explicitly chooses one or the repository later contains the relevant files.

This repository is intended to work with the user's own AI coding assistant or LLM workspace, such as Codex, Claude Code, Cursor, or another repo-aware assistant. The repo should contain enough instructions, examples, and setup notes for another user to clone it, open it in their own AI coding environment, and have that agent follow the Career OS workflow without needing private context from the original creator.

## Product Intent

Career OS helps a user turn their current CV into a reusable master CV, compare that CV against job postings, and generate role-specific CV versions with ATS checks.

Core workflow:

1. Ask the user for their current CV.
2. Analyze the CV for structure, clarity, impact, missing information, and ATS risks.
3. Help the user create and save a polished master CV in PDF format.
4. Let the user share job posting links or job descriptions.
5. Analyze each job posting and compare it against the master CV.
6. Give a match score, strengths, gaps, and practical comments.
7. If useful, create a role-specific CV version for that posting.
8. Always check ATS compatibility before finalizing any CV.

Supporting areas may include:

- Job search pipeline
- Application tracking
- Interview preparation
- Networking and follow-ups
- Skills, projects, and learning plans

## How To Start In An AI Assistant

When a user opens this repository in an AI coding assistant or LLM workspace, start by reading:

1. `README.md`
2. `.env.example`
3. `docs/customization.md`
4. `docs/llm-workflow.md`
5. Example files in `examples/`, if the user wants a demo before using private data

Then ask the user what they want Career OS to become before choosing a stack or creating app code.

If the user asks for the default Career OS product, use the CV-first workflow above as the source of truth.

Good first prompt for users:

```text
Read AGENTS.md and README.md. Help me customize Career OS for my own career workflow, then propose the smallest useful first version.
```

Better first prompt for the default product:

```text
Read AGENTS.md, README.md, docs/customization.md, and docs/llm-workflow.md. Act as my Career OS assistant. Start by asking for my current CV, analyze it, help me create a master CV PDF, then let me compare it against job postings and create ATS-friendly tailored CVs.
```

## Development Rules

- Preserve existing user content and avoid overwriting files unless asked.
- Keep changes small and easy to review.
- Prefer simple local-first workflows until the user chooses hosting, auth, or integrations.
- Add setup instructions whenever adding a new dependency, script, service, or environment variable.
- Keep secrets out of the repo. Use `.env` locally and document required variables in `.env.example`.
- If a stack is introduced, update this file with the exact commands for install, development, testing, and build.
- Treat user CVs, job applications, and personal career data as private by default.
- Do not invent CV facts, employers, dates, degrees, certifications, metrics, or skills.
- When improving CV language, preserve factual meaning and flag any suggested claims that need user confirmation.
- Keep master CV and job-specific CV outputs traceable, so the user can see what changed and why.
- ATS checks should cover parseability, headings, contact section, date consistency, keyword alignment, file format, layout complexity, and unsupported graphics/tables.
- Generate CV PDFs from a text-based source file, not from screenshots or image-only layouts.

## Core Features To Build

- CV intake and analysis
- Master CV editor/exporter
- PDF export for the master CV
- Job posting intake by link or pasted text
- Job/CV match scoring
- Gap analysis and recommendations
- Job-specific CV generation
- ATS compatibility review for every CV version
- Version history for master and tailored CVs
- Optional application tracker after the CV workflow is stable
- PDF generation from master and tailored CV source files

## Agent Behavior Requirements

Any LLM or coding agent working in this repo should:

- Start from the user's current CV, not from a blank template.
- Ask for missing facts instead of inventing them.
- Keep a master CV as the source of truth.
- Create tailored CVs as derived versions, not replacements for the master CV.
- Explain match scores in concrete terms tied to the job posting.
- Separate factual gaps from writing improvements.
- Run an ATS check before presenting any final CV.
- Save outputs in predictable folders once an app or file workflow exists.
- Make the workflow usable even if job posting links cannot be fetched, by accepting pasted job descriptions.
- Use `examples/` only as synthetic demonstration data. Never treat example content as a real user's facts.

## PDF Generation Requirements

Until a full app stack exists, use a file-based workflow:

```text
data/
├── master-cv.md
├── tailored/
│   └── company-role.md
└── exports/
    ├── master-cv.pdf
    └── company-role.pdf
```

Preferred approach:

1. Keep the editable CV source in Markdown or another text-based structured format.
2. Generate PDF from that source.
3. Keep the PDF layout simple: one column, standard headings, readable font size, normal margins, no image-only content.
4. After generation, verify the PDF by extracting text from it.
5. Run the ATS checklist before calling the PDF final.

Do not finalize a PDF if its text cannot be copied or extracted reliably.

If the project later adds a stack, document the exact command here, for example:

```bash
npm run export:cv
```

or:

```bash
python scripts/export_cv.py
```

## Current Setup

There are no required dependencies yet.

Optional local bootstrap:

```bash
bash scripts/bootstrap.sh
```

## Expected Structure

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
