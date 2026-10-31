---
layout: post
title: "October 2026 Was a Tough Month for Cybersecurity. Is AI Changing the Game?"
description: "October 2026 saw major cyberattacks, data breaches and critical vulnerabilities. A personal look at the incidents and AI's growing role in cybersecurity."
permalink: /october-2026-cyberattacks-data-breaches-ai
author: admin
categories: [ cybersecurity, ai, technology ]
image: assets/images/posts/2026/10-12/october-2026-cybersecurity.jpeg
title-image: October 2026 Cyberattacks, Data Breaches and AI Security (AI generated image)
tags: [ cybersecurity, cyberattacks, data-breaches, october-2026, ai-security, critical-vulnerabilities, cybersecurity-awareness-month, sticky]
ai_assisted: true
last_modified_at: 2026-10-31 00:00:00 +0000
---


I recently started a new role at a cybersecurity company, and naturally, it has made me more curious about what is happening across the cyber world. I have been paying closer attention to newly discovered vulnerabilities, security research, data breaches and cyberattacks. Every day seems to bring something new, whether it is a critical vulnerability affecting widely used software or another major organisation investigating a security incident.

But October 2026 felt particularly unusual.

October is **Cybersecurity Awareness Month**, a time dedicated to encouraging better security practices and helping people understand cyber risks. Ironically, this October seemed to deliver one security headline after another. Major retailers reported breaches, critical vulnerabilities emerged in widely used technologies, government websites were temporarily taken offline, and cryptocurrency platforms faced significant security incidents.

Some researchers and industry commentators have even started referring to the period as **"Black October"**, reflecting the intensity of the cybersecurity developments reported during the month. [The Guardian's coverage of AI-enabled hacking](https://www.theguardian.com/technology/2026/oct/23/cybersecurity-ai-hacking-php-vulnerability) captured the growing concern surrounding these events.

What caught my attention was not just the number of incidents, but how quickly everything seemed to happen. It also made me wonder how much artificial intelligence might be changing the speed of vulnerability discovery, exploitation and cyber defence.

I thought I would put together a quick roundup of some of the major incidents and vulnerabilities that made October 2026 such a difficult month for the cybersecurity community.


## October 2026: A Month of Cyberattacks and Data Breaches

The month brought several major cybersecurity incidents involving retailers, financial institutions, cryptocurrency platforms and AI development tools. What surprised me most was how frequently new incidents appeared, particularly during the second half of October. Some involved confirmed data exposure, while others targeted software supply chains, developer credentials and critical infrastructure.

Here are some of the incidents that caught my attention.

- **ASOS Data Breach (6 October):** The British online retailer confirmed unauthorised access to third-party customer communication platforms after shoppers received suspicious notifications. Names and contact details were exposed, although payment information and passwords were not affected. [BBC News covered the incident](https://bbc.com.im/news/live/cjkg7205q9ret).

- **Hobbs, Whistles and Phase Eight Cyberattack (11–13 October):** TFG London experienced a cyberattack that disrupted online orders and website services across its fashion brands. The company investigated the possibility of customer data exposure. [The Guardian reported on the disruption](https://www.theguardian.com/business/2026/oct/13/hobbs-whistles-hack-cyber-attack-asos).

- **H&M Hacking Claims:** The fashion retailer investigated claims of unauthorised access but said it had not found evidence that its data environment had been compromised. [The Independent covered the investigations](https://www.independent.co.uk/news/uk/home-news/cyber-attack-hack-asos-hobbs-whistles-b3065922.html).

- **French Supermarket Refrigeration Attack:** Reports described cybercriminals interfering with refrigeration systems across hundreds of supermarkets in France, highlighting how cyberattacks can affect physical operations. [The Guardian discussed the incident](https://www.theguardian.com/business/2026/oct/13/hobbs-whistles-hack-cyber-attack-asos).

- **OpenCode API Key Breach (17–19 October):** Attackers accessed an older system associated with OpenCode Console, affecting approximately 1.4% of its users. Exposed AI provider API keys reportedly resulted in unauthorised usage and unexpected charges. The open-source coding application itself was not affected. [TechCrunch reported on the breach](https://techcrunch.com/2026/10/19/hackers-hit-ai-coding-tool-opencode-running-up-charges-on-users-ai-accounts/).

- **State Bank of India Data Exposure (16–21 October):** SBI disclosed the loss of certain data after receiving an alert on 16 October. Investigators identified 3,897 customer records containing personal information within a larger dataset advertised online. The full extent of the exposure remained under investigation. [Hindustan Times covered SBI's disclosure](https://www.hindustantimes.com/india-news/sbi-state-bank-of-india-data-breach-stolen-dark-web-customers-101792575298288.html).

- **Railway Security Breach (20–22 October):** Cloud deployment platform Railway confirmed unauthorised access to internal systems during a targeted campaign. Attackers accessed encrypted customer secrets and decrypted environment variables belonging to some workspaces, prompting credential rotation. Railway said the attackers appeared interested in AI provider API keys. [Railway published an incident report](https://blog.railway.com/p/preliminary-report-october-security-incident).

- **LiteLLM Supply Chain Attack (21 October):** Attackers compromised LiteLLM's release pipeline and distributed malicious version 1.107.0 through PyPI and official container registries. The package contained credential-stealing malware and a remote-code loader. The incident was particularly concerning because LiteLLM is widely used in AI applications. [Microsoft Security Research analysed the attack](https://www.microsoft.com/en-us/security/blog/2026/10/23/inside-the-litellm-1-107-0-supply-chain-compromise-credential-theft-through-python-startup-hooks/).

- **Malicious Anthropic Claude Code Extension (29–30 October):** A maliciously modified version of Anthropic's Claude Code extension appeared in Cursor's extension marketplace for approximately 11 hours. The malware attempted to establish persistent SSH backdoors and collect system information, potentially exposing thousands of developers. Anthropic was not identified as the creator of the malicious package. [BleepingComputer reported on the Trojan](https://www.bleepingcomputer.com/news/security/malicious-claude-code-extension-on-cursor-planted-ssh-backdoors/).

- **Binance Cryptocurrency Hack (29–30 October):** Binance confirmed that attackers compromised its hot wallets on 29 October, resulting in approximately $6.3 billion in unauthorised cryptocurrency withdrawals. The company said it would cover affected funds while investigating the attack and pursuing recovery efforts. [Binance published an official security update](https://www.binance.com/en/support/announcement/detail/d3306d9dca5243548c813b605e1d1751).

What makes these incidents particularly interesting is how different the targets were. Traditional retailers faced customer data exposure, while AI development platforms experienced attacks involving API keys, software packages and developer environments. The LiteLLM and OpenCode incidents stood out to me because they demonstrated how attackers are increasingly targeting the infrastructure used to build AI applications.

## Critical Vulnerabilities That Made October Even More Concerning

Data breaches were only part of the story. October also brought critical vulnerability disclosures affecting widely used programming languages, developer tools and enterprise security products. Some vulnerabilities raised concerns about remote code execution, while others exposed weaknesses in authentication, certificate validation and software dependencies.

One of the biggest developments was the discovery of two serious vulnerabilities in PHP. Considering how widely PHP is used across websites and applications, the potential impact immediately caught my attention.

Some of the notable vulnerabilities and security developments included:

- **PHP2Shell – CVE-2026-109618 and CVE-2026-109619 (21 October):** Two critical PHP vulnerabilities introduced remote code execution risks through memory-handling weaknesses. The PHP project released fixes, while security teams investigated widespread exploitation attempts. [Microsoft published technical guidance](https://techcommunity.microsoft.com/blog/azurenetworksecurityblog/addressing-php2shell-cve-2026-109618-and-cve-2026-109619-upgrade-guidance-and-az/4566623).

- **eMudhra Certificate Authority Security Incident (17–20 October):** A security researcher discovered cryptographically weak keys associated with eight eMudhra intermediate certificate authorities. The affected certificates were revoked, and browser trust programmes took further action. eMudhra stated that its infrastructure had not been compromised and customer data had not been breached. [eMudhra published an official statement](https://emudhra.com/en/post/certificate-security-incident).

- **Node.js Security Vulnerabilities (21 October):** The Node.js project released security updates addressing several issues, including CVE-2026-111497, a high-severity Brotli decoder vulnerability that could potentially lead to remote code execution. Other fixes addressed DNS handling, certificate validation and cryptographic behaviour. [Node.js published its October security release details](https://github.com/nodejs/nodejs.org/blob/main/apps/site/pages/en/blog/vulnerability/october-2026-security-releases.md).

- **Cisco Secure Email Gateway – CVE-2026-76519:** A critical vulnerability affecting email security infrastructure was reported as actively exploited. [CERT-EU maintains security advisories](https://cert.europa.eu/publications/security-advisories/2026).

- **BeyondTrust Remote Support – CVE-2026-102764:** An authentication bypass vulnerability affecting remote support systems was reported among exploited enterprise security weaknesses.

- **Palo Alto Networks PAN-OS – CVE-2026-0322:** A reported code injection vulnerability raised concerns about exposed firewall management interfaces.

- **Fortinet FortiMail – CVE-2026-104286:** A reported path traversal vulnerability affecting email security appliances highlighted the importance of protecting internet-facing infrastructure.

- **AhsayCBS – CVE-2026-105133 and CVE-2026-105134:** Reported authentication bypass and command injection vulnerabilities raised concerns about the security of backup management servers.

- **Plex Media Server – Plex2Shell:** A reported vulnerability chain involving Plex Media Server raised concerns about remote code execution and the security of exposed media services.

- **GitLab CE and EE Security Updates:** GitLab released security updates addressing multiple vulnerabilities, including issues affecting code execution and application security. [CERT-EU's advisory archive](https://cert.europa.eu/publications/security-advisories/2026) provides additional information.

Microsoft's October Patch Tuesday also highlighted the scale of vulnerability management. Across the industry, security teams were already responding to critical PHP flaws, developer-tool compromises and newly discovered weaknesses in commonly deployed software.

The Node.js and eMudhra developments were especially interesting because they demonstrated how security issues can affect the wider software ecosystem. A weakness in a certificate authority or a widely used runtime can create additional work for organisations that depend on those components.

For me, October reinforced an important point: **discovering a vulnerability is only the beginning.** Security teams must determine whether their systems are affected, understand the potential impact and deploy fixes before attackers can take advantage of the weakness. As AI-assisted security research develops, the speed of vulnerability discovery could make that process even more challenging.


## The UK Even Asked People to Prepare for Serious Disruption

One of the developments that surprised me most was the UK government's advice encouraging households to keep emergency supplies available for up to 72 hours.

According to [The Guardian's report on the government's Be Ready campaign](https://www.theguardian.com/politics/2026/oct/22/britain-prepare-infrastructure-attacks-hostile-states-wes-streeting), the guidance was intended to help households prepare for emergencies, including severe weather, infrastructure failures and potential cyber-related disruption.

The timing was particularly striking. During the PHP vulnerability response, several UK government websites were temporarily taken offline as a precaution while security measures were implemented.

Of course, the emergency preparedness advice was not solely about cybersecurity, nor did it mean a major cyberattack was imminent. However, it highlighted an important reality: **cybersecurity is no longer just an IT concern.** Disruption to digital infrastructure can affect payments, communications, public services and other systems people depend on every day.

## Did AI Make October 2026 Worse?

This is the question I found myself thinking about most.

AI is increasingly capable of helping security researchers analyse source code, identify suspicious patterns and investigate vulnerabilities. Tasks that previously required extensive manual investigation can sometimes be accelerated using AI-assisted tools.

That is an important development for defenders. But the same capabilities also raise concerns about how quickly malicious actors might discover weaknesses, adapt their techniques or automate parts of an attack.

The PHP vulnerabilities were particularly interesting because AI-assisted research reportedly played a role in identifying serious flaws that had existed in widely used software for years. The discovery contributed to wider discussions about a possible wave of vulnerability disclosures as AI-assisted security research becomes more capable.

As [The Guardian's Black October report](https://www.theguardian.com/technology/2026/oct/23/cybersecurity-ai-hacking-php-vulnerability) explained, industry leaders expressed concern about the speed at which AI could help uncover weaknesses across internet infrastructure.

I think AI could be changing cybersecurity in several important ways:

- **Faster vulnerability discovery:** AI-assisted code analysis may help researchers identify weaknesses that would otherwise require extensive manual investigation.
- **Quicker attack development:** Attackers may use AI to accelerate research, adapt malicious scripts and investigate potential targets.
- **More convincing social engineering:** Generative AI can make fraudulent messages and impersonation attempts more believable.
- **Improved defensive analysis:** Security teams can use AI to analyse alerts, investigate suspicious activity and prioritise potential threats.
- **Growing pressure on patch management:** Faster vulnerability discovery could leave organisations with less time to assess and address newly disclosed weaknesses.

However, it would be misleading to suggest that AI caused every major incident in October. There is no established public evidence connecting AI directly to all the breaches mentioned above. Traditional problems such as compromised credentials, insecure configurations, software vulnerabilities and weaknesses in third-party systems remain important attack paths.

There is also a difference between discovering a vulnerability and successfully exploiting it. Despite the enormous attention surrounding PHP2Shell, [Axios reported](https://www.axios.com/2026/10/28/cybersecurity-black-october-ai-hacks) that successful exploitation appeared more limited than some initial fears suggested, partly because the vulnerabilities were difficult to exploit and organisations had taken defensive action.

To me, the bigger concern is not simply whether attackers are using AI. It is whether defenders can keep pace as the speed of security research and malicious activity increases.



## The Growing Number of CVEs and How AI Is Changing Vulnerability Discovery

Since starting my new role in cybersecurity, I have been trying to understand **Common Vulnerabilities and Exposures (CVEs)** better. I started keeping track of newly published vulnerabilities, reading about their severity and learning how they could affect real systems. It was interesting to see how many vulnerabilities were being identified, but it also made me wonder how security teams manage such a constant flow of new findings.

While reading more about vulnerability management, I came across an interesting article from Sonar, [Why Your Supply Chain Attack Surface Is Expanding](https://www.sonarsource.com/blog/why-your-supply-chain-attack-surface-is-expanding/). It made me think about how cybersecurity risks are growing beyond traditional software vulnerabilities, particularly as AI becomes more involved in software development and security research.

### What the CVE Growth Graph Tells Us

![Annual CVE disclosures showing the growth in publicly reported software vulnerabilities ](blog/assets/images/posts/2026/10-12/cve-growth-graph.png)

*Figure: Annual CVE disclosures. Add the original graph's source and reporting period here - Image source SonarSource.com*

Looking at the graph, what caught my attention was the broader trend in vulnerability disclosures. The growing volume of reported CVEs raises an important question: **are we creating more vulnerable software, or are we simply becoming better and faster at discovering existing weaknesses?** The answer could involve both, alongside changes in reporting practices and the growing complexity of modern software.

AI adds another interesting dimension to this. AI-assisted code analysis could help security researchers examine larger codebases and identify weaknesses more quickly. That would be a positive development for cybersecurity, but it could also increase the number of findings organisations need to investigate and address. The graph alone cannot establish how much of any increase is caused by AI.

What I found particularly interesting in Sonar's article was its explanation that **not every software supply chain attack involves a CVE**. The article discusses incidents involving Trivy, LiteLLM and Axios, showing how compromised dependencies, malicious packages and insecure build pipelines can expose organisations to risks that traditional vulnerability scanning might miss.

It also highlights how AI coding tools are becoming part of the software supply chain attack surface. Developers increasingly depend on AI assistants to write and review code, but these tools can introduce additional risks involving untrusted instructions, dependencies and sensitive information.

For me, this changed how I thought about vulnerability management. Tracking CVEs is important, but understanding the wider attack surface matters just as much. **AI may help discover security weaknesses faster, but organisations still need the ability to identify which risks matter most and respond before attackers take advantage of them.**


## What October 2026 Made Me Think About Cybersecurity

Starting a new role in cybersecurity has made me realise how much work happens behind the scenes to keep systems secure. A vulnerability announcement might look like a single headline, but responding to it can involve security researchers, developers, incident responders, infrastructure teams and organisations across several countries.

October demonstrated how quickly these teams may need to react. A vulnerability can be disclosed, exploitation attempts can begin, emergency advisories can be published and organisations may need to take systems offline, all within a relatively short period.

It also made me think about the relationship between AI and cybersecurity. AI may help researchers discover vulnerabilities sooner, but it may also give attackers additional capabilities. The technology itself is not inherently defensive or malicious; its impact depends on how it is developed and used.

For organisations, the fundamentals still matter. Strong authentication, timely patching, access controls, monitoring, secure backups and incident response planning remain essential. AI can support these activities, but it does not remove the need for them.

## A Difficult Cybersecurity Awareness Month

October 2026 was certainly a memorable month for the cybersecurity world, although not necessarily for the reasons Cybersecurity Awareness Month is intended to celebrate.

From the ASOS incident and disruptions affecting UK retailers to critical PHP vulnerabilities and the Binance cryptocurrency theft, the month demonstrated how widely cyber risks can affect businesses, infrastructure and everyday services.

For someone who has recently entered the cybersecurity industry, following these developments has been both fascinating and concerning. Every new incident offers something to learn, but it also serves as a reminder that the systems people rely on are constantly being tested.

**My biggest takeaway from October is that AI could accelerate both sides of cybersecurity.** Researchers may discover vulnerabilities faster, attackers may adapt more quickly, and defenders will need to respond with greater speed and precision.

Perhaps that is what makes this period particularly important. Cybersecurity is not only about preventing attacks. It is also about understanding risks, responding effectively and building systems that can recover when something goes wrong.

October may have been a dark month for cybersecurity, but it also highlighted why the work being done across the industry matters more than ever.
