# First 10 Minutes

Use this guide to test Career OS quickly with your own AI assistant or LLM workspace.

## 1. Clone The Repo

```bash
git clone https://github.com/sozkan4/Career-OS.git
cd Career-OS
bash scripts/bootstrap.sh
```

## 2. Open The Folder

Open the repository folder in your AI coding assistant, such as Codex, Claude Code, Cursor, or another repo-aware assistant.

## 3. Start With The Synthetic Demo

Use this prompt:

```text
Read AGENTS.md, README.md, docs/llm-workflow.md, examples/sample-current-cv.md, and examples/sample-job-description.md. Run the Career OS workflow on the synthetic example data. Produce a match score, tailoring recommendations, and an ATS review.
```

Expected output:

- CV summary
- Match score
- Strengths
- Gaps
- Suggested tailored CV changes
- ATS review

## 4. Try It With Your Own CV

When the demo makes sense, use:

```text
Read AGENTS.md, README.md, docs/customization.md, and docs/llm-workflow.md. Act as my Career OS assistant. Start by asking for my current CV.
```

## 5. Keep Private Data Local

Real CVs, job posts, tailored CVs, reports, and PDF exports should go under `data/`.

The `data/` folder is ignored by Git except for placeholder `.gitkeep` files, so private career data does not get committed by accident.

