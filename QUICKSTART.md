# Quick Start Guide

## First Time Setup

1. **Enable GitHub Pages**:
   - Go to repository Settings → Pages
   - Under "Build and deployment", select Source: **GitHub Actions**
   - Save the changes

2. **Push your changes**:
   ```bash
   git add .
   git commit -m "Integrate Hugo blog with Typo theme"
   git push origin master
   ```

3. **Wait for deployment** (2-3 minutes):
   - Go to Actions tab in GitHub to watch the build
   - Once complete, your site will be live at https://antsankov.com

## Local Development

### Install Hugo (one-time):
```bash
brew install hugo
```

### Run locally:
```bash
./dev.sh
# Or manually: hugo server -D
```

Visit http://localhost:1313

## Creating Blog Posts

```bash
# Create new post
hugo new content/blog/my-post-title.md

# Edit the file in your editor
# Set draft: false when ready to publish

# Commit and push
git add .
git commit -m "Add new blog post"
git push
```

## Site Structure

- **/** - Your existing homepage (preserved as-is)
- **/blog/** - Hugo-powered blog with Typo theme
- **/blog/welcome/** - Example first post

## Customization

### Update site config:
Edit `hugo.toml` to change:
- Site title
- Base URL
- Menu items
- Theme parameters

### Customize theme:
The Typo theme files are in `themes/typo/`. You can override any template by creating the same file in the root `layouts/` directory.

### Add pages:
```bash
hugo new content/about.md
```

## Troubleshooting

### Build fails in GitHub Actions:
- Check the Actions tab for error messages
- Ensure all content files have valid front matter
- Verify theme is properly in `themes/typo/`

### Homepage not showing:
- Ensure `layouts/index.html` exists
- Check that `content/_index.md` is present

### Blog posts not appearing:
- Set `draft: false` in the post's front matter
- Check that posts are in `content/blog/` directory
- Verify date is not in the future
