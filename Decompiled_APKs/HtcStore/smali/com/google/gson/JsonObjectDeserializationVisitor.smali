.class final Lcom/google/gson/JsonObjectDeserializationVisitor;
.super Lcom/google/gson/JsonDeserializationVisitor;
.source "JsonObjectDeserializationVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/JsonDeserializationVisitor",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/ObjectNavigatorFactory;Lcom/google/gson/ObjectConstructor;Lcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/JsonDeserializationContext;)V
    .locals 0
    .parameter "json"
    .parameter "type"
    .parameter "factory"
    .parameter "objectConstructor"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/ObjectNavigatorFactory;",
            "Lcom/google/gson/ObjectConstructor;",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonDeserializer",
            "<*>;>;",
            "Lcom/google/gson/JsonDeserializationContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lcom/google/gson/JsonObjectDeserializationVisitor;,"Lcom/google/gson/JsonObjectDeserializationVisitor<TT;>;"
    .local p5, deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;,"Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonDeserializer<*>;>;"
    invoke-direct/range {p0 .. p6}, Lcom/google/gson/JsonDeserializationVisitor;-><init>(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/ObjectNavigatorFactory;Lcom/google/gson/ObjectConstructor;Lcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/JsonDeserializationContext;)V

    .line 36
    return-void
.end method

.method private getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2
    .parameter "f"

    .prologue
    .line 92
    .local p0, this:Lcom/google/gson/JsonObjectDeserializationVisitor;,"Lcom/google/gson/JsonObjectDeserializationVisitor<TT;>;"
    iget-object v1, p0, Lcom/google/gson/JsonDeserializationVisitor;->factory:Lcom/google/gson/ObjectNavigatorFactory;

    invoke-virtual {v1}, Lcom/google/gson/ObjectNavigatorFactory;->getFieldNamingPolicy()Lcom/google/gson/FieldNamingStrategy;

    move-result-object v0

    .line 93
    .local v0, namingPolicy:Lcom/google/gson/FieldNamingStrategy;
    invoke-interface {v0, p1}, Lcom/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected constructTarget()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/google/gson/JsonObjectDeserializationVisitor;,"Lcom/google/gson/JsonObjectDeserializationVisitor<TT;>;"
    iget-object v0, p0, Lcom/google/gson/JsonDeserializationVisitor;->objectConstructor:Lcom/google/gson/ObjectConstructor;

    iget-object v1, p0, Lcom/google/gson/JsonDeserializationVisitor;->targetType:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/google/gson/ObjectConstructor;->construct(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public startVisitingObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 46
    .local p0, this:Lcom/google/gson/JsonObjectDeserializationVisitor;,"Lcom/google/gson/JsonObjectDeserializationVisitor<TT;>;"
    return-void
.end method

.method public visitArray(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 3
    .parameter "array"
    .parameter "componentType"

    .prologue
    .line 50
    .local p0, this:Lcom/google/gson/JsonObjectDeserializationVisitor;,"Lcom/google/gson/JsonObjectDeserializationVisitor<TT;>;"
    new-instance v0, Lcom/google/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting object but found array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitArrayField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 8
    .parameter "f"
    .parameter "typeOfF"
    .parameter "obj"

    .prologue
    .line 74
    .local p0, this:Lcom/google/gson/JsonObjectDeserializationVisitor;,"Lcom/google/gson/JsonObjectDeserializationVisitor<TT;>;"
    :try_start_0
    iget-object v5, p0, Lcom/google/gson/JsonDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v5

    if-nez v5, :cond_0

    .line 75
    new-instance v5, Lcom/google/gson/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expecting object found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/gson/JsonDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 77
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/google/gson/JsonDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 78
    .local v4, jsonObject:Lcom/google/gson/JsonObject;
    invoke-direct {p0, p1}, Lcom/google/gson/JsonObjectDeserializationVisitor;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, fName:Ljava/lang/String;
    invoke-virtual {v4, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonArray;

    .line 80
    .local v3, jsonChild:Lcom/google/gson/JsonArray;
    if-eqz v3, :cond_1

    .line 81
    invoke-virtual {p0, p2, v3}, Lcom/google/gson/JsonObjectDeserializationVisitor;->visitChildAsArray(Ljava/lang/reflect/Type;Lcom/google/gson/JsonArray;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, array:Ljava/lang/Object;
    invoke-virtual {p1, p3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .end local v0           #array:Ljava/lang/Object;
    :goto_0
    return-void

    .line 84
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p1, p3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public visitFieldUsingCustomHandler(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 11
    .parameter "f"
    .parameter "declaredTypeOfField"
    .parameter "parent"

    .prologue
    .local p0, this:Lcom/google/gson/JsonObjectDeserializationVisitor;,"Lcom/google/gson/JsonObjectDeserializationVisitor<TT;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 98
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/gson/JsonObjectDeserializationVisitor;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, fName:Ljava/lang/String;
    iget-object v9, p0, Lcom/google/gson/JsonDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v9

    if-nez v9, :cond_0

    .line 100
    new-instance v7, Lcom/google/gson/JsonParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expecting object found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/gson/JsonDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v2           #fName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 123
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    throw v7

    .line 102
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    .restart local v2       #fName:Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/google/gson/JsonDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 103
    .local v0, child:Lcom/google/gson/JsonElement;
    new-instance v5, Lcom/google/gson/TypeInfo;

    invoke-direct {v5, p2}, Lcom/google/gson/TypeInfo;-><init>(Ljava/lang/reflect/Type;)V

    .line 104
    .local v5, typeInfo:Lcom/google/gson/TypeInfo;
    if-nez v0, :cond_2

    .line 121
    :cond_1
    :goto_0
    return v7

    .line 106
    :cond_2
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 107
    invoke-virtual {v5}, Lcom/google/gson/TypeInfo;->isPrimitive()Z

    move-result v8

    if-nez v8, :cond_1

    .line 108
    const/4 v8, 0x0

    invoke-virtual {p1, p3, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    :cond_3
    new-instance v3, Lcom/google/gson/ObjectTypePair;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v3, v9, p2, v10}, Lcom/google/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    .line 113
    .local v3, objTypePair:Lcom/google/gson/ObjectTypePair;
    iget-object v9, p0, Lcom/google/gson/JsonDeserializationVisitor;->deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v3, v9}, Lcom/google/gson/ObjectTypePair;->getMatchingHandler(Lcom/google/gson/ParameterizedTypeHandlerMap;)Lcom/google/gson/Pair;

    move-result-object v4

    .line 114
    .local v4, pair:Lcom/google/gson/Pair;,"Lcom/google/gson/Pair<Lcom/google/gson/JsonDeserializer<*>;Lcom/google/gson/ObjectTypePair;>;"
    if-nez v4, :cond_4

    move v7, v8

    .line 115
    goto :goto_0

    .line 117
    :cond_4
    invoke-virtual {p0, v0, v4}, Lcom/google/gson/JsonObjectDeserializationVisitor;->invokeCustomDeserializer(Lcom/google/gson/JsonElement;Lcom/google/gson/Pair;)Ljava/lang/Object;

    move-result-object v6

    .line 118
    .local v6, value:Ljava/lang/Object;
    if-nez v6, :cond_5

    invoke-virtual {v5}, Lcom/google/gson/TypeInfo;->isPrimitive()Z

    move-result v8

    if-nez v8, :cond_1

    .line 119
    :cond_5
    invoke-virtual {p1, p3, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public visitObjectField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 8
    .parameter "f"
    .parameter "typeOfF"
    .parameter "obj"

    .prologue
    .line 55
    .local p0, this:Lcom/google/gson/JsonObjectDeserializationVisitor;,"Lcom/google/gson/JsonObjectDeserializationVisitor<TT;>;"
    :try_start_0
    iget-object v5, p0, Lcom/google/gson/JsonDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v5

    if-nez v5, :cond_0

    .line 56
    new-instance v5, Lcom/google/gson/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expecting object found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/gson/JsonDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 58
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/google/gson/JsonDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 59
    .local v4, jsonObject:Lcom/google/gson/JsonObject;
    invoke-direct {p0, p1}, Lcom/google/gson/JsonObjectDeserializationVisitor;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, fName:Ljava/lang/String;
    invoke-virtual {v4, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 61
    .local v3, jsonChild:Lcom/google/gson/JsonElement;
    if-eqz v3, :cond_1

    .line 62
    invoke-virtual {p0, p2, v3}, Lcom/google/gson/JsonObjectDeserializationVisitor;->visitChildAsObject(Ljava/lang/reflect/Type;Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, child:Ljava/lang/Object;
    invoke-virtual {p1, p3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .end local v0           #child:Ljava/lang/Object;
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p1, p3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public visitPrimitive(Ljava/lang/Object;)V
    .locals 4
    .parameter "primitive"

    .prologue
    .line 129
    .local p0, this:Lcom/google/gson/JsonObjectDeserializationVisitor;,"Lcom/google/gson/JsonObjectDeserializationVisitor<TT;>;"
    iget-object v1, p0, Lcom/google/gson/JsonDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Lcom/google/gson/JsonParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type information is unavailable, and the target object is not a primitive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/JsonDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/google/gson/JsonDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    .line 134
    .local v0, prim:Lcom/google/gson/JsonPrimitive;
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/JsonDeserializationVisitor;->target:Ljava/lang/Object;

    .line 135
    return-void
.end method
