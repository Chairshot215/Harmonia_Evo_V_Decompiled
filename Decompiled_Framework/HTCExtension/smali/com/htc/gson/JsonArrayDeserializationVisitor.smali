.class final Lcom/htc/gson/JsonArrayDeserializationVisitor;
.super Lcom/htc/gson/JsonDeserializationVisitor;
.source "JsonArrayDeserializationVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/htc/gson/JsonDeserializationVisitor",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/htc/gson/JsonArray;Ljava/lang/reflect/Type;Lcom/htc/gson/ObjectNavigatorFactory;Lcom/htc/gson/ObjectConstructor;Lcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/JsonDeserializationContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/gson/JsonArray;",
            "Ljava/lang/reflect/Type;",
            "Lcom/htc/gson/ObjectNavigatorFactory;",
            "Lcom/htc/gson/ObjectConstructor;",
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonDeserializer",
            "<*>;>;",
            "Lcom/htc/gson/JsonDeserializationContext;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lcom/htc/gson/JsonDeserializationVisitor;-><init>(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/ObjectNavigatorFactory;Lcom/htc/gson/ObjectConstructor;Lcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/JsonDeserializationContext;)V

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

    new-instance v2, Lcom/htc/gson/TypeInfo;

    iget-object v3, p0, Lcom/htc/gson/JsonDeserializationVisitor;->targetType:Ljava/lang/reflect/Type;

    invoke-direct {v2, v3}, Lcom/htc/gson/TypeInfo;-><init>(Ljava/lang/reflect/Type;)V

    iget-object v3, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    invoke-virtual {v3}, Lcom/htc/gson/JsonElement;->isJsonArray()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/htc/gson/JsonParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expecting array found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    invoke-virtual {v3}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v2}, Lcom/htc/gson/TypeInfo;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/gson/JsonDeserializationVisitor;->targetType:Ljava/lang/reflect/Type;

    invoke-static {v3}, Lcom/htc/gson/TypeInfoFactory;->getTypeInfoForArray(Ljava/lang/reflect/Type;)Lcom/htc/gson/TypeInfoArray;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/gson/JsonDeserializationVisitor;->objectConstructor:Lcom/htc/gson/ObjectConstructor;

    invoke-virtual {v0}, Lcom/htc/gson/TypeInfoArray;->getSecondLevelType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v1}, Lcom/htc/gson/JsonArray;->size()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/htc/gson/ObjectConstructor;->constructArray(Ljava/lang/reflect/Type;I)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/htc/gson/JsonDeserializationVisitor;->objectConstructor:Lcom/htc/gson/ObjectConstructor;

    invoke-virtual {v2}, Lcom/htc/gson/TypeInfo;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/htc/gson/ObjectConstructor;->construct(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public startVisitingObject(Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lcom/htc/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting array but found object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitArray(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 8

    iget-object v5, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    invoke-virtual {v5}, Lcom/htc/gson/JsonElement;->isJsonArray()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Lcom/htc/gson/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expecting array found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    iget-object v5, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    invoke-virtual {v5}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v3

    invoke-static {p2}, Lcom/htc/gson/TypeInfoFactory;->getTypeInfoForArray(Ljava/lang/reflect/Type;)Lcom/htc/gson/TypeInfoArray;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/htc/gson/JsonArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    invoke-virtual {v3, v2}, Lcom/htc/gson/JsonArray;->get(I)Lcom/htc/gson/JsonElement;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/htc/gson/JsonElement;->isJsonNull()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {p1, v2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    instance-of v5, v4, Lcom/htc/gson/JsonObject;

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/htc/gson/TypeInfoArray;->getComponentRawType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/htc/gson/JsonArrayDeserializationVisitor;->visitChildAsObject(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonElement;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_3
    instance-of v5, v4, Lcom/htc/gson/JsonArray;

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/htc/gson/TypeInfoArray;->getSecondLevelType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/htc/gson/JsonArrayDeserializationVisitor;->visitChildAsArray(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonArray;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_4
    instance-of v5, v4, Lcom/htc/gson/JsonPrimitive;

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/htc/gson/TypeInfoArray;->getComponentRawType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4}, Lcom/htc/gson/JsonElement;->getAsJsonPrimitive()Lcom/htc/gson/JsonPrimitive;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/htc/gson/JsonArrayDeserializationVisitor;->visitChildAsObject(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonElement;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_5
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    :cond_6
    return-void
.end method

.method public visitArrayField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lcom/htc/gson/JsonParseException;

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

    invoke-direct {v0, v1}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitFieldUsingCustomHandler(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 3

    new-instance v0, Lcom/htc/gson/JsonParseException;

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

    invoke-direct {v0, v1}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitObjectField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lcom/htc/gson/JsonParseException;

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

    invoke-direct {v0, v1}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitPrimitive(Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lcom/htc/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type information is unavailable, and the target is not a primitive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/gson/JsonDeserializationVisitor;->json:Lcom/htc/gson/JsonElement;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
