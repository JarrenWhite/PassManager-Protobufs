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
    │   └── \<version\>
    │       ├── entries.proto
    │       ├── error.proto
    │       └── secure.proto
    │
    ├── data
    │   │
    │   └── \<version\>
    │       ├── data_payloads.proto
    │       └── data.proto
    │
    ├── password
    │   │
    │   └── \<version\>
    │       ├── password_payloads.proto
    │       └── password.proto
    │
    ├── session
    │   │
    │   └── \<version\>
    │       ├── session_payloads.proto
    │       └── session.proto
    │
    └── user
        │
        └── \<version\>
            ├── user_payloads.proto
            └── user.proto
```
