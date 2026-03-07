if (object_exists(objectType)) {
    var newEnemy = instance_create_layer(0, 0, "Instances", objectType);
}

alarm[0] = spawnInterval