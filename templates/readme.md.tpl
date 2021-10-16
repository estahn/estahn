### Hi, I'm Enrico 👋

[![Twitter Follow](https://img.shields.io/twitter/follow/estahn?color=green&logo=twitter&style=for-the-badge)](http://twitter.com/estahn)
[![LinkedIn](https://img.shields.io/badge/LinkedIn--%20?style=for-the-badge&logo=linkedin&color=green)](https://linkedin.com/in/enricostahn)
[![Sponsor](https://img.shields.io/github/sponsors/estahn?color=green&logo=github-sponsors&style=for-the-badge)](https://github.com/sponsors/estahn)
[![Blog](https://img.shields.io/badge/Blog--%20?style=for-the-badge&logo=blog&color=green)](https://enricotahn.com)

Over the years, I focused on helping software engineers to become more efficient by sharing knowledge and streamlining operational processes. I have created and contributed to many open-source projects over the past 20 years with this in mind.

Lately, I have been working on projects such as [php-fpm_exporter](https://github.com/hipages/php-fpm_exporter), [aws-rds-logs-s3-copier](https://github.com/hipagesgroup/aws-rds-logs-s3-copier) and [k8s-image-swapper](https://github.com/estahn/k8s-image-swapper), to improve visibility, increase resiliency and reduce cost.

If you :bust_in_silhouette: or your company :office: have benefited from my work, then consider sponsoring me. Sponsoring helps me to help you to become more efficient. It allows me to continue writing bug fixes :bug:, documentation :memo: and create new features :unicorn:.

<p align="center">
  <img width="48%" src="https://github-readme-stats.vercel.app/api?username=estahn&show_icons=true&theme=default" />
  <img width="48%" src="https://github-readme-streak-stats.herokuapp.com/?user=estahn&theme=default" />
</p>

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
