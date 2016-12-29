---
layout: page
title: cve-search software, api and data feeds.
permalink: /software/
---

* TOC
{:toc}

# Software

cve-search project is composed of multiple free and open source software.

## cve-search core

The main software behind the cve-search project.

cve-search is a tool to import CVE (Common Vulnerabilities and Exposures) and CPE (Common Platform Enumeration) into a MongoDB to facilitate search and processing of CVEs.

The main objective of the software is to avoid doing direct and public lookup into the public CVE databases. This is usually faster to do local lookups and limits your sensitive queries via the Internet.

cve-search includes a back-end to store vulnerabilities and related information, an intuitive web interface for search and managing vulnerabilities, a series of tools to query the system and a web API interface.

Requirements: Python 3 and MongoDB

To install or use, check the [cve-search GitHub repository](https://github.com/cve-search/cve-search).

![cve-search web interface]({{ site.url }}/images/cve-search-screen.png)

## cve-search plugins

cve-search plugins include new features to extend the functionalities in cve-search.

 * **bookmarks** - Bookmark certain CVE's for later reference
 * **MISP** - Enrich your CVE-Search instance with [MISP](http://www.misp-project.org/) information
 * **notes** - Allow users to add notes to a CVE
 * **Reporting** - Make queries on the data and export them to a CSV file
 * **seen** - Keep track of all the CVEs you've already seen in the past
 * **sendMail** - Easily send a mail with the CVE info to a specified mail address
 * **team_collaboration** - Similar to `seen`, but on group level
 * **LDAP** - Authenticate users over LDAP

To install or use a plugin, check the [Plugins written for CVE-Search ](https://github.com/cve-search/Plugins).

## PyCVESearch

PyCVESearch is an easy to use wrapper around cve-search, defaulting on [https://cve.circl.lu API](https://cve.circl.lu).

To install or use, check the [PyCVESearch GitHub repository](https://github.com/cve-search/PyCVESearch).

# Data feeds

- [Vulnerability Information Aggregator for CVEs  - JSON](https://www.cve-search.org/feeds/via4.json) - updated: daily

# API

A public API of cve-search is operated by [CIRCL](https://www.circl.lu/) and can be accessed without installing cve-search. The same API
is accessible if cve-search is installed internally.

## Public Web API of cve-search

The HTTP API outputs JSON.

### Browse vendor and product


To get a JSON with all the vendors:

~~~
curl https://cve.circl.lu/api/browse
~~~

To get a JSON with all the products associated to a vendor:

~~~
curl https://cve.circl.lu/api/browse/microsoft
~~~

### Browse CVEs per vendor/product

To get a JSON with all the vulnerabilities per vendor and a specific product:

~~~
curl https://cve.circl.lu/api/search/microsoft/office
~~~

### Get CVE per CVE-ID

To get a JSON of a specific CVE ID:

~~~
curl https://cve.circl.lu/api/cve/CVE-2010-3333
~~~

### Get the last updated CVEs

To get a JSON of the last 30 CVEs including CAPEC, CWE and CPE expansions:

~~~
curl https://cve.circl.lu/api/last
~~~

### Get more information about the current CVE database

To get more information about the current databases in use and when it was updated:

~~~
curl https://cve.circl.lu/api/dbInfo
~~~

# Other software using cve-search

Software using or relying on cve-search API.

* [cve-portal](https://www.github.com/CIRCL/cve-portal) which is a CVE notification portal
* [cve-search-mt](https://www.github.com/NorthernSec/cve-search-mt) which is a set of management tools for CVE-Search
* [cve-scan](https://www.github.com/NorthernSec/cve-scan) which is a NMap CVE system scanner
* [Scan systems with NMap and parse the output to a list of CVE's, CWE's and DPE's](https://github.com/NorthernSec/CVE-Scan) by NorthernSec
* [A python wrapper around https://cve.circl.lu](https://github.com/mrsmn/ares) by Martin Simon
* [A python script](https://github.com/znb/Scripts/blob/7f22a727073ba1185e06b9ef42475f33279c645e/Security/cve-search.py) by Matt Erasmus
* [Search CVEs from R](https://github.com/bhaskarvk/cvesearch) by Bhaskar V. Karambelkar
* [Metabrik::Database::Cvesearch](http://search.cpan.org/~gomor/Metabrik-Repository-1.24/lib/Metabrik/Database/Cvesearch.pm) by Patrice Auffret [video](https://www.youtube.com/watch?v=4YZUVIun4YI)
* [luabot using cve.circl.lu](https://github.com/aperezdc/luabot/blob/9ef7a3a8b657ceffb0736d576824bf5526231713/plugin/cve.lua) by Adrian Perez
* [ A software component catalogue application - designed to work with FOSSology.](https://github.com/sw360/sw360portal)

