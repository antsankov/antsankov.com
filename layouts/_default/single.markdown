---
title: {{ .Title | jsonify }}
description: {{ (or .Description .Summary site.Params.description | plainify | htmlUnescape | strings.TrimSpace) | jsonify }}
canonical_url: {{ .Permalink }}
author: Alex Tsankov
last_updated: {{ .Lastmod.Format "2006-01-02" }}
---

# {{ .Title }}

{{ .RawContent }}

## About the author

Alex Tsankov is a senior site reliability and software engineer specializing in financial, tax, and legal infrastructure. See his [professional profile](https://antsankov.com/index.md) and [LinkedIn](https://www.linkedin.com/in/antsankov/).

## Sitemap

See the full [sitemap](https://antsankov.com/sitemap.md) for all pages.
