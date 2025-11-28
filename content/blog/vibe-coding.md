---
title: "From Wagon to a Jet Plane: Vibe Coding Musings from an Experienced Developer"
date: 2025-11-28
draft: false
tags: ["coding", "AI", "software", "agents"]
---

Vibe-coding enables a developer to move so fast, that the act of coding becomes entirely  different. It feels 
like going from driving a wagon across the empty plains to piloting an intercontinental jet plane. You can cover the distance in one hour that used to take days previously. The AI will also delight you with solutions you never expected. Some tips after working with it for a few months (while having 10 years of traditional software engineering experience).

### *Most Important:* Flying fast and getting lost in the clouds 
You move so fast that you need to slow down and think about the architecture and design of your code before you start writing. Create a UML diagram of your DB and keep it updated. Talk with product owners to get a strong understanding of the feature before you start developing. This pre-work is even more important now than ever before.

Now that you are in a jet plane it is easy to get lost in the clouds extremely quickly. By keeping a good clear design, and spending a lot of time thinking about what features or architecture you want to build before you start coding, you will avoid over-promising and building something that you don't understand and won't be able to fix/maintain later. Think of these documents as the maps and instruments that help you navigate the jet plane going 500 mph over an ocean. These weren't as necessary in the past when you could only go as fast as you could walk, which meant you could subconsciously keep track of what you were building.

### Agents love to duplicate code
The AI, especially Claude 4.1, is astoundingly good, but it makes a lot of mistakes. One anti-pattern I see it make quite often is duplicating functions that could have been a single function with a parameter. It will create `add(x,y)`, `mul(x,y)`, `div(x,y)` and `sub(x,y)` instead of `calc(x,y,op)`. This is a simple example, but it does this alot. You as a devleoper need to prune the generated code often so you don't balloon the codebase unnecessarily. A large codebase is slower, and the agent will get worse at maintaining it as it grows.

### Commit often and destroy your context window
It's very easy to get lost by using a single context window for a lot of changes. This is bad for a number of reasons. First, the quality of the code produced and the speed of code generating decreases as the context window expands. Second, the proposed changes get so large it's easy to get misconfigured features you don't want, and then lose track of which prompt you need to reverse to fix it. To avoid this, when you are happy with a single feature that was produced by the agent, save the changes and close the context window, then make a git commit to be pushed. This takes discipline, but it will pay off in the long run.

### Ask an AI agent to implement one feature per context window
When you open a context window try to keep it one feature at a time.

### Dump entire documents into the context window
If you want the agent to use a particular feature or library, I like to go to the online webapge for it, copy the entire API document, and paste it into the context window with my prompt. This way the AI has the entire document to work with and can make better suggestions.

### Preserve useful artifacts in the repo and feed it to the agent
Keep UML diagrams, design docs, API docs, even presentations, in a directory that the agent can read from at the top of the repo like `./cursor` or `./architecture`. In fact, when you using a library or framework, it is useful to keep many examples that you find interesting in a directory that the agent can read from when it gets lost and needs inspiration.

### Create an open PR, and constantly review your AI
I suggest making an open PR, and as you make git commits, periodically go back to the PR and review the changes. If you do this properly, you will catch a lot of duplicated code and cruft that the AI generates and forgets to destroy. Without this, your codebase will balloon quickly with AI generated cruft. This is where your experience as a developer comes in. Think of it as PR reviewing a teammate who is very smart and eager, but not very wise.

There are two levels of review:
- The immediate review after the AI makes a lot of changes in a single context window. 
- The PR review after you have made a commit which can consist of multiple context window's worth of changes.

In both cases, you need to be ruthless about removing duplicated code, questioning the AI, and finally making sure the architecture and design of the codebase is sound. If you don't do this, you will end up with a mess very quickly.

### Debugging agent-generated code can feel lonely in a way it never felt before
Now that you are generating so much code with an agent, only you likely understand the design of the codebase. This means you can't ask anyone else for much help, and it can feel lonely debugging issues. Unit / Integration tests can help a lot, to at least make sure you're not regressing. Share design documents too help a co-worker at least get a handle on what's going on.

Welcome to the jet age. 