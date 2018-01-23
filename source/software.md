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

