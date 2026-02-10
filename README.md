# Pass Manager Protobufs

The Protobuf and gRPC definitions for the [Pass Manager Server](https://github.com/JarrenWhite/PassManager-Server) APIs.

## File Structure

```
/
├── README.md
│
└── passmanager
    │
    ├── common
    │   │
    │   └── v0
    │       ├── entries.proto
    │       ├── error.proto
    │       └── secure.proto
    │
    ├── data
    │   │
    │   └── v0
    │       ├── data_payloads.proto
    │       └── data.proto
    │
    ├── password
    │   │
    │   └── v0
    │       ├── password_payloads.proto
    │       └── password.proto
    │
    ├── session
    │   │
    │   └── v0
    │       ├── session_payloads.proto
    │       └── session.proto
    │
    └── user
        │
        └── v0
            ├── user_payloads.proto
            └── user.proto
```
