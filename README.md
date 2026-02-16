# Pass Manager Protobufs

The Protobuf and gRPC definitions for the [Pass Manager Server](https://github.com/JarrenWhite/PassManager-Server).

## Generate Protobuf Files
Scripts exist to generate the required protobuf files for certain languages.
These can be found in the `scripts` directory.

Currently supported languages include:
- Python


## File Structure

```
/
├── README.md
|
├── scripts
|   |
|   └── python_generator.sh
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
