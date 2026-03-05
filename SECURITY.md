# Security Policy

## Supported Versions

Only the latest release is supported with security updates.

| Version | Supported |
|---------|-----------|
| latest  | Yes       |
| < latest | No       |

## Reporting a Vulnerability

**Do not open a public issue for security vulnerabilities.**

Please report vulnerabilities through [GitHub's private security advisory feature](https://github.com/felipefdl/no/security/advisories/new).

Include as much detail as possible:

- Description of the vulnerability
- Steps to reproduce
- Potential impact
- Suggested fix (if any)

## Response Timeline

- **Acknowledgment**: within 48 hours
- **Initial assessment**: within 7 days
- **Fix or mitigation**: best effort, depending on severity

## Scope

The following are considered security issues:

- Remote code execution
- Command injection
- Credential or token leakage
- Path traversal
- Unauthorized access to resources

## Out of Scope

The following are intentional behaviors and not security issues:

- **HTTP connections to local/private addresses**: `no` defaults to HTTPS for remote hosts but allows HTTP for localhost and private network addresses (127.x, 10.x, 172.16-31.x, 192.168.x). This is by design for testing local services.
- **User-specified HTTP URLs**: when a user explicitly provides an `http://` URL, `no` respects their choice. Users are expected to understand the implications.
- **Display of response data**: `no` displays server responses as-is, including headers and body content. This is core functionality.
