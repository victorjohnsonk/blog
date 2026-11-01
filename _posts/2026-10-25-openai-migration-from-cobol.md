---
layout: post
title: "Can AI Finally Replace COBOL? Why Banks May Be Closer to Escaping Legacy Systems"
description: "OpenAI and Anthropic are making COBOL migration easier with AI. Could banks finally modernise decades-old systems without the enormous costs and risks?"
permalink: /ai-cobol-migration-banks-legacy-system-modernization
author: admin
categories: [ cybersecurity, ai, technology ]
image: assets/images/posts/2026/10-12/ai-cobol-banking-modernization.jpeg
title-image: AI-Powered COBOL Migration and Legacy Banking System Modernisation (AI generated image)
tags: [ cobol, legacy-systems, banking-technology, ai-migration, openai, anthropic, claude-code, mainframe-modernization, fintech, cybersecurity, featured ]
ai_assisted: true
last_modified_at: 2026-10-25 14:26:00 +0100
---

Imagine a bank that processes millions of transactions every day, supports thousands of ATMs and manages customer accounts across several countries. Now imagine discovering that some of its most important systems still depend on a programming language developed in 1959. That language is COBOL, and despite being more than six decades old, it remains an important part of modern banking infrastructure.

For years, banks have wanted to move away from ageing systems and adopt modern technologies. The problem was never simply finding a newer programming language. It was understanding decades of complicated business logic, replacing critical infrastructure and ensuring that nothing broke during the transition. But artificial intelligence may finally be changing the economics of that process.

On 19 October 2026, [OpenAI announced major improvements in its models' ability to work with COBOL and other older programming languages](https://openai.com/index/low-resource-programming-languages/). Its latest research showed that GPT-6.1 Sol could migrate COBOL programs into modern languages with up to 97.9% accuracy on a dedicated evaluation. Earlier in February, [Anthropic had also explained how Claude Code could help organisations modernise COBOL systems](https://claude.com/resources/articles/how-ai-helps-break-cost-barrier-cobol-modernization), potentially reducing work that traditionally required years of engineering effort.

What caught my attention was the possibility that one of banking's longest-running technology problems might finally become more manageable. If AI can understand old code, recover undocumented business rules and help rebuild applications in modern languages, could banks finally move beyond systems they have depended on for decades? The answer is becoming more interesting, although replacing an entire banking platform is still far more complicated than translating its code.

## What Is COBOL and Why Is It Still Used Today?

COBOL stands for Common Business-Oriented Language. It was developed in 1959 to support business data processing, particularly tasks involving financial records, transactions, accounting and administrative operations. Unlike modern programming languages commonly associated with websites, mobile applications and artificial intelligence, COBOL was designed around the needs of large organisations processing enormous volumes of structured information.

Its syntax was intended to be relatively readable, and its design made it suitable for business calculations and record processing. Over time, banks, insurance companies, airlines and government departments built substantial parts of their operations around it. COBOL became especially important on mainframe computers, which were designed to process large workloads reliably and securely. These systems could handle enormous numbers of transactions while maintaining consistency and availability.

Although technology has changed dramatically since the 1960s, many of the applications built during that period continued working. Rather than replacing them completely, organisations repeatedly updated and expanded them. As a result, some modern financial services still depend on software whose foundations were written decades ago.

### How Much of Modern Banking Still Depends on COBOL?

The scale of COBOL's continued use is surprisingly large. In its October 2026 announcement, OpenAI cited estimates suggesting that COBOL supports more than 40% of online banking systems, 80% of in-person credit card transactions and 95% of ATM transactions. These are broad industry estimates rather than a precise audit of every bank, but they demonstrate why the language remains relevant.

A customer checking an account balance through a modern mobile application may never see COBOL. However, the request could eventually reach an older core banking system responsible for maintaining account records or processing transactions. The mobile application may be modern, while the infrastructure behind it still relies on software developed many years earlier. This is an important distinction because banks have modernised many customer-facing services without necessarily replacing the underlying systems that hold their financial records.

{% include random-related-article.html %}

## Why Banks Continued Using COBOL for So Many Decades

At first, it might seem strange that financial institutions with enormous technology budgets continue relying on such an old programming language. But age alone does not make software unreliable. Many COBOL applications have been running for decades, processing financial transactions with predictable behaviour. Banks have spent years improving their reliability, performance and integration with other systems. For a financial institution, that history matters because a system that consistently processes millions of transactions is not something engineers can casually replace simply because newer technology exists.

COBOL applications also contain extensive business knowledge. They may encode how interest is calculated, how payments are processed, how fees are applied and how account balances are updated. Some of those rules have evolved through decades of regulatory changes, mergers, new financial products and internal business decisions. The original developers may have retired, and documentation may no longer explain every detail. In some cases, the code itself has become the most reliable record of how a banking process works. That creates a difficult situation because the technology is old, but the knowledge stored inside it remains extremely valuable.

## Why Banks Could Not Simply Migrate COBOL to Java or Python

This is the question I found most interesting. If Java, Python, C# and other modern languages have existed for years, why haven't banks simply rewritten their COBOL applications? The answer is that translating programming syntax is only a small part of the problem. A banking system may contain millions of lines of COBOL connected to databases, transaction-processing systems, batch jobs, payment networks and other applications. Changing one component can affect several others.

A seemingly minor difference in how a calculation works could produce incorrect financial results. A change in transaction ordering could affect account balances, while an overlooked dependency could disrupt an entire business process. The difficulty is not just reproducing the code. It is reproducing decades of behaviour accurately.

### The Shortage of Experienced COBOL Engineers

One major challenge is the shrinking pool of engineers familiar with older COBOL environments. Many developers who originally built these systems have retired or moved into other roles. Meanwhile, modern software engineering education focuses heavily on languages such as Python, JavaScript, Java and C++. COBOL expertise still exists, but finding engineers who understand both the language and the particular mainframe environment used by a bank can be difficult.

Even an experienced programmer may need considerable time to understand a banking application that has been modified repeatedly over several decades. The problem becomes worse when documentation is incomplete or outdated. Engineers may need to examine thousands of files, trace dependencies and reconstruct business processes before they can safely change anything. Anthropic highlighted this challenge in its [COBOL modernisation article](https://claude.com/resources/articles/how-ai-helps-break-cost-barrier-cobol-modernization), explaining that understanding legacy systems often consumes much of the effort involved in replacing them.

### Why COBOL Migration Has Been So Expensive

The financial cost of migration has historically been another major obstacle. Large banks cannot simply assign a few developers to rewrite their core systems over a weekend. Modernisation projects can require specialist consultants, business analysts, infrastructure engineers, security teams, testing specialists and regulatory experts. Before development begins, teams may spend months understanding the existing architecture and documenting how different systems communicate.

The new applications must then be built, integrated and tested against the original systems. Data migration, infrastructure changes and operational training add further complexity. Banks may also need to operate the old and new platforms simultaneously for an extended period, increasing infrastructure and staffing costs. These projects can stretch across several years, with the risk of delays or unexpected technical problems. For some institutions, continuing to maintain the existing COBOL platform has therefore appeared less risky than attempting a complete replacement.

{% include random-related-article.html %}

## Why Couldn't Banks Build a New System and Switch COBOL Off?

Another question is why banks cannot simply build an entirely new platform, move their customers across and shut down the old system. In theory, that is possible. In practice, it is one of the most difficult approaches to core banking modernisation. A banking platform does much more than store customer balances. It manages transactions, account relationships, interest calculations, payment processing, financial reporting, audit records and numerous regulatory requirements.

A replacement system must reproduce all the necessary behaviour while continuing to support everyday banking operations. Even a small mistake can have serious consequences. For example, imagine a new system calculates interest using a slightly different rounding rule. The difference might be tiny for one account, but across millions of accounts and repeated calculations, the financial impact could become significant.

Other problems may be harder to notice. Historical transaction records could be interpreted differently, payment processing might behave unexpectedly or an integration could fail under heavy demand. Banks also have strict requirements for data integrity, security, availability and auditability.

### Why a Complete Shutdown Is So Risky

A bank cannot normally stop processing transactions for several days while engineers replace its core systems. Customers still need access to their money. Businesses must continue making payments, card transactions need to be authorised and financial records must remain consistent. Even a short interruption can create operational disruption and reputational damage. This makes a sudden replacement, sometimes called a big-bang migration, particularly risky.

A more practical approach often involves moving individual services gradually while allowing old and new systems to operate together. However, this creates its own challenges. Engineers must ensure that both environments handle information consistently and that transactions are not duplicated, lost or processed incorrectly. The migration therefore becomes a long process of controlled changes rather than a simple software replacement.

## How OpenAI's New COBOL Migration Capabilities Could Change Things

This is where the recent AI developments become particularly interesting. On 19 October 2026, [OpenAI published research on improving coding capabilities in low-resource programming languages](https://openai.com/index/low-resource-programming-languages/), including COBOL, Fortran and Visual Basic. These languages have comparatively less modern training material available than languages such as Python and JavaScript. That has historically made them more challenging for AI coding models.

OpenAI introduced evaluations designed to measure whether its models could work effectively in these languages and preserve software behaviour during migration. One evaluation, called MultiLangBench, tested the ability to build a SQLite-compatible database engine across 20 programming languages. Another specifically examined COBOL migration. The results suggest that modern AI models are becoming substantially more capable of understanding and translating older software.

### OpenAI Reported Up to 97.9% COBOL Migration Accuracy

OpenAI's COBOL migration evaluation required models to translate existing COBOL programs into C++, Java, Kotlin, Python or Rust. The important requirement was not simply producing code that compiled successfully. The translated program had to preserve the behaviour of the original application. This matters because financial software depends heavily on exact calculations, record handling and predictable outputs.

The evaluation used hidden tests requiring byte-for-byte agreement between observable outputs. A migration was considered successful only when all tests passed. OpenAI reported that GPT-6.1 Sol achieved 86.6% accuracy at low reasoning effort, compared with 5.4% for GPT-5.6 Sol under the same setting. At higher reasoning effort, GPT-6.1 Sol reached 97.9% accuracy.

That is a substantial improvement and suggests AI could reduce some of the manual effort involved in translating legacy applications. However, the result applies to OpenAI's defined evaluation. It does not mean that an AI model can migrate 97.9% of an entire bank's infrastructure safely without human involvement. A complete banking migration includes many challenges beyond translating individual programs. Still, the improvement is significant because accurate code translation has historically been one of the expensive parts of legacy modernisation.

## Anthropic Is Also Working on AI-Powered COBOL Modernisation

OpenAI is not the only company focusing on this problem. On 23 February 2026, Anthropic published an article explaining how Claude Code could help organisations modernise COBOL applications by automating tasks that traditionally required extensive manual investigation. Its approach focuses heavily on understanding the existing system before attempting to replace it.

Claude Code can assist engineers in analysing large codebases, identifying dependencies, documenting workflows and locating components that may be suitable for migration. These activities are particularly valuable when documentation is incomplete and the original developers are no longer available. Anthropic has suggested that AI-assisted workflows could reduce some modernisation timelines from years to quarters, although actual results will depend on the complexity of the system.

### Understanding the Old System Before Rewriting It

One of the most difficult parts of COBOL modernisation is reconstructing business logic. A bank may have thousands of interconnected programs that depend on shared data structures, batch processes and older database systems. Traditionally, engineers would examine these relationships manually, often with the assistance of specialised analysis tools.

AI coding agents can help accelerate this process by reading source files, tracing dependencies and producing documentation that explains how components interact. Once the system is better understood, engineers can decide whether to translate particular applications, create modern interfaces around them or replace selected components. Anthropic also describes an incremental approach in which modernised components are tested alongside existing systems before taking over their responsibilities.

This is particularly relevant to banking because it avoids requiring an immediate replacement of the entire platform. A related [AWS technical article on mainframe modernisation with Claude Code](https://aws.amazon.com/blogs/migration-and-modernization/reimagining-mainframe-applications-with-aws-transform-and-claude-code/) explains how AI-assisted reverse engineering can help extract business rules before new cloud-native applications are developed.

{% include random-related-article.html %}

## Could AI Finally Make COBOL Migration Affordable for Banks?

The biggest opportunity may not be that AI can write Java or Python faster than a human developer. It is that AI can reduce the effort required to understand old systems before modernisation begins. For decades, banks have spent considerable resources analysing undocumented applications, identifying dependencies and reconstructing business rules. If AI can automate meaningful portions of that work, migration projects may become less expensive and easier to plan.

AI can also assist with generating test cases, comparing outputs and documenting the differences between legacy and modern implementations. This could allow experienced engineers to spend more time reviewing business requirements and identifying risks rather than manually tracing every line of code. The potential benefit is especially important for organisations with large COBOL estates and limited access to specialist engineers. However, the financial savings will depend on how much AI-generated work still requires correction, validation and integration.

An inexpensive translation that introduces subtle errors could ultimately cost far more than a carefully managed traditional migration.

## Why AI Cannot Simply Replace an Entire Banking System Yet

Despite the progress, there is an important distinction between translating COBOL code and replacing a complete banking platform. A bank's technology environment includes more than application source code. It may depend on mainframe hardware, transaction monitors, databases, job schedulers, security systems, network connections and decades of operational processes. Even if AI translates an application perfectly, that does not automatically reproduce the performance, reliability and integration of the original environment.

IBM has raised this concern in discussions about AI-assisted COBOL modernisation, arguing that translating code does not capture the full complexity of systems developed through decades of hardware and software integration. The disagreement highlights two different perspectives. AI companies are demonstrating that code analysis and migration can become faster and more affordable. Mainframe technology providers emphasise that reliable enterprise systems depend on more than the programming language used to build them. Both considerations matter when evaluating banking modernisation.

### The Importance of Financial Accuracy

Banking software requires an unusually high level of correctness. A modernised application must preserve financial calculations, transaction ordering, exception handling and data consistency. Consider a COBOL program that performs fixed-point arithmetic. If a translated version changes how decimal values are rounded or truncated, it may produce different results even though the code compiles and appears correct.

OpenAI specifically highlighted this issue in its migration research. For financial institutions, these differences cannot simply be dismissed as minor programming errors. They may affect account balances, interest payments or regulatory reporting. This is why migration testing must go beyond checking whether the new application runs successfully. Engineers need to establish that the modernised system behaves correctly across ordinary transactions, unusual edge cases, historical data and failure conditions.

## Cybersecurity and Compliance Still Matter During AI Migration

Banking is one of the most sensitive industries for software modernisation because its systems process financial information and support essential services. Introducing AI into the migration process creates additional considerations around data protection, access control and operational security. A coding agent analysing legacy applications may encounter customer information, internal credentials, payment-processing logic and confidential infrastructure details.

Banks therefore need to understand how AI tools handle sensitive information and whether their deployment arrangements satisfy applicable security and regulatory requirements. The migration process itself also introduces security risks. New applications may use different authentication mechanisms, database technologies, APIs and infrastructure configurations. Each change can introduce vulnerabilities if it is not carefully reviewed.

### Why Human Engineers Remain Essential

AI-generated code still requires expert review, particularly when it supports financial transactions. Banking engineers understand the institution's business requirements, operational constraints and regulatory responsibilities. Security specialists assess whether the new architecture introduces weaknesses, while testing teams verify that expected behaviour has been preserved.

Regulators also expect financial institutions to manage technology risks and maintain operational resilience. For example, the [Bank of England and Prudential Regulation Authority's operational resilience guidance](https://www.bankofengland.co.uk/prudential-regulation/prudential-and-resolution-policy-index/operational-resilience) emphasises the importance of managing disruptions to important business services. AI can support the engineering work involved in modernisation, but it cannot take responsibility for the bank's compliance obligations or guarantee that every migration decision is correct.

The safest approach is therefore to use AI as an engineering assistant within a controlled migration process, rather than treating it as an autonomous replacement for technical and business expertise.

{% include random-related-article.html %}

## Will Banks Finally Be Able to Move Away From COBOL?

The latest developments make the future of COBOL more interesting than it has been for years. For a long time, the biggest obstacle to modernisation was not the availability of better programming languages. It was the cost and risk of understanding and replacing complicated legacy systems. AI is beginning to reduce some of those barriers.

OpenAI's migration evaluations demonstrate major improvements in preserving COBOL program behaviour when translating code into modern languages. Anthropic's work with Claude Code shows how AI can assist with the earlier stages of understanding, documenting and planning legacy modernisation. Together, these developments suggest that banks may have more practical options for gradually replacing older applications.

However, it would be premature to conclude that COBOL will disappear from banking in the near future. Many institutions will continue operating reliable mainframe systems where replacement offers limited business value or introduces unacceptable risk. Others may choose hybrid approaches, retaining important COBOL applications while moving selected services onto modern platforms. The most likely change is not an immediate industry-wide shutdown of COBOL, but a gradual reduction in the time and effort required to modernise systems where migration makes sense.

## What AI-Powered COBOL Migration Made Me Think About Banking Technology

What I find most interesting about this development is how a technology created in 1959 is now becoming an important use case for some of the most advanced AI models available. For decades, banks have continued operating COBOL systems because replacing them was expensive, complicated and risky. The shortage of experienced engineers and the loss of historical documentation made the problem even harder.

Now, AI coding tools are becoming capable of understanding legacy applications, reconstructing business rules and translating programs with much greater accuracy. That does not mean the migration problem has been solved. Banks still need to validate financial calculations, protect sensitive information, preserve operational resilience and ensure that new systems behave correctly under real-world conditions. But the economics may be starting to change.

**My biggest takeaway is that AI may finally make legacy banking modernisation more achievable, not by eliminating the need for experienced engineers, but by reducing the enormous amount of manual work that previously made these projects so difficult.** The most valuable outcome may be giving banks a realistic choice. Instead of maintaining ageing applications because migration appears too expensive, institutions may increasingly be able to evaluate modernisation based on long-term business value.

COBOL has survived for more than six decades because it continues to perform important work reliably. AI is unlikely to change that overnight. But if these new capabilities continue improving, banks may finally be able to modernise more of their infrastructure without treating every migration as an enormous, multi-year engineering gamble. And for an industry where reliability matters more than almost anything else, that could be a significant step forward.

{% include random-related-article.html %}
