# Terrence Fradet - Portfolio

Personal portfolio website showcasing 13 years of product design work across data insights, 0 to 1 products, and design strategy.

## 🚀 Live Site
**Primary:** [https://tfradet.com](https://tfradet.com)
**GitHub Pages:** [https://tjamjam.github.io/tfradet-portfolio/](https://tjamjam.github.io/tfradet-portfolio/)

## 🎨 Tech Stack
- **HTML5** - Semantic markup
- **Tailwind CSS** - Utility-first styling with custom configuration
- **Vanilla JavaScript** - Dark mode toggle, email copy-to-clipboard
- **Google Fonts** - Spectral (display) + Lexend (body)
- **Custom Typography** - Dolly Pro for headings

## 🛠️ Tools
### Design
- **Figma** - UI/UX design and prototyping

### Development
- **Claude Code** - AI-assisted development
- **Cursor** - Code editor

### Media Optimization
- **[Squoosh.app](https://squoosh.app/)** - Image compression
  - Formats: `.jpg`, `.webp`
- **Handbrake** - Video compression
  - Format: `.mp4` (autoplaying, seamless loop)

## 📋 Design System
See [DESIGN_SYSTEM.md](DESIGN_SYSTEM.md) for complete documentation on:
- Typography choices and rationale
- Color palette (primary, accent, neutral-850 for dark mode)
- Spacing system
- Dark mode implementation

**⚠️ Golden Rule: Never diverge from the design system theme.**
Always use CSS variables and design tokens defined in `src/styles/main.css`. Consistency is key to maintaining an invisible, cohesive design.

## 🏗️ Project Structure
```
├── index.html                  # Homepage with hero and projects section
├── about.html                  # About page with background, approach, skills
├── resume.html                 # Resume with responsive contact features
├── project-*.html              # 10 case study pages
├── src/
│   ├── styles/
│   │   └── main.css            # Custom CSS variables & design system
│   └── scripts/
│       └── theme.js            # Dark mode logic
├── assets/
│   ├── fonts/
│   │   └── Dolly/              # Custom font files
│   └── images/
│       ├── about-me/           # Personal photos (6 images)
│       └── project-*/          # Project images and videos
├── local-dev/                  # Local-only files (gitignored)
├── DESIGN_SYSTEM.md            # Design documentation
└── README.md                   # This file
```

## 🌙 Features
- ✅ Dark mode with system preference detection
- ✅ Dyslexia-friendly typography (Lexend body text)
- ✅ Fully responsive design (mobile, tablet, desktop)
- ✅ Custom color palette with improved dark mode (neutral-850)
- ✅ Accessible contrast ratios
- ✅ Responsive email/phone components (mailto on mobile, copy-to-clipboard on desktop)
- ✅ Autoplaying video showcases (GIF-like seamless loops)
- ✅ Full-bleed images for visual impact
- ✅ Image grid with responsive breakpoints
- ✅ Sticky navigation across all pages
- ✅ Performance optimized (compressed images/videos)

## 📄 Pages
### Home (`index.html`)
- Hero introduction
- "Projects coming soon" placeholder
- Footer with GitHub repo link

### About (`about.html`)
- Hero statement: "A designer who loves building things—because that's how I learn best"
- Background and career history
- Three-column approach section with icons
- Skills & Tools
- Beyond Design with 6-image responsive grid
- Let's Work Together CTA

### Resume (`resume.html`)
- Professional summary
- Experience, Education, Skills sections
- Responsive contact info (GitHub, LinkedIn, email, phone)

### Projects (10 case studies)
- Profitability via Productivity (Premise)
- $0 to $12M ARR via a New Product (Premise)
- Visualizing Student Success (Panorama Education)
- Accelerating the Sales Cycle (Premise)
- Clicks to Clarity (Panorama Education)
- Streamlining Design Operations (Premise)
- Securing Funding (Premise)
- The Right Tool for the Right Job (Premise)
- Personal Projects
- Data Viz Works (Fathom)

Each project features:
- Section headings with small labels + large impactful statements
- Video/image showcases
- "Want to see more?" CTA with copy-to-clipboard email

## 📝 Development Workflow
This is a static site hosted on GitHub Pages.

### Making Changes
1. Create feature branch from `main`: `git checkout -b feature-name`
2. Make changes and test locally
3. Commit with descriptive messages
4. Push to GitHub: `git push origin feature-name`
5. Create Pull Request to `main`
6. Merge PR - GitHub Pages auto-deploys

### Deployment
- **Repository size optimized:** Large old-site assets moved to `local-dev/` (gitignored)
- **Git history cleaned:** BFG Repo-Cleaner removed large files from history
- **Current repo size:** ~600KB (down from 646MB)
- **Deployment time:** ~5 minutes (down from 10+ minute timeouts)

## 🎯 Roadmap
- [x] Phase 1: Foundation & Design System
- [x] Phase 2: About Section
- [x] Phase 3: Project Showcase (10 case studies)
- [x] Phase 4: Contact & Social Links (responsive email/phone)
- [ ] Phase 5: Blog/Writing Section (future)
- [ ] Phase 6: Additional Project Media (videos, images)

---

🤖 Created with **Figma + Claude**
Built with intention, not templates.