---
title: Benjamin Somers – Projects
lang: en
p-projects: true
---

<section>
I contribute to many open source projects. On this page, you can find a hopefully exhaustive, unsorted presentation of the various crimes I’ve committed in these projects.

<p class="categories">[Personal projects](#personal-projects){.category}[Future projects](#future-projects){.category}[Modest contributions](#modest-contributions){.category}[ResEl](#resel){.category}[CAPRICA](#caprica){.category}[IMT Atlantique](#imt-atlantique){.category}</p>
</section>

# Personal projects

In the few hours I have left each week outside work and associative activities, I happen to work on a few fun projects of mine.

::: {type=project name=0xCAFE github=bensmrs/0xCAFE image=0xcafe.png maturity=A reliability=A fieldtesting=A}
Fewer and fewer people carry cash around with them, and at the office, begging for money to feed the collective kitty to buy coffee is a nightmare. So I developed this little project, linked to [Stripe](https://stripe.com/), to manage the break room cash flow.
:::

::: {type=project name=bibedit github=bensmrs/bibedit maturity=C reliability=B fieldtesting=C}
`bibedit` is a program that allows to format a [BibTeX](https://www.ctan.org/pkg/bibtex) bibliography in a homogeneous way, according to a number of policies. The code features some interesting experiments in OCaml, notably a [preprocessor extention](https://ocaml.org/docs/metaprogramming) (PPX) that generates command-line parsers (we can pompously say it’s a *command-line parser generator parser*). The project is on hold due to a lack of time, and its PPX will soon be unbundled and developed as a standalone project.
:::

::: {type=project name=Carnac github=bensmrs/carnac maturity=A reliability=A fieldtesting=A}
Carnac is my playground for implementing some [lambda calculus](https://en.wikipedia.org/wiki/Lambda_calculus) encodings into [Menhir](http://gallium.inria.fr/~fpottier/menhir/) grammars. Because of Menhir’s grammar typing, arbitrary implementation choices have been made. Currently, Carnac encodes [Church’s booleans and integers](https://en.wikipedia.org/wiki/Church_encoding) in Menhir.
:::

::: {type=project name=cronlib github=bensmrs/ocaml-cronlib maturity=C reliability=B+ fieldtesting=C}
`cronlib` is an OCaml library to parse crontabs. Nothing more for the moment!
:::

::: {type=project name=ocamLDAP github=bensmrs/ocamldap maturity=A reliability=A fieldtesting=A}
I maintain a fork of ocamLDAP, the OCaml library to talk to LDAP servers. My fork makes connections non-blocking, better handles TLS and respects connection timeouts without `SIGALRM` tricks. Use it!
:::

::: {type=project name="PPX collection" github=bensmrs/ppx_catch github2=bensmrs/ppx_inline_module github3=bensmrs/ppx_macro github4=bensmrs/ppx_map maturity=A reliability=A fieldtesting=A}
The day I discovered [preprocessor extentions](https://ocaml.org/docs/metaprogramming) for OCaml was the beginning of a long love story! From time to time, I develop new PPXs to simplify my life and make my OCaml code even more expressive.
:::

::: {type=project name=timed-cache github=bensmrs/timed-cache maturity=A- reliability=A fieldtesting=A}
`timed-cache` is an OCaml library to implement almost-[Hashtbl](https://v2.ocaml.org/api/Hashtbl.html)-compatible key-value stores with automatic time-based deletion strategies. I regularly use it as a function cache, where LRU or FIFO caches are not suitable.
:::

::: {type=project name=Yarec github=bensmrs/yarec maturity=C reliability=B+ fieldtesting=C kernminus=}
Yarec, for *Yet Another RexEx Compiler* is a safe, non-explosive, quasi-[PCRE](http://www.pcre.org)-compatible RegEx engine. It is developed in OCaml and features an exotic recursive automaton data structure: states are actually small interpreters of a stack language able to recursively call other automata. The project is on hold due to a lack of time.
:::


# Future projects

I’ve got some big projects in the pipeline on which I haven’t yet found the time to do much work.

::: {type=project name=Deccert}
Deccert is a project to build a decentralized, sharded [CERT](https://en.wikipedia.org/wiki/Computer_emergency_response_team) ecosystem between trusted network communities, to share the burden of risk management teams and systems and provide an entry point for smaller players based on the goodwill of larger players.
:::

::: {type=project name=0TG}
The Zero Transfer Gateway is a project to build a decentralized, multi-protocol data transfer monitor. If you’re not in the finance or automotive industries, chances are you’ve never heard of such a thing; I’d like to democratize these systems.
:::

::: {type=project name=Tracer kernminus=}
I’m not a huge fan of visual programming. However, in some business-critical cases, it can be important to know precisely, visually, where things go wrong, why, and progressively patch code. I am working on an object- and data-oriented visual language with live-patching and A/B testing capabilities called Tracer.
:::

# Modest contributions

Here are a few small contributions I made in open source projects. I really liked how welcoming these projects’ communities were, with a special mention for Git Cola, which I think is a very good project for getting started in open source.

::: {type=project name=ExtUnix github=ygrek/extunix}
ExtUnix is a collection of OCaml bindings to low-level UNIX system calls. I added support for IPv6 in the `getifaddrs` ExtUnix binding.
:::

::: {type=project name=Incus github=lxc/incus}
Incus is a container and virtual machine manager written in Go. I added support for low-level, user-defined dynamic operations on virtual machines using the QEMU Machine Protocol (QMP).
:::

::: {type=project name="Git Cola" image=git-cola.png github=git-cola/git-cola}
Git Cola is a graphical interface for Git written in Python. I’ve added to Git Cola the ability to manage local file exclusions, an option to reset the window layout, the ability to rename stashes, and a dialog for consulting Git server responses.
:::

::: {type=project name=linuxcontainers.org image=linuxcontainers.org.png github=lxc/linuxcontainers.org}
[`linuxcontainers.org`](https://linuxcontainers.org/) is the showcase website for a group of projects with the goal of offering a vendor-neutral environment for the development of container technologies. I translated into French the part of the website presenting Incus, and made a few improvements in the website generator.
:::

::: {type=project name=Nextcloud image=nextcloud.png github=nextcloud/server github2=nextcloud/files_versions_s3}
Nextcloud is the most popular online drive management software. I helped add support for the naming and deletion of file versions in Nextcloud when using S3-compatible storage backends, using S3 object tags (in addition to metadata). The contribution has been merged into [Nextcloud 27.0.1](https://nextcloud.com/changelog/#27-0-1).
:::


# ResEl

The ResEl (for *Réseau des Élèves*) is a French student Internet service provider. It provides Internet access and many services to 1400 rooms on the IMT Atlantique campuses in Brest, Nantes and Rennes. I maintain and have participated in a large number of projects within the association.

::: {type=project name=DHCAPI github=ResEl-TB/DHCAPI maturity=A reliability=A- fieldtesting=A}
DHCAPI is an API for [FreeRADIUS](https://freeradius.org) that manages the discovery and request logic for the DHCP servers of the ResEl. It is written in Python, but will soon be rewritten in OCaml. The project was launched because of the many limitations of traditional DHCP solutions, given the complexity of the ResEl infrastructure.
:::

::: {type=project name="LaTeX styles and classes" image=resel-latex.png github=ResEl-TB/latex maturity=A reliability=A fieldtesting=A}
As a result of its activities, the ResEl needs to produce thousands of documents every year (invoices, reports, minutes, *etc*.). I designed and implemented the current visual identity for the LaTeX documents the association issues on a daily basis.
:::

::: {type=project name=myResEl image=myresel.png website=resel.fr github=ResEl-TB/myresel maturity=A reliability=A- fieldtesting=A}
Both a showcase website for the association and the portal for user account management, myResEl is without doubt the most important tool for our users. It is based on the [Django framework](https://www.djangoproject.com). I have made many improvements to the design and functionality of the website over my years with the association, and developed a webplayer enabling our users to watch TV from within our network.
:::

::: {type=project name=RADAPI github=ResEl-TB/RADAPI maturity=A reliability=A fieldtesting=A}
RADAPI is an API for [FreeRADIUS](https://freeradius.org) that manages the authentication, authorization and accounting logic for the RADIUS servers of the ResEl. Initially developed in Python, RADAPI was rewritten in OCaml for performance and safety reasons. I am the initiator of the project and its sole developer.
:::

::: {type=project name="ResEl ID" image=resel-id.png website=sso.resel.fr github=ResEl-TB/cas-overlay maturity=C reliability=A fieldtesting=B}
ResEl ID is the centralized authentication service of the ResEl. It is based on the tried-and-tested [Apereo CAS](https://www.apereo.org/projects/cas) and enables users to log in to our various services with their ResEl account. I am responsible for the entire configuration and design of the website.
:::

::: {type=project name="ResEl NSA" image=resel-nsa.png github=ResEl-TB/resel-nsa maturity=A reliability=A- fieldtesting=A}
ResEl NSA is the metrics collection and dispatching agent of the ResEl. Entirely developed in Bash, it enables the parallel execution of monitoring tools and transmits data at regular intervals to a remote [Warp 10](https://www.warp10.io) time series server.
:::

::: {type=project name=Vizir github=ResEl-TB/vizir maturity=A reliability=A fieldtesting=C kernminus=}
Vizir is a documentation generation engine based on [Sphinx](https://www.sphinx-doc.org/en/master/). Its specificity lies in its ability to aggregate files from several Git repositories to generate one or more documentation projects. Vizir is developed in Python.
:::

# CAPRICA

CAPRICA, for *Cartographie, Analyse et Prévention des Risques sur des Infrastructures Complexes Actives*, is the code name for my PhD project. During these three years, I have developed several tools, some of which are presented here.

::: {type=project name=CL/I github=CAPRICA-Project/CL-I maturity=C reliability=B+ fieldtesting=C}
CL/I is a formally-specified, component-oriented infrastructure description language that allows to perform automated property verification on IT infrastructures. The CL/I compiler can plug to model checkers and theorem provers (it has formally-defined transformation semantics into Z3), and embeds a small runtime engine. The compiler is written in OCaml
:::

::: {type=project name=emulab-proxmox github=CAPRICA-Project/emulab-proxmox maturity=A reliability=A fieldtesting=A}
To ensure the reproducibility of my thesis experiments, I have developed scripts to deploy a [Proxmox VE](https://www.proxmox.com/en/proxmox-virtual-environment) hypervision cluster on [Emulab](https://www.emulab.net/).
:::

::: {type=project name=mitre2owl image=ontology.png github=CAPRICA-Project/mitre2owl github2=CAPRICA-Project/CAPEC.owx github3=CAPRICA-Project/CWE.owx maturity=B+ reliability=A- fieldtesting=B-}
`mitre2owl` is a Python tool for translating [MITRE](https://www.mitre.org/) XML reference datasets ([CAPEC](https://capec.mitre.org/), [CVE](https://www.cve.org/) and [CWE](https://cwe.mitre.org/)) into expressive OWL ontologies. It uses XSD schemas to build specialized parsers for the XML data, which in turn are used to build the ontologies. `mitre2owl` is used to build nightly versions of the ontologies automatically with [GitHub Actions](https://github.com/features/actions).
:::

# IMT Atlantique

Working at [IMT Atlantique](https://www.imt-atlantique.fr/), I have had the opportunity to develop free and open source software. These projects are used on a daily basis there, and I hope they can be of use to others elsewhere.

::: {type=project name=Spider github=bensmrs/spider maturity=C reliability=B fieldtesting=B}
Spider is a multi-protocol, multi-format, multi-threaded resource crawler. You can see it as your regular `wget --spider`, but on steroids, with support for several protocols, content types, schemes, and output formats.
:::
