# Pass Manager Protobufs

The Protobuf and gRPC definitions for the [Pass Manager Server](https://github.com/JarrenWhite/PassManager-Server).

## Generate Protobuf Files
Scripts exist to generate the required protobuf files for certain languages.
These can be found in the `scripts` directory.
Results are placed into a build folder.

Currently supported languages include:
- Python

> Note: It is recommended that you take and adjust these scripts for your own environment, particularly updating the protobuf and grpc tools version numbers.


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
    │   └── <version>
    │       ├── entries.proto
    │       ├── error.proto
    │       └── secure.proto
    │
    ├── data
    │   │
    │   └── <version>
    │       ├── data_payloads.proto
    │       └── data.proto
    │
    ├── password
    │   │
    │   └── <version>
    │       ├── password_payloads.proto
    │       └── password.proto
    │
    ├── session
    │   │
    │   └── <version>
    │       ├── session_payloads.proto
    │       └── session.proto
    │
    └── user
        │
        └── <version>
            ├── user_payloads.proto
            └── user.proto
```
