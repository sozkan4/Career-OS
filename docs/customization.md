# Customize Career OS

Use this guide before adding an application stack. The goal is to define the smallest useful CV-first version for the person who copied the template.

## 1. Core User Flow

The default Career OS flow:

1. User uploads or pastes their current CV.
2. Career OS analyzes the CV.
3. User reviews suggested improvements.
4. Career OS creates a master CV.
5. User exports and saves the master CV as a PDF.
6. User shares a job posting link or pastes a job description.
7. Career OS analyzes the job posting.
8. Career OS scores the match between the posting and the master CV.
9. Career OS explains strengths, gaps, missing keywords, and risks.
10. Career OS creates a tailored CV when the posting deserves one.
11. Career OS checks ATS compatibility before final export.

## 2. First Version

The smallest useful first version should support:

- Current CV input
- CV analysis report
- Master CV draft
- Master CV PDF export
- Text-based CV source file
- Job description input
- Match score
- Tailoring recommendations
- ATS checklist

Job posting links are part of the intended workflow. If link extraction is not available in the first version, support pasted job descriptions first and document link support as a follow-up.

## 3. CV Analysis Checklist

Check the current CV for:

- Clear contact section
- Professional summary quality
- Role and company consistency
- Dates and chronology
- Impact-focused bullet points
- Missing metrics
- Repeated or weak wording
- Skills alignment
- Education and certification clarity
- ATS readability
- Layout complexity
- Unverified claims that need user confirmation

## 4. Job Match Checklist

For each job posting, produce:

- Match score
- Required skills found in the CV
- Required skills missing from the CV
- Relevant experience evidence
- Keyword alignment
- Seniority fit
- Location or work model fit, if available
- Risks or weak areas
- Recommended CV changes
- Whether a tailored CV is worth creating

## 5. ATS Compatibility Checklist

Every master or tailored CV should be checked for:

- Simple headings
- Standard section names
- Text-based content, not image-only content
- Minimal tables and columns
- Clear dates
- Consistent job titles and employers
- Relevant keywords from the target posting
- PDF export quality
- Extractable PDF text
- No hidden or misleading keyword stuffing

## 6. PDF Output Checklist

Every generated CV PDF should have:

- A matching editable source file
- One-column layout by default
- Standard section headings
- Readable text size
- Normal margins
- Copyable/extractable text
- No important content stored only as an image
- A clear filename, such as `master-cv.pdf` or `company-role.pdf`

## 7. Define The First Version

Write the first version in one sentence:

```text
Career OS will help me ______ by letting me ______.
```

Examples:

```text
Career OS will help me improve my job applications by turning my current CV into a master CV and tailoring it to specific job postings.
```

```text
Career OS will help me decide which jobs to apply to by scoring each job posting against my master CV and explaining the gaps.
```

## 8. Decide What Data To Store

Common data types:

- Resume versions
- Master CV
- Tailored CVs
- Editable CV source files
- Exported CV PDFs
- CV analysis reports
- Job postings
- Match scores
- Gap analyses
- ATS reports
- Companies
- Applications
- Contacts
- Interviews
- Follow-ups
- Portfolio projects
- Skills
- Learning tasks

## 9. Ask Codex For The Smallest Build

Use this prompt after filling out the sections above:

```text
Read AGENTS.md, README.md, and docs/customization.md. Build the smallest useful CV-first version of Career OS: current CV analysis, master CV PDF generation, job posting match scoring, tailored CV suggestions, and ATS checks.
```
