# Pass Manager Protobufs

The Protobuf and gRPC definitions for the [Pass Manager Server](https://github.com/JarrenWhite/PassManager-Server).

## File Structure

```
/
├── README.md
│
└── passmanager
    │
    ├── common
    │   │
    │   └── v#
    │       ├── entries.proto
    │       ├── error.proto
    │       └── secure.proto
    │
    ├── data
    │   │
    │   └── v#
    │       ├── data_payloads.proto
    │       └── data.proto
    │
    ├── password
    │   │
    │   └── v#
    │       ├── password_payloads.proto
    │       └── password.proto
    │
    ├── session
    │   │
    │   └── v#
    │       ├── session_payloads.proto
    │       └── session.proto
    │
    └── user
        │
        └── v#
            ├── user_payloads.proto
            └── user.proto
```
