# Bricks

## How to create a brick

1. Install [`mason`](https://pub.dev/packages/mason_cli)

```bash
dart pub global activate mason_cli
```

2. Initialize mason

```bash
mason init
```

3. Create brick

```bash
mason new <BRICK_NAME>
```

## How to use bricks for code generation in a new project

1. Install [`mason`](https://pub.dev/packages/mason_cli)

```bash
dart pub global activate mason_cli
```

2. Initialize mason

```bash
mason init
```

3. Add bricks submodule to the project

```bash
git submodule add https://github.com/Vanessa-Berazategui/flutter_bricks.git
```

3. Add the desired brick <BRICK_NAME> to the project

```bash
mason add <BRICK_NAME> --path ./bricks/<BRICK_NAME>
```

4. Run the brick <BRICK_NAME>

```bash
mason make <BRICK_NAME> --name=nombre_example
```

## How to use bricks in a project that contains bricks with submodule

1. Clone the project to use.

```bash
git clone https://github.com/Vanessa-Berazategui/repo_example.git
```

2. Initialize mason

```bash
mason init
```

3. Download bricks submodule (if authentication fails, perform a git clone)

```bash
git submodule init
git submodule update
```

4. Get the bricks

```bash
git mason get
```

## How to list the bricks installed in a project

```bash
mason list
```

## Brick list

### **data_layer_model**

```bash
mason make data_layer_model --name=<feature_name>
```

### **domain_layer_entity**

```bash
mason make domain_layer_entity --name=<feature_name>
```

### **presentation_layer_feature**

```bash
mason make presentation_layer_feature --name=<feature_name>
```

### **presentation_layer_hydrated_feature**

```bash
mason make presentation_layer_hydrated_feature --name=<feature_name>
```

### **domain_layer_package**

```bash
mason make domain_layer_package --name=<feature_name>
```

### **data_layer_package**

```bash
mason make data_layer_package --name=<feature_name>
```
