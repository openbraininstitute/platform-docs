# ADR 0001: Use uuid for virtual lab and project

## Status
Draft

## Context:
We need to consistently identify virtual labs and projects.


## Decision:
Use UUIDs for virtual labs and projects.

## Reasons:
- UUIDs are unique and can be generated consistently.
- Decouple the identifier from the name, so we can change the name without changing the identifier.

## Consequences:
- We need to generate UUIDs for virtual labs and projects.
- We need to use these UUIDs for authentication headers.
- We need to convert wherever names are used to UUIDs.

## Alternatives considered:
- **Using the name as the identifier**: This would make it harder to change the name without breaking things.

## Next steps:
- Update the code to use UUIDs for virtual labs and projects.