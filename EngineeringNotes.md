# Engineering Notes

Project: GeoFoundation

---

## Purpose

This document records engineering decisions, observations, assumptions, and future improvements discovered during development.

These notes are **not** implementation tasks. They explain *why* a design choice was made or capture ideas for future investigation.

---

## Note 001

**Date:** 09-Jul-2026

### Architecture Freeze

The project architecture is frozen until **v1.0**.

No changes will be made to:

* Folder structure
* Public function names
* API
* Naming convention

New ideas will be recorded in `TODO.md` or `ROADMAP.md` rather than implemented immediately.

---

## Note 002

### Development Workflow

Each feature follows the same workflow:

1. Create GitHub Issue
2. Implement one function
3. Create example
4. Execute and verify
5. Commit
6. Push
7. Close Issue

---

## Note 003

### Design Philosophy

Develop the toolbox incrementally.

* Make it work first.
* Verify the implementation.
* Refactor only during planned milestones.

Avoid architectural changes during active development sprints.

---

## Note 004

### Verification Philosophy

Every engineering calculation shall eventually include:

* Reference equation
* Published benchmark
* Example script
* Numerical comparison
* Pass/Fail verification

---

## Note 005

### Coding Standards

* GNU Octave compatibility is mandatory.
* MATLAB compatibility shall be maintained whenever practical.
* One public function per file.
* Every public function shall have an example.
* Public functions shall begin with `gf_`.

---

## Future Notes

Reserve this section for engineering observations encountered during implementation, validation, and testing.
