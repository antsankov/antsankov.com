---
title: {{ .Title | jsonify }}
description: {{ (or .Description site.Params.description | plainify | htmlUnescape | strings.TrimSpace) | jsonify }}
canonical_url: {{ .Permalink }}
last_updated: {{ .Lastmod.Format "2006-01-02" }}
---

# {{ .Title }}

{{ .RawContent }}

## Pages

{{ range .RegularPages.ByDate.Reverse -}}
- [{{ .Title }}]({{ .Permalink }}) — {{ or .Description (.Summary | plainify) }}
{{ end }}

## Sitemap

See the full [sitemap](https://antsankov.com/sitemap.md) for all pages.
