.class final Lcom/htc/gson/JsonSerializationVisitor;
.super Ljava/lang/Object;
.source "JsonSerializationVisitor.java"

# interfaces
.implements Lcom/htc/gson/ObjectNavigator$Visitor;


# instance fields
.field private final ancestors:Lcom/htc/gson/MemoryRefStack;

.field private final context:Lcom/htc/gson/JsonSerializationContext;

.field private final factory:Lcom/htc/gson/ObjectNavigatorFactory;

.field private root:Lcom/htc/gson/JsonElement;

.field private final serializeNulls:Z

.field private final serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/htc/gson/ObjectNavigatorFactory;ZLcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/JsonSerializationContext;Lcom/htc/gson/MemoryRefStack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/gson/ObjectNavigatorFactory;",
            "Z",
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonSerializer",
            "<*>;>;",
            "Lcom/htc/gson/JsonSerializationContext;",
            "Lcom/htc/gson/MemoryRefStack;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/gson/JsonSerializationVisitor;->factory:Lcom/htc/gson/ObjectNavigatorFactory;

    iput-boolean p2, p0, Lcom/htc/gson/JsonSerializationVisitor;->serializeNulls:Z

    iput-object p3, p0, Lcom/htc/gson/JsonSerializationVisitor;->serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    iput-object p4, p0, Lcom/htc/gson/JsonSerializationVisitor;->context:Lcom/htc/gson/JsonSerializationContext;

    iput-object p5, p0, Lcom/htc/gson/JsonSerializationVisitor;->ancestors:Lcom/htc/gson/MemoryRefStack;

    return-void
.end method

.method private addAsArrayElement(Lcom/htc/gson/ObjectTypePair;)V
    .locals 3

    invoke-virtual {p1}, Lcom/htc/gson/ObjectTypePair;->getObject()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/gson/JsonSerializationVisitor;->root:Lcom/htc/gson/JsonElement;

    invoke-virtual {v1}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v1

    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/gson/JsonArray;->add(Lcom/htc/gson/JsonElement;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/gson/JsonSerializationVisitor;->getJsonElementForChild(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/gson/JsonSerializationVisitor;->root:Lcom/htc/gson/JsonElement;

    invoke-virtual {v1}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/gson/JsonArray;->add(Lcom/htc/gson/JsonElement;)V

    goto :goto_0
.end method

.method private addAsChildOfObject(Ljava/lang/reflect/Field;Lcom/htc/gson/ObjectTypePair;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/htc/gson/JsonSerializationVisitor;->getJsonElementForChild(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/gson/JsonSerializationVisitor;->addChildAsElement(Ljava/lang/reflect/Field;Lcom/htc/gson/JsonElement;)V

    return-void
.end method

.method private addChildAsElement(Ljava/lang/reflect/Field;Lcom/htc/gson/JsonElement;)V
    .locals 3

    iget-object v1, p0, Lcom/htc/gson/JsonSerializationVisitor;->factory:Lcom/htc/gson/ObjectNavigatorFactory;

    invoke-virtual {v1}, Lcom/htc/gson/ObjectNavigatorFactory;->getFieldNamingPolicy()Lcom/htc/gson/FieldNamingStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/gson/JsonSerializationVisitor;->root:Lcom/htc/gson/JsonElement;

    invoke-virtual {v1}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v1

    invoke-interface {v0, p1}, Lcom/htc/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/htc/gson/JsonObject;->add(Ljava/lang/String;Lcom/htc/gson/JsonElement;)V

    return-void
.end method

.method private assignToRoot(Lcom/htc/gson/JsonElement;)V
    .locals 0

    invoke-static {p1}, Lcom/htc/gson/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/htc/gson/JsonSerializationVisitor;->root:Lcom/htc/gson/JsonElement;

    return-void
.end method

.method private findAndInvokeCustomSerializer(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/JsonElement;
    .locals 6

    iget-object v3, p0, Lcom/htc/gson/JsonSerializationVisitor;->serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {p1, v3}, Lcom/htc/gson/ObjectTypePair;->getMatchingHandler(Lcom/htc/gson/ParameterizedTypeHandlerMap;)Lcom/htc/gson/Pair;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/htc/gson/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/gson/JsonSerializer;

    invoke-virtual {v1}, Lcom/htc/gson/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/htc/gson/ObjectTypePair;

    invoke-virtual {p0, p1}, Lcom/htc/gson/JsonSerializationVisitor;->start(Lcom/htc/gson/ObjectTypePair;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/htc/gson/ObjectTypePair;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/gson/ObjectTypePair;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/gson/JsonSerializationVisitor;->context:Lcom/htc/gson/JsonSerializationContext;

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/gson/JsonSerializationVisitor;->end(Lcom/htc/gson/ObjectTypePair;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {p0, p1}, Lcom/htc/gson/JsonSerializationVisitor;->end(Lcom/htc/gson/ObjectTypePair;)V

    throw v3
.end method

.method private getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getJsonElementForChild(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/JsonElement;
    .locals 7

    iget-object v1, p0, Lcom/htc/gson/JsonSerializationVisitor;->factory:Lcom/htc/gson/ObjectNavigatorFactory;

    invoke-virtual {v1, p1}, Lcom/htc/gson/ObjectNavigatorFactory;->create(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/ObjectNavigator;

    move-result-object v6

    new-instance v0, Lcom/htc/gson/JsonSerializationVisitor;

    iget-object v1, p0, Lcom/htc/gson/JsonSerializationVisitor;->factory:Lcom/htc/gson/ObjectNavigatorFactory;

    iget-boolean v2, p0, Lcom/htc/gson/JsonSerializationVisitor;->serializeNulls:Z

    iget-object v3, p0, Lcom/htc/gson/JsonSerializationVisitor;->serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    iget-object v4, p0, Lcom/htc/gson/JsonSerializationVisitor;->context:Lcom/htc/gson/JsonSerializationContext;

    iget-object v5, p0, Lcom/htc/gson/JsonSerializationVisitor;->ancestors:Lcom/htc/gson/MemoryRefStack;

    invoke-direct/range {v0 .. v5}, Lcom/htc/gson/JsonSerializationVisitor;-><init>(Lcom/htc/gson/ObjectNavigatorFactory;ZLcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/JsonSerializationContext;Lcom/htc/gson/MemoryRefStack;)V

    invoke-virtual {v6, v0}, Lcom/htc/gson/ObjectNavigator;->accept(Lcom/htc/gson/ObjectNavigator$Visitor;)V

    invoke-virtual {v0}, Lcom/htc/gson/JsonSerializationVisitor;->getJsonElement()Lcom/htc/gson/JsonElement;

    move-result-object v1

    return-object v1
.end method

.method private isFieldNull(Ljava/lang/reflect/Field;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/gson/JsonSerializationVisitor;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public end(Lcom/htc/gson/ObjectTypePair;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/gson/JsonSerializationVisitor;->ancestors:Lcom/htc/gson/MemoryRefStack;

    invoke-virtual {v0}, Lcom/htc/gson/MemoryRefStack;->pop()Lcom/htc/gson/ObjectTypePair;

    :cond_0
    return-void
.end method

.method public getJsonElement()Lcom/htc/gson/JsonElement;
    .locals 1

    iget-object v0, p0, Lcom/htc/gson/JsonSerializationVisitor;->root:Lcom/htc/gson/JsonElement;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public start(Lcom/htc/gson/ObjectTypePair;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/gson/JsonSerializationVisitor;->ancestors:Lcom/htc/gson/MemoryRefStack;

    invoke-virtual {v0, p1}, Lcom/htc/gson/MemoryRefStack;->contains(Lcom/htc/gson/ObjectTypePair;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/htc/gson/CircularReferenceException;

    invoke-direct {v0, p1}, Lcom/htc/gson/CircularReferenceException;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/htc/gson/JsonSerializationVisitor;->ancestors:Lcom/htc/gson/MemoryRefStack;

    invoke-virtual {v0, p1}, Lcom/htc/gson/MemoryRefStack;->push(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/ObjectTypePair;

    goto :goto_0
.end method

.method public startVisitingObject(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/htc/gson/JsonObject;

    invoke-direct {v0}, Lcom/htc/gson/JsonObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/htc/gson/JsonSerializationVisitor;->assignToRoot(Lcom/htc/gson/JsonElement;)V

    return-void
.end method

.method public visitArray(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 8

    new-instance v6, Lcom/htc/gson/JsonArray;

    invoke-direct {v6}, Lcom/htc/gson/JsonArray;-><init>()V

    invoke-direct {p0, v6}, Lcom/htc/gson/JsonSerializationVisitor;->assignToRoot(Lcom/htc/gson/JsonElement;)V

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    invoke-static {p2}, Lcom/htc/gson/TypeInfoFactory;->getTypeInfoForArray(Ljava/lang/reflect/Type;)Lcom/htc/gson/TypeInfoArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/gson/TypeInfoArray;->getSecondLevelType()Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v2

    new-instance v6, Lcom/htc/gson/ObjectTypePair;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v1, v7}, Lcom/htc/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-direct {p0, v6}, Lcom/htc/gson/JsonSerializationVisitor;->addAsArrayElement(Lcom/htc/gson/ObjectTypePair;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public visitArrayField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 4

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/htc/gson/JsonSerializationVisitor;->isFieldNull(Ljava/lang/reflect/Field;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/gson/JsonSerializationVisitor;->serializeNulls:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/htc/gson/JsonSerializationVisitor;->addChildAsElement(Ljava/lang/reflect/Field;Lcom/htc/gson/JsonElement;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/htc/gson/JsonSerializationVisitor;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lcom/htc/gson/ObjectTypePair;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p2, v3}, Lcom/htc/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-direct {p0, p1, v2}, Lcom/htc/gson/JsonSerializationVisitor;->addAsChildOfObject(Ljava/lang/reflect/Field;Lcom/htc/gson/ObjectTypePair;)V
    :try_end_0
    .catch Lcom/htc/gson/CircularReferenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1, p1}, Lcom/htc/gson/CircularReferenceException;->createDetailedException(Ljava/lang/reflect/Field;)Ljava/lang/IllegalStateException;

    move-result-object v2

    throw v2
.end method

.method public visitFieldUsingCustomHandler(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/htc/gson/JsonSerializationVisitor;->root:Lcom/htc/gson/JsonElement;

    invoke-virtual {v6}, Lcom/htc/gson/JsonElement;->isJsonObject()Z

    move-result v6

    invoke-static {v6}, Lcom/htc/gson/Preconditions;->checkState(Z)V

    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-boolean v5, p0, Lcom/htc/gson/JsonSerializationVisitor;->serializeNulls:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/htc/gson/JsonSerializationVisitor;->addChildAsElement(Ljava/lang/reflect/Field;Lcom/htc/gson/JsonElement;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    new-instance v3, Lcom/htc/gson/ObjectTypePair;

    const/4 v6, 0x0

    invoke-direct {v3, v2, p2, v6}, Lcom/htc/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-direct {p0, v3}, Lcom/htc/gson/JsonSerializationVisitor;->findAndInvokeCustomSerializer(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/htc/gson/JsonSerializationVisitor;->addChildAsElement(Ljava/lang/reflect/Field;Lcom/htc/gson/JsonElement;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/htc/gson/CircularReferenceException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    :cond_2
    move v4, v5

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1, p1}, Lcom/htc/gson/CircularReferenceException;->createDetailedException(Ljava/lang/reflect/Field;)Ljava/lang/IllegalStateException;

    move-result-object v4

    throw v4
.end method

.method public visitObjectField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 4

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/htc/gson/JsonSerializationVisitor;->isFieldNull(Ljava/lang/reflect/Field;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/gson/JsonSerializationVisitor;->serializeNulls:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/htc/gson/JsonSerializationVisitor;->addChildAsElement(Ljava/lang/reflect/Field;Lcom/htc/gson/JsonElement;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/htc/gson/JsonSerializationVisitor;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/htc/gson/ObjectTypePair;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p2, v3}, Lcom/htc/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-direct {p0, p1, v2}, Lcom/htc/gson/JsonSerializationVisitor;->addAsChildOfObject(Ljava/lang/reflect/Field;Lcom/htc/gson/ObjectTypePair;)V
    :try_end_0
    .catch Lcom/htc/gson/CircularReferenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p1}, Lcom/htc/gson/CircularReferenceException;->createDetailedException(Ljava/lang/reflect/Field;)Ljava/lang/IllegalStateException;

    move-result-object v2

    throw v2
.end method

.method public visitPrimitive(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/gson/JsonSerializationVisitor;->assignToRoot(Lcom/htc/gson/JsonElement;)V

    return-void

    :cond_0
    new-instance v0, Lcom/htc/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/htc/gson/JsonPrimitive;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public visitUsingCustomHandler(Lcom/htc/gson/ObjectTypePair;)Z
    .locals 5

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/htc/gson/ObjectTypePair;->getObject()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-boolean v4, p0, Lcom/htc/gson/JsonSerializationVisitor;->serializeNulls:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/gson/JsonSerializationVisitor;->assignToRoot(Lcom/htc/gson/JsonElement;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/gson/JsonSerializationVisitor;->findAndInvokeCustomSerializer(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/htc/gson/JsonSerializationVisitor;->assignToRoot(Lcom/htc/gson/JsonElement;)V
    :try_end_0
    .catch Lcom/htc/gson/CircularReferenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/gson/CircularReferenceException;->createDetailedException(Ljava/lang/reflect/Field;)Ljava/lang/IllegalStateException;

    move-result-object v3

    throw v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
