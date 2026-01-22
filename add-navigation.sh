#!/bin/bash

# Project order
declare -A projects
declare -A titles

projects[1]="project-profitability-productivity.html"
titles[1]="Profitability via Productivity"

projects[2]="project-student-success.html"
titles[2]="\$0 to \$12M ARR via a New Product"

projects[3]="project-visualizing-success.html"
titles[3]="Visualizing Success"

projects[4]="project-accelerating-sales-cycle.html"
titles[4]="Accelerating the Sales Cycle"

projects[5]="project-right-tool.html"
titles[5]="The Right Tool for the Job"

projects[6]="project-clicks-to-clarity.html"
titles[6]="From Clicks to Clarity"

projects[7]="project-securing-funding.html"
titles[7]="Securing \$15M Bridge Funding"

projects[8]="project-streamlining-design.html"
titles[8]="Streamlining Design"

projects[9]="project-data-viz-works.html"
titles[9]="Data Visualization Works"

projects[10]="personal-projects.html"
titles[10]="Personal Projects"

total=10

for i in {1..10}; do
    current_file="${projects[$i]}"

    # Calculate prev and next (with wrapping)
    prev=$((i == 1 ? total : i - 1))
    next=$((i == total ? 1 : i + 1))

    prev_file="${projects[$prev]}"
    prev_title="${titles[$prev]}"
    next_file="${projects[$next]}"
    next_title="${titles[$next]}"

    # Check if navigation already exists
    if grep -q "Project Navigation Arrows" "$current_file" 2>/dev/null; then
        echo "Skipping $current_file - navigation already exists"
        continue
    fi

    echo "Adding navigation to $current_file..."
    echo "  Prev: $prev_title ($prev_file)"
    echo "  Next: $next_title ($next_file)"

    # Create the navigation HTML
    nav_html="
    <!-- Project Navigation Arrows -->
    <a href=\"/$prev_file\" class=\"fixed left-4 top-1/2 -translate-y-1/2 z-40 p-3 rounded-full bg-white/10 dark:bg-neutral-900/10 backdrop-blur-md hover:bg-white/20 dark:hover:bg-neutral-900/20 transition-colors group\" title=\"$prev_title\">
        <svg class=\"w-6 h-6 text-neutral-900 dark:text-neutral-50\" fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\">
            <path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2\" d=\"M15 19l-7-7 7-7\"></path>
        </svg>
        <span class=\"absolute left-full ml-3 px-3 py-2 bg-neutral-900 dark:bg-neutral-50 text-neutral-50 dark:text-neutral-900 text-sm rounded whitespace-nowrap opacity-0 group-hover:opacity-100 transition-opacity pointer-events-none\">
            $prev_title
        </span>
    </a>

    <a href=\"/$next_file\" class=\"fixed right-4 top-1/2 -translate-y-1/2 z-40 p-3 rounded-full bg-white/10 dark:bg-neutral-900/10 backdrop-blur-md hover:bg-white/20 dark:hover:bg-neutral-900/20 transition-colors group\" title=\"$next_title\">
        <svg class=\"w-6 h-6 text-neutral-900 dark:text-neutral-50\" fill=\"none\" stroke=\"currentColor\" viewBox=\"0 0 24 24\">
            <path stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2\" d=\"M9 5l7 7-7 7\"></path>
        </svg>
        <span class=\"absolute right-full mr-3 px-3 py-2 bg-neutral-900 dark:bg-neutral-50 text-neutral-50 dark:text-neutral-900 text-sm rounded whitespace-nowrap opacity-0 group-hover:opacity-100 transition-opacity pointer-events-none\">
            $next_title
        </span>
    </a>
"

    # Add keyboard navigation JavaScript
    keyboard_js="
        // Keyboard navigation
        document.addEventListener('keydown', function(e) {
            if (e.key === 'ArrowLeft') {
                window.location.href = '/$prev_file';
            } else if (e.key === 'ArrowRight') {
                window.location.href = '/$next_file';
            }
        });"

    # Insert navigation HTML before </footer>
    sed -i '' "/<\/footer>/i\\
$nav_html
" "$current_file"

    # Insert keyboard JS before closing </script> tag
    sed -i '' "/<\/script>/i\\
$keyboard_js
" "$current_file"
done

echo "Done!"
