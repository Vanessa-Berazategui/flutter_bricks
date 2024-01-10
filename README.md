# Bricks

## Cómo crear un brick

1. Instalar [`mason`](https://pub.dev/packages/mason_cli)

```bash
dart pub global activate mason_cli
```

2. Inicializar mason

```bash
mason init
```

3. Crear el brick

```bash
mason new <BRICK_NAME>
```

## Cómo usar bricks para generación de código en un nuevo proyecto

1. Instalar [`mason`](https://pub.dev/packages/mason_cli)

```bash
dart pub global activate mason_cli
```

2. Inicializar mason

```bash
mason init
```

3. Agregar bricks submodule al proyecto

```bash
git submodule add https://github.com/Vanessa-Berazategui/flutter_bricks.git
```

3. Agregar el brick <BRICK_NAME> deseado al proyecto.

```bash
mason add <BRICK_NAME> --path ./bricks/<BRICK_NAME>
```

4. Ejecutar el brick <BRICK_NAME>

```bash
mason make <BRICK_NAME> --name=nombre_example
```

## Cómo usar bricks en un proyecto que contenga bricks com submodulo

1. Clonar el proyecto a utilizar.

```bash
git clone https://github.com/Vanessa-Berazategui/repo_example.git
```

2. Inicializar mason

```bash
mason init
```

3. Descargar submodulo de bricks (si da error de autenticación realizar un git clone)

```bash
git submodule init
git submodule update
```

4. Obtener los bricks

```bash
git mason get
```

## Cómo listar los bricks instalados en un proyecto

```bash
mason list
```

## Listado de bricks

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
