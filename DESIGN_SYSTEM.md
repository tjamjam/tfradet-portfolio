# Design System Documentation

## Typography

### Font Families

**Display/Headings: Spectral**
- Similar to Dolly Pro (old-style serif, low contrast)
- Use for: Headings, titles, emphasis
- Weights: 300 (Light), 400 (Regular), 600 (Semibold), 700 (Bold)

**Body/Interface: Lexend**
- Dyslexia-friendly, research-backed for improved reading
- Use for: Body text, UI elements, captions
- Weights: 300 (Light), 400 (Regular), 500 (Medium), 600 (Semibold)

### Type Scale
```
--text-xs: 0.75rem    (12px)
--text-sm: 0.875rem   (14px)
--text-base: 1rem     (16px)
--text-lg: 1.125rem   (18px)
--text-xl: 1.25rem    (20px)
--text-2xl: 1.5rem    (24px)
--text-3xl: 2rem      (32px)
--text-4xl: 2.5rem    (40px)
--text-5xl: 3rem      (48px)
```

### Tailwind Classes
- `font-display` - Spectral serif
- `font-body` - Lexend sans-serif

---

## Color Palette

### Primary (Deep Blue)
- **Base:** `#2d5a7b` - `primary` / `text-primary`
- **Light:** `#4a7ea0` - `primary-light` / `text-primary-light`
- **Dark:** `#1a3d56` - `primary-dark` / `text-primary-dark`

### Accent (Warm Terracotta)
- **Base:** `#d97742` - `accent` / `text-accent`
- **Light:** `#e89563` - `accent-light` / `text-accent-light`
- **Dark:** `#b85f2f` - `accent-dark` / `text-accent-dark`

### Neutrals
Use Tailwind's default neutral scale: `neutral-50` through `neutral-900`

### Usage Guidelines
- **Primary:** Main brand color, headings, important CTAs
- **Accent:** Highlights, interactive elements, emphasis
- **Neutrals:** Text, backgrounds, borders

---

## Spacing Scale

Based on 8px grid system:
```
--space-xs: 0.5rem    (8px)
--space-sm: 1rem      (16px)
--space-md: 1.5rem    (24px)
--space-lg: 2rem      (32px)
--space-xl: 3rem      (48px)
--space-2xl: 4rem     (64px)
--space-3xl: 6rem     (96px)
```

Custom Tailwind spacing: `18` (4.5rem), `88` (22rem), `128` (32rem)

---

## Dark Mode

Automatically detects system preference and persists user choice via localStorage.

### Toggle Function
```javascript
toggleTheme() // Call this to switch themes
```

### Color Variables
Both light and dark modes use CSS custom properties that automatically update:
- `--bg-primary` - Main background
- `--bg-secondary` - Card/section backgrounds
- `--text-primary` - Main text
- `--text-secondary` - Secondary text
- `--text-muted` - Muted/disabled text

### Tailwind Dark Mode
Use the `dark:` prefix for dark mode variants:
```html
<div class="bg-white dark:bg-neutral-900">
```

---

## Border Radius
```
--radius-sm: 0.25rem  (4px)
--radius-md: 0.5rem   (8px)
--radius-lg: 1rem     (16px)
```

---

## Transitions
```
--transition-fast: 150ms ease
--transition-base: 250ms ease
--transition-slow: 350ms ease
```

---

## Project Structure

```
tfradet-portfolio/
├── index.html              # Main entry point
├── src/
│   ├── styles/
│   │   └── main.css        # Custom CSS variables & design system
│   └── scripts/
│       └── theme.js        # Dark mode logic
├── assets/
│   └── images/             # Images and media
└── DESIGN_SYSTEM.md        # This file
```

---

## Development Notes

- **Framework:** Tailwind CSS (CDN for GitHub Pages compatibility)
- **Fonts:** Google Fonts (zero configuration)
- **Dark Mode:** Class-based with localStorage persistence
- **Design Goal:** Unique, human-crafted look (avoid AI-generated feel)

### Avoiding AI-Generated Look
1. Use custom color palette (not default blues/purples)
2. Thoughtful typography pairings
3. Personal content and projects
4. Subtle, purposeful animations
5. Asymmetry and white space
6. Real writing, not generic copy