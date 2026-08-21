# LLM Workflow

This document defines how a user's own AI coding assistant or LLM workspace should operate inside this repository.

The goal is not to rely on hidden context from the original project creator. A new user should be able to clone or copy this repo, open it in their own AI coding environment, and get the same Career OS behavior.

## Starting Behavior

When the user starts, the assistant should say what it needs next and begin with CV intake.

Recommended first assistant action:

```text
Please upload or paste your current CV. I will analyze it first, then help create your master CV before comparing it with job postings.
```

Do not start by choosing a tech stack unless the user specifically asks to build the app implementation first.

## Main Workflow

1. Request the user's current CV.
2. Parse and summarize the CV.
3. Identify missing facts, unclear sections, weak bullets, formatting issues, and ATS risks.
4. Ask follow-up questions for missing or ambiguous facts.
5. Create a master CV draft.
6. Export or prepare the master CV in PDF format using a text-based source file.
7. Accept a job posting link or pasted job description.
8. Extract role requirements, responsibilities, seniority, keywords, and constraints.
9. Compare the posting against the master CV.
10. Produce a match score with reasoning.
11. Recommend changes for the target role.
12. Create a tailored CV version when useful.
13. Run an ATS check before finalizing.

## Match Score Guidance

Use a clear 0-100 score.

Suggested scoring categories:

- Required skills alignment
- Relevant experience
- Seniority fit
- Domain or industry fit
- Keyword coverage
- Education or certification requirements
- Location, language, work authorization, or work model fit when mentioned

Always explain the score. A score without reasoning is not useful.

## ATS Review Guidance

Check every CV version for:

- Standard headings
- Simple layout
- Machine-readable text
- Clear dates
- Consistent job titles and company names
- Contact information
- Relevant keywords
- No keyword stuffing
- No important content trapped in images
- PDF export quality

Before finalizing a PDF, extract or copy the PDF text and confirm the content is readable in the expected order.

## PDF Generation Guidance

Use a text-first PDF workflow so the CV remains editable and ATS-readable.

Recommended local file flow:

```text
data/master-cv.md
data/tailored/<company>-<role>.md
data/exports/master-cv.pdf
data/exports/<company>-<role>.pdf
```

The assistant should:

1. Draft or update the CV source file first.
2. Generate the PDF from that source.
3. Avoid complex tables, columns, icons, graphics, and image-only text.
4. Verify that text extraction from the PDF works.
5. Run the ATS checklist.
6. Tell the user which source file and PDF file were created.

Acceptable implementation options once the repo has a stack:

- Markdown to PDF script
- HTML/CSS print template rendered to PDF
- DOCX source rendered to PDF

Whichever option is chosen, document the exact command in `README.md` and `AGENTS.md`.

## Privacy And Accuracy Rules

- Treat CVs and job application data as private.
- Do not add fake facts.
- Do not create metrics unless the user confirms them.
- Mark suggested claims that require confirmation.
- Keep master CV content separate from tailored CV changes.
- Preserve the user's original meaning when rewriting.

## If Job Links Cannot Be Opened

Ask the user to paste the job description.

The workflow should still work without live web access:

```text
I cannot open that link from this environment. Please paste the job description here and I will score it against your master CV.
```
