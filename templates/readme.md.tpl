<img alt="Enrico's GitHub Stats" align="right" src="https://github-readme-stats.vercel.app/api?username=estahn&show_icons=true&theme=default&hide_title=true" />

### Hi there 👋

I'm Enrico!

<a href="https://linkedin.com/in/enricostahn"><img src="https://img.shields.io/badge/LinkedIn--_.svg?style=social&logo=linkedin" alt="LinkedIn"></a>
<a href="http://twitter.com/estahn"><img src="https://img.shields.io/badge/Twitter--_.svg?style=social&logo=twitter" alt="Twitter"></a>
<a href="https://enricotahn.com"><img src="https://img.shields.io/badge/Blog--_.svg?style=social&logo=blog" alt="Blog"></a>

#### 👷 Check out what I'm currently working on
{{range recentContributions 10}}
- [{{.Repo.Name}}]({{.Repo.URL}}) - {{.Repo.Description}} ({{humanize .OccurredAt}})
{{- end}}

#### 🌱 My latest projects
{{range recentRepos 10}}
- [{{.Name}}]({{.URL}}) - {{.Description}}
{{- end}}

#### 🔭 Latest releases I've contributed to
{{range recentReleases 10}}
- [{{.Name}}]({{.URL}}) ([{{.LastRelease.TagName}}]({{.LastRelease.URL}}), {{humanize .LastRelease.PublishedAt}}) - {{.Description}}
{{- end}}

#### 📜 My recent blog posts
{{range rss "https://enricostahn.com/index.xml" 5}}
- [{{.Title}}]({{.URL}}) ({{humanize .PublishedAt}})
{{- end}}

#### 📓 Gists I wrote
{{range gists 5}}
- [{{.Description}}]({{.URL}}) ({{humanize .CreatedAt}})
{{- end}}
