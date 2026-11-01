---
layout: post
title: "I Left PHP Behind a Decade Ago. AI Just Gave Me a Reason to Revisit It"
description: "PHP brought back memories of early web development in 2026, when AI-assisted researchers uncovered two critical RCE vulnerabilities hidden for years."
permalink: /php2shell-rce-vulnerabilities-ai-discovery-2026
author: admin
categories: [ cybersecurity, ai, technology ]
image: assets/images/posts/2026/10-12/php2shell-ai-rce-vulnerabilities.png
title-image: PHP2Shell Critical RCE Vulnerabilities and AI-Assisted Security Research (AI generated image)
tags: [ php, php2shell, rce, cve-2026-109618, cve-2026-109619, ai-security, vulnerability-research, cybersecurity, google-gemini, openai, featured ]
ai_assisted: true
comments: true
last_modified_at: 2026-10-26 16:24:00 +0000
---

For anyone who started learning web development in the late 2000s or early 2010s, PHP probably brings back a few memories. It was everywhere. If someone wanted to build a website that did more than display static pages, PHP was often one of the first backend languages they encountered. I was no different. My first small website started with HTML and CSS, and eventually I added PHP to handle basic database operations, forms and a few other features that made the website feel more functional.

To be honest, I never really liked PHP. I still remember dealing with sessions, trying to understand why `$_SESSION` wasn't behaving as expected, connecting to MySQL and spending far too much time debugging something that should have been simple. There were those familiar moments of refreshing a page repeatedly, wondering why a session had disappeared or why a database query suddenly stopped working. It was frustrating, but looking back, those small projects taught me quite a lot about how websites actually worked behind the scenes.

Eventually, I moved on to other technologies and left PHP behind. I hadn't seriously worked with it for well over a decade, and I certainly wasn't expecting it to become something I would be reading about again in 2026. But since joining a cybersecurity company, I've become increasingly curious about vulnerabilities, security research, cyberattacks and the techniques researchers use to uncover weaknesses in software. I've started following cybersecurity blogs, threat intelligence reports, CVE disclosures and security news more closely, and there always seems to be something interesting happening.

Then, on 21 October 2026, PHP suddenly appeared in the cybersecurity headlines. Two critical remote code execution vulnerabilities, collectively called **PHP2Shell**, had been disclosed in the PHP runtime itself. What made the story particularly interesting was that the underlying weaknesses had existed for years, and artificial intelligence had played an important role in helping researchers turn those weaknesses into demonstrable security vulnerabilities.

I hadn't touched PHP in years, but this was enough to make me curious about it all over again.

## PHP2Shell: The Critical PHP Vulnerabilities That Caught My Attention

On 21 October 2026, the PHP development team released emergency security updates addressing two critical vulnerabilities: [CVE-2026-109618](https://www.cve.org/CVERecord?id=CVE-2026-109618) and [CVE-2026-109619](https://www.cve.org/CVERecord?id=CVE-2026-109619). Both received a CVSS v4.0 severity score of 9.2 and could potentially allow unauthenticated remote code execution on vulnerable servers.

Remote code execution, usually shortened to RCE, is one of the more serious categories of software vulnerabilities. It means an attacker may be able to make a vulnerable system execute code remotely, potentially without having legitimate access to the application. Depending on the privileges available to the affected process, successful exploitation could expose sensitive information, compromise applications or give an attacker control over parts of the server.

What surprised me was that the vulnerabilities were not caused by a developer writing insecure PHP application code. They existed inside PHP's core runtime, in the mechanisms responsible for handling memory, errors and requests. This meant even applications with otherwise secure code could be exposed if they were running a vulnerable PHP version.

The [official PHP security announcement](https://www.php.net/archive/2026.php) confirmed that the affected environments included common PHP deployment methods such as PHP-FPM, Apache with `mod_php`, `php-cgi`, FrankenPHP and LiteSpeed. The PHP team considered Apache `mod_php` particularly exposed because researchers had demonstrated an unauthenticated attack path that could be triggered before normal application code executed.

### What Were CVE-2026-109618 and CVE-2026-109619?

The first vulnerability, **CVE-2026-109618**, involved how PHP handled out-of-memory conditions. When PHP runs out of its permitted memory while processing a request, execution may be interrupted before certain internal data structures have been fully initialised. Under vulnerable conditions, the cleanup process could then treat invalid or partially initialised memory as legitimate data, creating opportunities for memory corruption.

The second vulnerability, **CVE-2026-109619**, involved stale global state. In simple terms, PHP could retain references to memory that had already been freed. A later request handled by the same worker might encounter that stale information before the runtime properly reset its internal state. This could result in memory corruption and, under particular conditions, remote code execution.

Both issues are more complicated than ordinary application-level vulnerabilities such as SQL injection or cross-site scripting. They involve how PHP manages memory internally, particularly when execution is interrupted unexpectedly. Researchers demonstrated that these weaknesses could be used to compromise vulnerable environments, including deployments running popular content management systems.

The technical findings were documented by [Wiz Research in its PHP2Shell analysis](https://www.wiz.io/blog/php2shell-php-rce), which explained how the vulnerabilities could affect applications independently of the code written by their developers.

{% include random-related-article.html %}

## Were These PHP Vulnerabilities Really Hidden for Years?

This was probably the part of the story that interested me most. The vulnerabilities were disclosed in October 2026, but the underlying problems were much older. According to the researchers, some affected code paths dated back to PHP 5.4, which was released in 2012. That means parts of the vulnerable behaviour had existed for more than a decade before the 2026 disclosure.

The history goes even further back. Security researcher Stefan Esser had investigated related PHP memory-handling weaknesses in 2004. In 2020, a PHP bug report described an out-of-memory condition that interfered with temporary-file cleanup. Then, during a security audit organised by OSTIF and conducted by Quarkslab in 2024, researchers encountered a related issue, but they could not demonstrate a practical exploit.

The important distinction is that the underlying weakness was not entirely unknown until AI appeared. Human researchers had already identified suspicious behaviour, but proving that it could be exploited reliably was extremely difficult. Fixing the issue was also complicated because the affected behaviour was connected to fundamental parts of PHP's memory and error-handling mechanisms.

The [Calif Research write-up](https://calif.io/php2shell/) provides a particularly interesting history of the vulnerability, tracing the investigation from earlier PHP security research through the 2026 discovery. Reading that timeline made me wonder how many other long-standing software weaknesses have been noticed, documented or partially investigated without anyone successfully demonstrating their full impact.

## How AI Helped Researchers Discover and Prove PHP2Shell

The discovery was not simply a case of someone asking ChatGPT to find a PHP vulnerability and receiving an answer. It involved experienced security researchers, specialised testing, debugging and collaboration between several organisations. What changed was the ability of advanced AI models to assist with complicated parts of the investigation that previously required extensive manual effort.

In 2026, Calif Research joined OpenAI's Patch the Planet initiative and began investigating PHP with the involvement of the PHP Foundation. During August, researchers identified exploitable behaviour connected to out-of-memory handling and other interruption points in the runtime. OpenAI and Calif independently reported the same underlying problem, while Wiz Research separately identified additional attack paths.

Wiz used several AI systems during its investigation, including Wiz Atlas, Google's Gemini 4 Argon and OpenAI's GPT-5.6 Sol. According to the researchers, Gemini 4 Argon made an important contribution to vulnerability discovery, security testing, detection development and patch validation. The models helped researchers analyse complicated memory behaviour and investigate why particular attempts succeeded or failed.

This is where AI becomes particularly interesting for cybersecurity. Memory-corruption vulnerabilities often require a detailed understanding of how software allocates, frees and reuses memory. Small differences between versions, configurations and execution environments can make an otherwise promising finding difficult to reproduce. AI-assisted analysis can reduce some of the manual work involved in investigating those differences, although experienced researchers are still needed to interpret the results and verify them.

The [Google Cloud security analysis](https://cloud.google.com/blog/products/identity-security/responding-to-core-php-vulnerabilities-cve-2026-109618-cve-2026-109619/) also acknowledged Gemini's contribution to the research. What stood out to me was not that AI independently discovered everything, but that it helped make a technically difficult investigation more practical.

## Why the PHP2Shell Discovery Makes Me Nervous About AI

This is the part that genuinely worries me. AI-assisted vulnerability discovery is clearly valuable for defenders. Researchers can investigate code more efficiently, identify weaknesses sooner and help developers prepare fixes before those weaknesses are widely exploited. But the same improvements in reasoning, debugging and code analysis may also become useful to malicious actors.

For years, some vulnerabilities remained difficult to exploit because the technical knowledge and effort required were enormous. A weakness might exist in widely used software, but developing a reliable attack could require weeks or months of specialist investigation. That difficulty was never a proper security guarantee, but it could limit how easily certain vulnerabilities were exploited.

AI may be changing that calculation. If advanced models can help researchers understand complicated code paths, analyse failures and reduce repetitive investigation, the amount of time required to assess a vulnerability could decrease substantially. The same tools that help defenders discover dangerous flaws could also help attackers investigate weaknesses in unpatched systems.

What concerns me most is the possibility that **the gap between vulnerability discovery and attempted exploitation could become much smaller**. Security teams already struggle to identify affected assets, assess severity, test updates and deploy patches. If vulnerability research becomes faster while patching remains slow, defenders may face increasing pressure.

Of course, this does not mean AI automatically makes every vulnerability easy to exploit. Real-world exploitation still depends on system configuration, technical constraints and many other factors. But PHP2Shell demonstrates that complexity alone may become a less dependable barrier as AI-assisted security research improves.

{% include random-related-article.html %}

## Why PHP2Shell Was Particularly Serious for the Web

PHP remains one of the most widely used server-side programming languages, even if many newer developers associate modern backend development with JavaScript, Python, Go or other technologies. Popular platforms such as WordPress, Drupal and Joomla depend on PHP, and many organisations operate applications built on PHP frameworks or custom PHP code.

The PHP2Shell vulnerabilities were particularly concerning because they affected the language runtime rather than a single website or plugin. A developer could follow secure coding practices and still operate an exposed application if the underlying PHP installation remained vulnerable.

Wiz researchers demonstrated remote code execution against representative WordPress, Drupal and Joomla environments. They also demonstrated memory disclosure, where sensitive information from a PHP worker's memory could potentially become accessible. Depending on what the worker had processed, that memory might contain information such as authentication tokens, credentials or other sensitive data.

This is why vulnerabilities in shared infrastructure can create such widespread concern. A single weakness in a widely deployed runtime may affect many different applications, hosting environments and organisations. The scale of potential exposure depends on which versions are deployed and whether the affected systems can be reached by attackers.

### Were Attackers Already Trying to Exploit the Bugs?

Another worrying development was that suspicious exploitation activity appeared before the public release of the fixes. Amazon Threat Intelligence reported observing an apparent exploitation attempt on 17 October 2026, several days before PHP released its security updates. Other security organisations subsequently reported additional attempts around the disclosure period.

This does not mean every attempt was successful or that widespread server compromises had already occurred. There is an important difference between detecting an exploit attempt and confirming that an attacker achieved remote code execution. Nevertheless, the activity increased the urgency surrounding the disclosure.

On 21 October, PHP released patched versions 8.5.12, 8.4.27, 8.3.36 and 8.2.35. The PHP team warned that temporary mitigations were incomplete and that installing the security updates was the only safe long-term response.

The UK's [National Cyber Security Centre also issued an alert](https://www.ncsc.gov.uk/news/critical-security-issue-affecting-php), encouraging organisations to identify affected PHP installations, prioritise internet-facing systems and apply the available updates. The fact that a programming language I associated with my earliest web projects had become the subject of such urgent security guidance felt rather surreal.

## What PHP2Shell Means for Developers and Security Teams

For developers, PHP2Shell is a reminder that application security does not stop at the code they write. Even a well-designed application depends on programming language runtimes, libraries, frameworks, operating systems and other components that may contain vulnerabilities.

Keeping dependencies updated is important, but maintaining the underlying runtime matters just as much. Organisations running PHP need to know which versions are deployed, where those installations are located and whether any applications depend on unsupported releases. PHP 8.1 and earlier had already reached end of life and were not receiving normal security releases for these vulnerabilities.

For cybersecurity teams, the challenge is broader. A critical vulnerability announcement can require rapid asset discovery, exposure assessment, patch testing, deployment coordination and monitoring for suspicious activity. Large organisations may have PHP installed across different applications, servers, containers and third-party products, making it difficult to identify every affected system immediately.

The [CERT-EU PHP security advisory](https://cert.europa.eu/publications/security-advisories/2026-018) provides additional technical context and remediation guidance. It also reinforces why organisations should not rely entirely on temporary configuration changes when complete vendor fixes are available.

The AI aspect introduces another consideration. If vulnerability discovery becomes faster, organisations may need to improve the speed of their vulnerability management processes as well. Better asset inventories, automated testing, clear patching responsibilities and effective incident response procedures could become even more important.

{% include random-related-article.html %}

## Are We Entering an Era of AI-Accelerated Vulnerability Discovery?

Since joining the cybersecurity industry, I've been trying to understand CVEs more closely. I regularly come across new vulnerability disclosures, technical write-ups and reports describing weaknesses in software that millions of people depend on. What initially surprised me was the sheer number of vulnerabilities being reported, but I have become increasingly interested in how researchers actually discover them.

PHP2Shell adds another dimension to that curiosity. The underlying problems had existed for years, and related weaknesses had already been investigated by human researchers. Yet the combination of specialist expertise and advanced AI tools helped researchers demonstrate serious exploitation paths in 2026.

This raises a question that I suspect the cybersecurity industry will be discussing more frequently: are we going to see more long-standing vulnerabilities discovered as AI becomes better at understanding complicated software?

The answer may be yes, although an increase in discoveries would not necessarily mean software is suddenly becoming less secure. It could also mean researchers are becoming better at identifying weaknesses that were already present. Changes in reporting practices, software complexity and research investment also affect vulnerability disclosure numbers.

For defenders, discovering hidden vulnerabilities earlier is a positive development. The challenge is ensuring that software maintainers and organisations can respond quickly enough. The concern is not simply that AI will discover more vulnerabilities, but that it could change the speed at which both researchers and attackers investigate them.

## What PHP2Shell Made Me Think About Cybersecurity

I never expected PHP to become part of my cybersecurity reading again. In my early development days, I mostly associated it with database connections, login forms, sessions and the frustration of trying to understand why a simple website wasn't behaving as expected. Eventually, I moved on and barely thought about the language for more than a decade.

Now, in 2026, PHP has returned to my attention for a completely different reason. Instead of debugging my own session-handling mistakes, I'm reading about memory corruption, stale global state, remote code execution and how advanced AI models helped researchers investigate vulnerabilities hidden deep inside the language runtime.

What makes this story particularly interesting is that it connects several things I've been trying to understand since entering cybersecurity: vulnerability discovery, responsible disclosure, software maintenance, patch management and the growing influence of artificial intelligence.

**My biggest takeaway is that AI could change how quickly we discover and understand vulnerabilities that have existed for years.** That is encouraging because defenders may be able to identify serious weaknesses sooner. At the same time, it worries me because the same technological progress could reduce the effort required for malicious actors to investigate vulnerable systems.

PHP2Shell also reminded me that software does not become secure simply because it has been running successfully for a long time. A vulnerability can remain hidden beneath years of normal operation, waiting for someone to understand how the underlying behaviour can be abused.

Perhaps that is what concerns me most about the future of AI-assisted cybersecurity. We may be entering a period when vulnerabilities that once seemed too complicated to exploit become much easier to investigate, while organisations still need time to understand and patch them.

And after spending years away from PHP, I certainly didn't expect an old programming language from my first web-development projects to make me think so much about the future of cybersecurity.

{% include random-related-article.html %}
