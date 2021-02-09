# json_serializable_mobx
(De-)Serialize more collections using json_serializable.

Unofficial package, meant to extend the functionality of json_serializable.

## Features:

Behaves like json_serializable, but supports more collections.

Currently supported:

- All types supported by json_serializable
- Optional


Do you want to use even more types? Feel free to open an issue. PRs also welcome.


## How to use

Add to your dev_dependencies:

```yaml
    json_serializable_optional: <current_version>
```    
    
Add to your `build.yaml` (create the file if necessary, this is necessary to avoid conflicts between json_serializable and this library):

```yaml
    targets:
      $default:
        builders:
          json_serializable_optional:
            # configure your options here, same as json_serializable
            options:
              explicit_to_json: true
          json_serializable:json_serializable:
            generate_for:
              # exclude everything to avoid conflicts, this library uses a custom builder
              include:
              exclude:
                - test/**
                - lib/**
```



