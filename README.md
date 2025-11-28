# antsankov.com

Personal website and blog for Alex Tsankov, powered by Hugo and the Typo theme.

## Structure

- **Homepage**: Custom static homepage (`layouts/index.html`) with resume and contact info
- **Blog**: Hugo-powered blog using the Typo theme at `/blog/`
- **Theme**: Uses the [Typo](https://github.com/tomfran/typo) Hugo theme

## Local Development

### Prerequisites

Install Hugo (extended version):
```bash
brew install hugo
```

### Running Locally

```bash
# Start the Hugo development server
hugo server -D

# View at http://localhost:1313
```

## Creating New Blog Posts

```bash
# Create a new blog post
hugo new content/blog/my-post-title.md

# Edit the file, then set draft: false when ready to publish
```

## Deployment

The site automatically deploys to GitHub Pages using GitHub Actions when you push to the `master` branch.

### Setup GitHub Pages (One-time)

1. Go to your repository Settings → Pages
2. Under "Build and deployment", set Source to "GitHub Actions"
3. Push your changes - the site will automatically build and deploy!

## Original Setup

To run this page on your own:

* Fork the Repo on Github. 
* Replace CNAME with your sitename or delete the file if you don't have a custom domain. 
* Enable GitHub Pages with GitHub Actions as the source.
