---
layout: post
title: "Why AI Agents Need a Sandbox: Secure Code Execution in Azure"
description: "Why AI agents need isolated code execution in Azure, how Terraform helps manage sandbox infrastructure, and the security controls and costs to consider."
permalink: /ai-agent-sandbox-secure-code-execution-azure-terraform
author: admin
categories: [ cybersecurity, ai, technology ]
image: assets/images/posts/2026/10-12/azure-ai-agent-sandbox.jpeg
title-image: Secure AI Agent Code Execution with Azure Sandboxes and Terraform (AI generated image)
tags: [ ai-agents, agentic-ai, azure, azure-container-apps, sandbox-security, terraform, infrastructure-as-code, ai-security, code-execution, cloud-security, featured ]
ai_assisted: true
last_modified_at: 2026-11-01 15:42:00 +0000
---

AI agents are becoming increasingly capable of doing more than generating text. They can write Python scripts, execute commands, install dependencies, inspect files and run tests to verify whether their solutions actually work. This is useful when building agentic applications, but it also creates an important security question. Where should an AI agent execute the code it generates, especially when that code has not been reviewed by a human?

This question has become particularly interesting to me because much of my career has revolved around Microsoft Azure and Azure-dependent tools. I've worked with Azure services and cloud-based development environments for years, so whenever I come across a new engineering or cybersecurity problem, I naturally start thinking about how I would approach it using Azure. With AI agents becoming more autonomous, providing them with a safe execution environment feels like one of those problems that deserves more attention.

Imagine building an AI agent that receives a programming task, writes a solution and runs a series of tests before returning the result. If the agent executes everything directly on the application server or a developer's machine, a mistake in the generated code could affect files, consume excessive resources or interact with systems it was never supposed to access. The concern becomes greater when the agent processes instructions or files supplied by external users.

This is where sandboxing becomes important. Instead of allowing an agent to execute code in the same environment as the main application, the execution happens inside a separate, restricted environment designed to limit what the code can access and what happens if something goes wrong. Azure already provides several technologies that can support this approach, and infrastructure-as-code tools such as Terraform can make the environments easier to create, manage and remove.

## Why AI Agents Need an Isolated Code Execution Environment

Traditional applications generally execute code written, reviewed and deployed by developers. AI agents introduce a different workflow because they may generate new code dynamically, sometimes based on unpredictable user requests or external information. Even when the model is designed to follow instructions carefully, there is no guarantee that every generated script will behave as intended.

For example, an agent might be asked to analyse a CSV file and produce a chart. It generates a Python script, installs a package and executes the code to process the data. Most of the time, this may work perfectly. But what happens if the generated script contains an error that repeatedly allocates memory, writes to an unexpected directory or attempts to access an external service?

If that code runs directly inside the application's main environment, the consequences could extend beyond the original task. The application might become unavailable, sensitive files could be exposed or the agent could accidentally interfere with other workloads. In an agentic testing system, where hundreds of generated programs may execute automatically, these risks become even more important.

A sandbox provides a boundary between the AI-generated code and the systems that need protection. The agent can still perform useful operations, but its execution environment should have limited permissions, controlled resources and a short lifetime. When the task finishes, the environment can be discarded rather than reused indefinitely.

### Why a Normal Docker Container May Not Be Enough

Containers are commonly used to package applications and their dependencies, so it is tempting to run AI-generated code inside a standard Docker container and consider the problem solved. Containers can provide useful process and filesystem isolation, but their security depends on how they are configured and what privileges they receive.

A container running with elevated privileges, access to the host filesystem or unrestricted network connectivity may still expose sensitive resources. Containers also share the host operating system kernel in conventional deployments, making the strength of the isolation boundary an important consideration when executing untrusted code.

For higher-risk workloads, stronger isolation may be appropriate. This could involve virtualisation-backed sandboxes, restricted container environments or short-lived virtual machines. The objective is not simply to run the code somewhere else, but to ensure that a failure inside the sandbox has limited consequences outside it.

Microsoft's [Azure Container Apps dynamic sessions documentation](https://learn.microsoft.com/en-us/azure/container-apps/sessions) describes an approach specifically designed for executing untrusted code in isolated environments, including AI-generated scripts. It is one of the Azure services I find particularly relevant to this problem.

{% include random-related-article.html %}

## How Azure Can Provide Sandboxes for Agentic Testing

Azure offers several ways to execute short-lived workloads, but not every service provides the same level of isolation, flexibility or operational overhead. The right choice depends on what the agent needs to execute, how long the task runs and whether the code should be treated as potentially untrusted.

For lightweight code execution, Azure Container Apps dynamic sessions are an interesting starting point. They provide isolated execution environments using Hyper-V isolation, with prewarmed session pools that can allocate environments quickly. The platform supports built-in code interpreter sessions and custom container sessions, allowing developers to choose between a managed runtime and an environment containing their own dependencies.

A developer building a Python-based analysis agent might use the built-in interpreter, while an agent that needs specialised tools, additional languages or a particular testing framework may require a custom container. Sessions are designed to be temporary, and Azure can remove them after a configurable period of inactivity. This makes them useful for applications that execute many short tasks without needing a permanently running environment for each one.

Another option is [Azure Container Apps Jobs](https://learn.microsoft.com/en-us/azure/container-apps/jobs), which are designed for containerised workloads that run for a finite duration and then stop. Jobs can be triggered manually, on a schedule or in response to events. They may be suitable for automated test runs, code validation tasks and workloads where the agent submits a job and waits for its result.

However, a Container Apps Job should not automatically be treated as equivalent to a security-hardened sandbox for arbitrary hostile code. The isolation and permissions available to the workload still need to be assessed. For particularly sensitive use cases, dedicated virtual machines or other strongly isolated environments may be more appropriate.

### A Practical Example: An AI Agent That Writes and Tests Python Code

Consider an agent designed to help developers solve programming problems. A user submits a task, the agent generates Python code and then needs to execute several tests before deciding whether the solution is correct. Instead of executing the generated program inside the main application, the system sends it to an isolated Azure execution environment.

The main application acts as the controller. It receives the request, communicates with the AI model and determines when code execution is required. A separate execution service accepts the approved job, allocates a sandbox and runs the generated code under defined restrictions. Once execution finishes, the sandbox returns the output, error information and test results to the controller.

If the code fails, the agent can examine the error and attempt a correction, subject to limits on how many attempts it can make. If the code succeeds, the agent can return the verified result to the user. The important point is that the generated code never needs direct access to the application's production environment.

This design is useful for more than programming assistants. Similar patterns can support AI-driven data analysis, automated code evaluation, software testing and agents that need to run small scripts as part of a larger workflow. Microsoft's [training module on running AI-generated code securely in Azure Container Apps](https://learn.microsoft.com/en-us/training/modules/dynamic-sessions-azure-container-apps/) provides a useful introduction to this architecture.

## Where Terraform Fits Into AI Agent Sandboxing

One of the things I appreciate about working with Azure is the ability to manage infrastructure programmatically. When building experimental environments, manually creating resources through the Azure portal may be convenient initially, but it becomes difficult to maintain consistency as the project grows.

This is where infrastructure as code, or IaC, becomes valuable. Tools such as Terraform allow engineers to describe cloud infrastructure in configuration files rather than creating every resource manually. Those files can be version-controlled, reviewed and used to deploy similar environments repeatedly.

For an AI agent sandbox, Terraform could define the resource group, networking, execution infrastructure, monitoring configuration and access permissions. Instead of relying on someone to remember which settings were used during a previous deployment, the intended infrastructure configuration is documented in code.

Microsoft provides an [overview of Terraform on Azure](https://learn.microsoft.com/en-us/azure/developer/terraform/overview), including the AzureRM and AzAPI providers used to manage Azure resources. Depending on the services and features required, an implementation may use either provider or a combination of both.

### Creating Disposable Infrastructure With Terraform

Imagine building an agentic testing platform for a development team. Each test environment needs a consistent configuration, including restricted permissions, approved container images and resource limits. Terraform can provision the supporting infrastructure using a repeatable deployment process.

The team could maintain separate configurations for development, testing and more sensitive workloads. Changes to network policies or execution limits could be reviewed through pull requests before being applied. This also creates a clearer record of how the sandbox environment has changed over time.

Terraform can help remove infrastructure when it is no longer required, which is particularly useful for experiments and temporary testing environments. However, there is an important distinction between provisioning the underlying sandbox platform and creating an individual execution session.

For example, Terraform might create a Container Apps environment and session pool, while the application requests individual sessions through the service's management API. Recreating an entire Azure infrastructure deployment for every small Python script would introduce unnecessary latency and complexity.

Terraform is therefore most useful for managing the infrastructure and security configuration around the execution system, while the application or orchestration layer handles individual agent tasks.

{% include random-related-article.html %}

## Security Controls Every AI Agent Sandbox Should Have

Creating a separate execution environment is only the beginning. A sandbox becomes useful as a security control when the surrounding architecture restricts what the code can access and what actions it can perform.

The first consideration is identity and permissions. The sandbox should not inherit broad access to the Azure subscription or the credentials used by the main application. Where Azure resource access is necessary, managed identities and narrowly scoped role assignments can help limit permissions. In many cases, the execution environment may not need access to Azure management APIs at all.

Network access is equally important. An agent that only needs to perform local calculations should not automatically receive unrestricted internet connectivity. If outbound access is required, it should be limited to approved destinations wherever the chosen service supports that restriction. Otherwise, generated code could attempt to contact external services, download unexpected dependencies or transmit information outside the environment.

The filesystem also needs attention. Sandboxes should receive only the files required for the current task, rather than entire repositories, shared directories or production datasets. Temporary files should be removed when the session ends, and sensitive information should not be stored in environment variables that untrusted code can read.

Another important control is resource consumption. AI-generated programs can enter infinite loops, allocate excessive memory or create large amounts of output. Execution timeouts, CPU and memory limits, concurrency restrictions and output-size limits help prevent a single task from consuming disproportionate resources.

### Why Monitoring and Execution Logs Matter

When an AI agent executes code automatically, understanding what happened during execution becomes important for both debugging and security investigations. The application should record which task requested execution, which sandbox handled it, when execution started and finished, and whether the task succeeded or failed.

Azure Monitor and Log Analytics can support parts of this process, although the available logs differ between Azure Container Apps code interpreter sessions and custom container sessions. Microsoft's [dynamic sessions usage documentation](https://learn.microsoft.com/en-us/azure/container-apps/sessions-usage) explains these differences and the available logging mechanisms.

Logging also requires care because generated code may print sensitive information. Capturing every line of output without filtering could create another security problem. Logs should be designed to support troubleshooting and auditing without unnecessarily storing credentials, private data or other sensitive content.

For an agentic system, I would also want a clear connection between the original user request, the generated code, the execution attempt and the returned result. That makes it easier to investigate unexpected behaviour and understand whether the agent performed only the actions required for its task.

## The Security Risks That Sandboxing Does Not Automatically Solve

A sandbox can reduce the consequences of executing untrusted code, but it does not make an AI agent completely secure. The model may still misunderstand a task, generate incorrect code or follow malicious instructions embedded in external content.

Prompt injection is one example. An agent reading a repository or document may encounter text that attempts to redirect its behaviour. Even when execution happens inside a sandbox, the agent could still be manipulated into performing actions that are unrelated to the user's original request.

There is also the possibility of an agent repeatedly generating code that fails or behaves unexpectedly. Without limits on retries and execution attempts, a relatively simple task could trigger a large number of sandbox sessions and consume significant resources.

Another concern is the security of the sandbox platform itself. Isolation technologies reduce risk, but they are not guarantees against every possible vulnerability. The runtime, container images, dependencies and underlying infrastructure still need security updates and appropriate configuration.

For these reasons, sandboxing should be treated as one layer of a broader security architecture. Input validation, tool permissions, execution policies, monitoring and human approval for sensitive actions remain important. The [OWASP guidance on securing LLM applications](https://genai.owasp.org/llm-top-10/) discusses several related risks, including prompt injection and excessive agency.

{% include random-related-article.html %}

## How Much Would an AI Agent Sandbox Cost in Azure?

Cost is another reason I find this architecture interesting. A permanently running virtual machine may be simple to understand, but it can become expensive when the agent only needs to execute code occasionally. Paying for idle infrastructure is not particularly attractive when most tasks finish within seconds or minutes.

Azure Container Apps dynamic sessions can be a useful alternative because they are designed for temporary execution environments. However, the billing model depends on the session type, configured resources and usage. Custom container session pools can incur costs associated with allocated resources, including prewarmed capacity, so temporary sessions do not necessarily mean the entire platform is free when idle.

Container Apps Jobs may also be cost-effective for suitable short-lived workloads because they are designed to run tasks and stop. The actual cost depends on the chosen compute configuration, execution duration, workload frequency and applicable Azure pricing model.

A virtual machine-based approach offers more control over the operating environment, but it introduces additional considerations such as provisioning time, operating system maintenance, storage and compute charges. Stopping a VM may remove some compute costs, but associated resources can continue generating charges.

The [Azure Container Apps pricing page](https://azure.microsoft.com/en-us/pricing/details/container-apps/) and [Azure Pricing Calculator](https://azure.microsoft.com/en-us/pricing/calculator/) are useful starting points for estimating the cost of a particular architecture.

### Why Agent Retries and Concurrency Can Increase Costs

One detail that is easy to overlook is how often an agent may execute code during a single task. A developer might think of one user request as one execution, but an agent could generate a solution, run tests, encounter an error, revise the code and repeat the process several times.

If the application supports many users simultaneously, those repeated attempts can create significant demand for sandbox resources. The cost is therefore influenced not only by the number of user requests but also by the number of executions each request generates.

For example, a testing platform processing hundreds of requests could produce thousands of individual code executions if agents repeatedly attempt to correct failing solutions. Even short executions can become expensive when combined with high concurrency, monitoring, storage and network usage.

This is why I would consider execution budgets part of the application's design. Limits on attempts per task, maximum execution duration, concurrent sessions and overall resource consumption can help prevent unexpected costs. Azure Cost Management and budget alerts can provide additional visibility, although budget alerts should not be mistaken for automatic spending limits.

## What I Would Consider Before Building This in Azure

If I were designing an agent execution sandbox, I would begin by understanding exactly what the agent needs to do. An agent that runs short Python calculations has very different requirements from one that compiles applications, installs system packages or executes integration tests.

For a relatively simple Python-based agent, I would first evaluate Azure Container Apps dynamic sessions because they are designed for isolated execution and provide a managed session lifecycle. If the workload required custom dependencies or additional languages, I would consider custom container sessions. For longer-running, well-defined testing tasks, Container Apps Jobs could also be worth evaluating.

I would then define the security boundaries before connecting the execution environment to an AI model. That means deciding which files the sandbox can receive, whether it needs network access, what credentials are available and how the system handles failed or timed-out executions.

Terraform would be useful for provisioning the supporting infrastructure consistently, while the application would manage individual execution requests. I would also want to test cleanup behaviour carefully, because a sandbox that remains active longer than intended can create both security and cost problems.

Finally, I would measure how the architecture behaves under realistic agent workloads. A small demonstration that runs one Python script successfully is useful, but it does not reveal how the system performs when multiple agents execute code concurrently, repeatedly fail tests or generate unexpectedly large outputs.

## A Practical Azure and Terraform Guide Is Coming Soon

This article is mainly about why agent execution sandboxes matter and how I would think about designing one in Azure. There is a lot more to cover when it comes to the actual implementation, especially around Terraform configuration, managed identities, networking and connecting an AI agent to the execution environment.

I'm planning to write a detailed practical guide soon, walking through the process of building an Azure-based sandbox for AI-generated code. The idea is to start with the infrastructure, configure the necessary security controls and then connect a simple agent that can submit code, execute tests and retrieve results.

I also want to examine the cost of running the environment and what happens when executions fail, exceed their time limits or need to be cleaned up. Those operational details are often just as important as getting the initial demonstration working.

Rather than presenting a sandbox as something that automatically makes an AI agent safe, I want the practical guide to show how different security controls work together and where their limitations remain.

## What Building Secure AI Agent Sandboxes Made Me Think About

Having spent much of my career working with Azure-dependent technologies, I naturally see cloud infrastructure as an important part of building reliable AI applications. But the rise of agentic AI has changed how I think about the relationship between application code and the infrastructure that executes it.

Previously, developers generally knew which code would run in an environment because it had been written, reviewed and deployed through an established process. With AI agents, new code can be generated dynamically and executed as part of a task, sometimes without a developer examining every line first.

That makes isolation much more than an optional infrastructure feature. It becomes a fundamental part of deciding how much authority an AI system should have and how to limit the consequences of unexpected behaviour.

**My biggest takeaway is that giving an AI agent the ability to execute code should also mean giving it a carefully restricted place to execute that code.** Azure provides useful building blocks for this, and Terraform can make the surrounding infrastructure easier to reproduce, review and manage.

The challenge is finding the right balance between flexibility, security, performance and cost. A sandbox that is too restrictive may prevent an agent from completing legitimate tasks, while one with excessive permissions may defeat the purpose of isolation.

As AI agents become more capable and begin performing increasingly complicated engineering tasks, I expect secure execution environments to become a much more common part of application architecture. And given my background with Azure, this is definitely an area I want to investigate further through practical implementation rather than theory alone.

{% include random-related-article.html %}
