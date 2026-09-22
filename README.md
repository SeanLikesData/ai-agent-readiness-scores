# AI Agent Readiness Scores

The published scores from the AI Agent Readiness Test at [Docs for Agents](https://docsforagents.com/), as data.

The AI Agent Readiness Test asks whether a product's public documentation can get an AI agent through five first-hour developer jobs. A fixed panel of three AI models reads the docs and votes on each job. Five checks on the agent surface complete the score: llms.txt, llms-full.txt, a Markdown mirror, an MCP server, and docs AI. Every product has a report with the verdicts, verified quotes, and the fixes that would raise its score at https://docsforagents.com/reports/.

## The score

- Reading test: 15 votes at PASS 2, PARTIAL 1, FAIL 0. Maximum 30 points.
- Agent surface: five checks at 10 points each. Maximum 50 points.
- AI Agent Readiness Score: the total out of 80, as a percentage and a US school letter grade.

The method is at https://docsforagents.com/methodology/. The scoring detail is at https://docsforagents.com/ai-agent-readiness-score/.

## Files

- `grades.json`: every published score with its metadata. It mirrors https://docsforagents.com/grades.json.
- `grades.csv`: the same rows as CSV. It mirrors https://docsforagents.com/grades.csv.

Each row has these fields.

| Field | Meaning |
|---|---|
| `slug` | The product identifier used in report, badge, and card URLs |
| `product` | The product name |
| `grade` | The letter grade |
| `pct` | The AI Agent Readiness Score as a percentage of 80 points |
| `readingPts` | Reading test points out of 30 |
| `readinessPts` | Agent surface points out of 50 |
| `llmsTxt`, `llmsFullTxt`, `mdMirror`, `mcp`, `docsAI` | The five agent surface checks |
| `platform` | The tool that serves the docs. Recorded, never scored |
| `date` | The report's publication date |
| `url` | The report URL |
| `category`, `categoryLabel` | The product category |
| `testedOn`, `verifiedOn`, `rescannedOn` | The test date, the quote verification date, and the latest recheck date |

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
