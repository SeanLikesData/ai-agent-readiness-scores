# AI Agent Readiness Scores

The published scores from the AI Agent Readiness Test at [Docs for Agents](https://docsforagents.com/), as data.

The AI Agent Readiness Test audits what an AI agent receives from a product's public documentation. Each check is a direct request to the public docs. The score uses only the server responses. No AI model reads the docs or scores anything. Every product has a report with the evidence for each check and the fixes that would raise its score at https://docsforagents.com/reports/.

## The score

The score has a maximum of 100 points in three groups.

- Content delivery, 50 points: server-rendered content (15), a Markdown version of the page that matches it (15), a page size that fits in one agent request (10), and robots.txt access for AI search and fetch agents (10).
- Discovery, 25 points: llms.txt (15), a sitemap (5), and structured page metadata (5).
- Agent capabilities, 25 points: an MCP server (15), a machine-readable API description (5), and emerging agent interoperability standards (5).

Extra credit gives 1 point each for llms-full.txt and a docs AI assistant. Extra credit cannot raise the score above 100. The AI Agent Readiness Score is the total as a percentage, with a US school letter grade.

The method is at https://docsforagents.com/methodology/. The scoring detail is at https://docsforagents.com/ai-agent-readiness-score/.

## Change on October 17, 2026

Before October 17, 2026, the score had a maximum of 80 points. Three AI models read the docs and attempted five first-hour developer jobs (30 points), and five agent surface checks completed the score (50 points). Those reading test reports are archived at https://docsforagents.com/reading-tests/. The old scores are not comparable with the new scores. Each row keeps the archived reading test score in `readingTestPct`. The data files before this change are in the Git history of this repository.

## Files

- `grades.json`: every published score with its metadata. It mirrors https://docsforagents.com/grades.json.
- `grades.csv`: the same rows as CSV. It mirrors https://docsforagents.com/grades.csv.

Each row has these fields.

| Field | Meaning |
|---|---|
| `slug` | The product identifier used in report, badge, and card URLs |
| `product` | The product name |
| `grade` | The letter grade |
| `pct` | The AI Agent Readiness Score as a percentage, rounded down to one decimal place |
| `points` | The total points out of 100, including extra credit |
| `delivery` | Content delivery points out of 50 |
| `discovery` | Discovery points out of 25 |
| `capabilities` | Agent capabilities points out of 25 |
| `extraCredit` | Extra credit points out of 2 |
| `serverContent`, `markdown`, `pageSize`, `llmsTxt`, `mcp` | `true` when the check earns its full points |
| `llmsFullTxt`, `docsAI` | `true` when the extra credit check passes |
| `platform` | The tool that serves the docs. Recorded, never scored |
| `date` | The audit date |
| `url` | The report URL |
| `category`, `categoryLabel` | The product category |
| `scoringVersion` | The version of the scoring rules used for the audit |
| `readingTestPct` | The archived reading test score, out of 80 points. Not comparable with `pct` |
| `readingTestUrl` | The archived reading test report URL |

`grades.json` also records `maxPoints`, `scoringVersion`, and `audited` (the audit run date) for the whole file.

The ranked table is at https://docsforagents.com/grades/.

## Badges

Every report has an SVG badge that shows the current score. Embed it with a link to the report:

```markdown
[![AI Agent Readiness Score](https://docsforagents.com/badge/tavily.svg)](https://docsforagents.com/reports/tavily-docs-ai-agent-readiness/)
```

Replace `tavily` with the product's `slug` from `grades.json`, in both URLs.

## Updating

`scripts/sync.sh` downloads the current files from docsforagents.com. The site publishes a change feed at https://docsforagents.com/changes.xml.

## License

The data is licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/). Attribute it to Docs for Agents, https://docsforagents.com/.
