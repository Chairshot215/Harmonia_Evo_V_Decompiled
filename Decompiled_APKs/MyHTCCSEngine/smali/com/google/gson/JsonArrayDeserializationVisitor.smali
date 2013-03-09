.class final Lcom/google/gson/JsonArrayDeserializationVisitor;
.super Lcom/google/gson/JsonDeserializationVisitor;
.source "JsonArrayDeserializationVisitor.java"


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
.method constructor <init>(Lcom/google/gson/JsonArray;Ljava/lang/reflect/Type;Lcom/google/gson/ObjectNavigatorFactory;Lcom/google/gson/ObjectConstructor;Lcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/JsonDeserializationContext;)V
    .locals 0
    .parameter "jsonArray"
    .parameter "arrayType"
    .parameter "factory"
    .parameter "objectConstructor"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonArray;",
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
    .line 36
    .local p0, this:Lcom/google/gson/JsonArrayDeserializationVisitor;,"Lcom/google/gson/JsonArrayDeserializationVisitor<TT;>;"
    .local p5, deserializers:Lcom/google/gson/ParameterizedTypeHandlerMap;,"Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonDeserializer<*>;>;"
    invoke-direct/range {p0 .. p6}, Lcom/google/gson/JsonDeserializationVisitor;-><init>(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/ObjectNavigatorFactory;Lcom/google/gson/ObjectConstructor;Lcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/JsonDeserializationContext;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected constructTarget()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, this:Lcom/google/gson/JsonArrayDeserializationVisitor;,"Lcom/google/gson/JsonArrayDeserializationVisitor<TT;>;"
    new-instance v2, Lcom/google/gson/TypeInfo;

    iget-object v3, p0, Lcom/google/gson/JsonDeserializationVisitor;->targetType:Ljava/lang/reflect/Type;

    invoke-direct {v2, v3}, Lcom/google/gson/TypeInfo;-><init>(Ljava/lang/reflect/Type;)V

    .line 45
    .local v2, typeInfo:Lcom/google/gson/TypeInfo;
    iget-object v3, p0, Lcom/google/gson/JsonDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    new-instance v3, Lcom/google/gson/JsonParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expecting array found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/gson/JsonDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 48
    :cond_0
    iget-object v3, p0, Lcom/google/gson/JsonDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 49
    .local v1, jsonArray:Lcom/google/gson/JsonArray;
    invoke-virtual {v2}, Lcom/google/gson/TypeInfo;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    iget-object v3, p0, Lcom/google/gson/JsonDeserializationVisitor;->targetType:Ljava/lang/reflect/Type;

    invoke-static {v3}, Lcom/google/gson/TypeInfoFactory;->getTypeInfoForArray(Ljava/lang/reflect/Type;)Lcom/google/gson/TypeInfoArray;

    move-result-object v0

    .line 53
    .local v0, arrayTypeInfo:Lcom/google/gson/TypeInfoArray;
    iget-object v3, p0, Lcom/google/gson/JsonDeserializationVisitor;->objectConstructor:Lcom/google/gson/ObjectConstructor;

    invoke-virtual {v0}, Lcom/google/gson/TypeInfoArray;->getSecondLevelType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/google/gson/ObjectConstructor;->constructArray(Ljava/lang/reflect/Type;I)Ljava/lang/Object;

    move-result-object v3

    .line 56
    .end local v0           #arrayTypeInfo:Lcom/google/gson/TypeInfoArray;
    :goto_0
    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/google/gson/JsonDeserializationVisitor;->objectConstructor:Lcom/google/gson/ObjectConstructor;

    invoke-virtual {v2}, Lcom/google/gson/TypeInfo;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/gson/ObjectConstructor;->construct(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public startVisitingObject(Ljava/lang/Object;)V
    .locals 3
    .parameter "node"

    .prologue
    .line 91
    .local p0, this:Lcom/google/gson/JsonArrayDeserializationVisitor;,"Lcom/google/gson/JsonArrayDeserializationVisitor<TT;>;"
    new-instance v0, Lcom/google/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting array but found object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitArray(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 8
    .parameter "array"
    .parameter "arrayType"

    .prologue
    .line 61
    .local p0, this:Lcom/google/gson/JsonArrayDeserializationVisitor;,"Lcom/google/gson/JsonArrayDeserializationVisitor<TT;>;"
    iget-object v5, p0, Lcom/google/gson/JsonDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v5

    if-nez v5, :cond_0

    .line 62
    new-instance v5, Lcom/google/gson/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expecting array found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/gson/JsonDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 64
    :cond_0
    iget-object v5, p0, Lcom/google/gson/JsonDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 65
    .local v3, jsonArray:Lcom/google/gson/JsonArray;
    invoke-static {p2}, Lcom/google/gson/TypeInfoFactory;->getTypeInfoForArray(Ljava/lang/reflect/Type;)Lcom/google/gson/TypeInfoArray;

    move-result-object v0

    .line 66
    .local v0, arrayTypeInfo:Lcom/google/gson/TypeInfoArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 67
    invoke-virtual {v3, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    .line 70
    .local v4, jsonChild:Lcom/google/gson/JsonElement;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 71
    :cond_1
    const/4 v1, 0x0

    .line 82
    :goto_1
    invoke-static {p1, v2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_2
    instance-of v5, v4, Lcom/google/gson/JsonObject;

    if-eqz v5, :cond_3

    .line 73
    invoke-virtual {v0}, Lcom/google/gson/TypeInfoArray;->getComponentRawType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/google/gson/JsonArrayDeserializationVisitor;->visitChildAsObject(Ljava/lang/reflect/Type;Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object v1

    .local v1, child:Ljava/lang/Object;
    goto :goto_1

    .line 74
    .end local v1           #child:Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Lcom/google/gson/JsonArray;

    if-eqz v5, :cond_4

    .line 75
    invoke-virtual {v0}, Lcom/google/gson/TypeInfoArray;->getSecondLevelType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/google/gson/JsonArrayDeserializationVisitor;->visitChildAsArray(Ljava/lang/reflect/Type;Lcom/google/gson/JsonArray;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #child:Ljava/lang/Object;
    goto :goto_1

    .line 76
    .end local v1           #child:Ljava/lang/Object;
    :cond_4
    instance-of v5, v4, Lcom/google/gson/JsonPrimitive;

    if-eqz v5, :cond_5

    .line 77
    invoke-virtual {v0}, Lcom/google/gson/TypeInfoArray;->getComponentRawType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/google/gson/JsonArrayDeserializationVisitor;->visitChildAsObject(Ljava/lang/reflect/Type;Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #child:Ljava/lang/Object;
    goto :goto_1

    .line 80
    .end local v1           #child:Ljava/lang/Object;
    :cond_5
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 84
    .end local v4           #jsonChild:Lcom/google/gson/JsonElement;
    :cond_6
    return-void
.end method

.method public visitArrayField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 3
    .parameter "f"
    .parameter "typeOfF"
    .parameter "obj"

    .prologue
    .line 95
    .local p0, this:Lcom/google/gson/JsonArrayDeserializationVisitor;,"Lcom/google/gson/JsonArrayDeserializationVisitor<TT;>;"
    new-instance v0, Lcom/google/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting array but found array field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitFieldUsingCustomHandler(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 3
    .parameter "f"
    .parameter "actualTypeOfField"
    .parameter "parent"

    .prologue
    .line 105
    .local p0, this:Lcom/google/gson/JsonArrayDeserializationVisitor;,"Lcom/google/gson/JsonArrayDeserializationVisitor<TT;>;"
    new-instance v0, Lcom/google/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting array but found field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitObjectField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 3
    .parameter "f"
    .parameter "typeOfF"
    .parameter "obj"

    .prologue
    .line 100
    .local p0, this:Lcom/google/gson/JsonArrayDeserializationVisitor;,"Lcom/google/gson/JsonArrayDeserializationVisitor<TT;>;"
    new-instance v0, Lcom/google/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting array but found object field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitPrimitive(Ljava/lang/Object;)V
    .locals 3
    .parameter "primitive"

    .prologue
    .line 110
    .local p0, this:Lcom/google/gson/JsonArrayDeserializationVisitor;,"Lcom/google/gson/JsonArrayDeserializationVisitor<TT;>;"
    new-instance v0, Lcom/google/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type information is unavailable, and the target is not a primitive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/JsonDeserializationVisitor;->json:Lcom/google/gson/JsonElement;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
