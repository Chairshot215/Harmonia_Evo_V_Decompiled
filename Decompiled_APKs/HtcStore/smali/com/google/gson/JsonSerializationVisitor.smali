.class final Lcom/google/gson/JsonSerializationVisitor;
.super Ljava/lang/Object;
.source "JsonSerializationVisitor.java"

# interfaces
.implements Lcom/google/gson/ObjectNavigator$Visitor;


# instance fields
.field private final ancestors:Lcom/google/gson/MemoryRefStack;

.field private final context:Lcom/google/gson/JsonSerializationContext;

.field private final factory:Lcom/google/gson/ObjectNavigatorFactory;

.field private root:Lcom/google/gson/JsonElement;

.field private final serializeNulls:Z

.field private final serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gson/ObjectNavigatorFactory;ZLcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/JsonSerializationContext;Lcom/google/gson/MemoryRefStack;)V
    .locals 0
    .parameter "factory"
    .parameter "serializeNulls"
    .parameter
    .parameter "context"
    .parameter "ancestors"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/ObjectNavigatorFactory;",
            "Z",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonSerializer",
            "<*>;>;",
            "Lcom/google/gson/JsonSerializationContext;",
            "Lcom/google/gson/MemoryRefStack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;,"Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonSerializer<*>;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/gson/JsonSerializationVisitor;->factory:Lcom/google/gson/ObjectNavigatorFactory;

    .line 42
    iput-boolean p2, p0, Lcom/google/gson/JsonSerializationVisitor;->serializeNulls:Z

    .line 43
    iput-object p3, p0, Lcom/google/gson/JsonSerializationVisitor;->serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 44
    iput-object p4, p0, Lcom/google/gson/JsonSerializationVisitor;->context:Lcom/google/gson/JsonSerializationContext;

    .line 45
    iput-object p5, p0, Lcom/google/gson/JsonSerializationVisitor;->ancestors:Lcom/google/gson/MemoryRefStack;

    .line 46
    return-void
.end method

.method private addAsArrayElement(Lcom/google/gson/ObjectTypePair;)V
    .locals 3
    .parameter "elementTypePair"

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/google/gson/ObjectTypePair;->getObject()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/google/gson/JsonSerializationVisitor;->root:Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/gson/JsonSerializationVisitor;->getJsonElementForChild(Lcom/google/gson/ObjectTypePair;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 140
    .local v0, childElement:Lcom/google/gson/JsonElement;
    iget-object v1, p0, Lcom/google/gson/JsonSerializationVisitor;->root:Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0
.end method

.method private addAsChildOfObject(Ljava/lang/reflect/Field;Lcom/google/gson/ObjectTypePair;)V
    .locals 1
    .parameter "f"
    .parameter "fieldValuePair"

    .prologue
    .line 126
    invoke-direct {p0, p2}, Lcom/google/gson/JsonSerializationVisitor;->getJsonElementForChild(Lcom/google/gson/ObjectTypePair;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 127
    .local v0, childElement:Lcom/google/gson/JsonElement;
    invoke-direct {p0, p1, v0}, Lcom/google/gson/JsonSerializationVisitor;->addChildAsElement(Ljava/lang/reflect/Field;Lcom/google/gson/JsonElement;)V

    .line 128
    return-void
.end method

.method private addChildAsElement(Ljava/lang/reflect/Field;Lcom/google/gson/JsonElement;)V
    .locals 3
    .parameter "f"
    .parameter "childElement"

    .prologue
    .line 131
    iget-object v1, p0, Lcom/google/gson/JsonSerializationVisitor;->factory:Lcom/google/gson/ObjectNavigatorFactory;

    invoke-virtual {v1}, Lcom/google/gson/ObjectNavigatorFactory;->getFieldNamingPolicy()Lcom/google/gson/FieldNamingStrategy;

    move-result-object v0

    .line 132
    .local v0, namingPolicy:Lcom/google/gson/FieldNamingStrategy;
    iget-object v1, p0, Lcom/google/gson/JsonSerializationVisitor;->root:Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-interface {v0, p1}, Lcom/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 133
    return-void
.end method

.method private assignToRoot(Lcom/google/gson/JsonElement;)V
    .locals 0
    .parameter "newRoot"

    .prologue
    .line 220
    invoke-static {p1}, Lcom/google/gson/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 221
    iput-object p1, p0, Lcom/google/gson/JsonSerializationVisitor;->root:Lcom/google/gson/JsonElement;

    .line 222
    return-void
.end method

.method private findAndInvokeCustomSerializer(Lcom/google/gson/ObjectTypePair;)Lcom/google/gson/JsonElement;
    .locals 6
    .parameter "objTypePair"

    .prologue
    .line 178
    iget-object v3, p0, Lcom/google/gson/JsonSerializationVisitor;->serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {p1, v3}, Lcom/google/gson/ObjectTypePair;->getMatchingHandler(Lcom/google/gson/ParameterizedTypeHandlerMap;)Lcom/google/gson/Pair;

    move-result-object v1

    .line 179
    .local v1, pair:Lcom/google/gson/Pair;,"Lcom/google/gson/Pair<Lcom/google/gson/JsonSerializer<*>;Lcom/google/gson/ObjectTypePair;>;"
    if-nez v1, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    .line 182
    :cond_0
    invoke-virtual {v1}, Lcom/google/gson/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonSerializer;

    .line 183
    .local v2, serializer:Lcom/google/gson/JsonSerializer;
    invoke-virtual {v1}, Lcom/google/gson/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/google/gson/ObjectTypePair;

    .line 184
    .restart local p1
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonSerializationVisitor;->start(Lcom/google/gson/ObjectTypePair;)V

    .line 186
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/ObjectTypePair;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/gson/ObjectTypePair;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    iget-object v5, p0, Lcom/google/gson/JsonSerializationVisitor;->context:Lcom/google/gson/JsonSerializationContext;

    invoke-interface {v2, v3, v4, v5}, Lcom/google/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 188
    .local v0, element:Lcom/google/gson/JsonElement;
    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 190
    .end local v0           #element:Lcom/google/gson/JsonElement;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonSerializationVisitor;->end(Lcom/google/gson/ObjectTypePair;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonSerializationVisitor;->end(Lcom/google/gson/ObjectTypePair;)V

    throw v3
.end method

.method private getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "f"
    .parameter "obj"

    .prologue
    .line 230
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getJsonElementForChild(Lcom/google/gson/ObjectTypePair;)Lcom/google/gson/JsonElement;
    .locals 7
    .parameter "fieldValueTypePair"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/google/gson/JsonSerializationVisitor;->factory:Lcom/google/gson/ObjectNavigatorFactory;

    invoke-virtual {v1, p1}, Lcom/google/gson/ObjectNavigatorFactory;->create(Lcom/google/gson/ObjectTypePair;)Lcom/google/gson/ObjectNavigator;

    move-result-object v6

    .line 146
    .local v6, on:Lcom/google/gson/ObjectNavigator;
    new-instance v0, Lcom/google/gson/JsonSerializationVisitor;

    iget-object v1, p0, Lcom/google/gson/JsonSerializationVisitor;->factory:Lcom/google/gson/ObjectNavigatorFactory;

    iget-boolean v2, p0, Lcom/google/gson/JsonSerializationVisitor;->serializeNulls:Z

    iget-object v3, p0, Lcom/google/gson/JsonSerializationVisitor;->serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    iget-object v4, p0, Lcom/google/gson/JsonSerializationVisitor;->context:Lcom/google/gson/JsonSerializationContext;

    iget-object v5, p0, Lcom/google/gson/JsonSerializationVisitor;->ancestors:Lcom/google/gson/MemoryRefStack;

    invoke-direct/range {v0 .. v5}, Lcom/google/gson/JsonSerializationVisitor;-><init>(Lcom/google/gson/ObjectNavigatorFactory;ZLcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/JsonSerializationContext;Lcom/google/gson/MemoryRefStack;)V

    .line 148
    .local v0, childVisitor:Lcom/google/gson/JsonSerializationVisitor;
    invoke-virtual {v6, v0}, Lcom/google/gson/ObjectNavigator;->accept(Lcom/google/gson/ObjectNavigator$Visitor;)V

    .line 149
    invoke-virtual {v0}, Lcom/google/gson/JsonSerializationVisitor;->getJsonElement()Lcom/google/gson/JsonElement;

    move-result-object v1

    return-object v1
.end method

.method private isFieldNull(Ljava/lang/reflect/Field;Ljava/lang/Object;)Z
    .locals 1
    .parameter "f"
    .parameter "obj"

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Lcom/google/gson/JsonSerializationVisitor;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

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
.method public end(Lcom/google/gson/ObjectTypePair;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 63
    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/gson/JsonSerializationVisitor;->ancestors:Lcom/google/gson/MemoryRefStack;

    invoke-virtual {v0}, Lcom/google/gson/MemoryRefStack;->pop()Lcom/google/gson/ObjectTypePair;

    .line 66
    :cond_0
    return-void
.end method

.method public getJsonElement()Lcom/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/gson/JsonSerializationVisitor;->root:Lcom/google/gson/JsonElement;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public start(Lcom/google/gson/ObjectTypePair;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/gson/JsonSerializationVisitor;->ancestors:Lcom/google/gson/MemoryRefStack;

    invoke-virtual {v0, p1}, Lcom/google/gson/MemoryRefStack;->contains(Lcom/google/gson/ObjectTypePair;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    new-instance v0, Lcom/google/gson/CircularReferenceException;

    invoke-direct {v0, p1}, Lcom/google/gson/CircularReferenceException;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/google/gson/JsonSerializationVisitor;->ancestors:Lcom/google/gson/MemoryRefStack;

    invoke-virtual {v0, p1}, Lcom/google/gson/MemoryRefStack;->push(Lcom/google/gson/ObjectTypePair;)Lcom/google/gson/ObjectTypePair;

    goto :goto_0
.end method

.method public startVisitingObject(Ljava/lang/Object;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 69
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/gson/JsonSerializationVisitor;->assignToRoot(Lcom/google/gson/JsonElement;)V

    .line 70
    return-void
.end method

.method public visitArray(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 8
    .parameter "array"
    .parameter "arrayType"

    .prologue
    .line 73
    new-instance v6, Lcom/google/gson/JsonArray;

    invoke-direct {v6}, Lcom/google/gson/JsonArray;-><init>()V

    invoke-direct {p0, v6}, Lcom/google/gson/JsonSerializationVisitor;->assignToRoot(Lcom/google/gson/JsonElement;)V

    .line 74
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    .line 75
    .local v5, length:I
    invoke-static {p2}, Lcom/google/gson/TypeInfoFactory;->getTypeInfoForArray(Ljava/lang/reflect/Type;)Lcom/google/gson/TypeInfoArray;

    move-result-object v3

    .line 76
    .local v3, fieldTypeInfo:Lcom/google/gson/TypeInfoArray;
    invoke-virtual {v3}, Lcom/google/gson/TypeInfoArray;->getSecondLevelType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 77
    .local v2, componentType:Ljava/lang/reflect/Type;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 78
    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, child:Ljava/lang/Object;
    move-object v1, v2

    .line 83
    .local v1, childType:Ljava/lang/reflect/Type;
    new-instance v6, Lcom/google/gson/ObjectTypePair;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v1, v7}, Lcom/google/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-direct {p0, v6}, Lcom/google/gson/JsonSerializationVisitor;->addAsArrayElement(Lcom/google/gson/ObjectTypePair;)V

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 85
    .end local v0           #child:Ljava/lang/Object;
    .end local v1           #childType:Ljava/lang/reflect/Type;
    :cond_0
    return-void
.end method

.method public visitArrayField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 4
    .parameter "f"
    .parameter "typeOfF"
    .parameter "obj"

    .prologue
    .line 89
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/google/gson/JsonSerializationVisitor;->isFieldNull(Ljava/lang/reflect/Field;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    iget-boolean v2, p0, Lcom/google/gson/JsonSerializationVisitor;->serializeNulls:Z

    if-eqz v2, :cond_0

    .line 91
    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/gson/JsonSerializationVisitor;->addChildAsElement(Ljava/lang/reflect/Field;Lcom/google/gson/JsonElement;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/google/gson/JsonSerializationVisitor;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, array:Ljava/lang/Object;
    new-instance v2, Lcom/google/gson/ObjectTypePair;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p2, v3}, Lcom/google/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-direct {p0, p1, v2}, Lcom/google/gson/JsonSerializationVisitor;->addAsChildOfObject(Ljava/lang/reflect/Field;Lcom/google/gson/ObjectTypePair;)V
    :try_end_0
    .catch Lcom/google/gson/CircularReferenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v0           #array:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Lcom/google/gson/CircularReferenceException;
    invoke-virtual {v1, p1}, Lcom/google/gson/CircularReferenceException;->createDetailedException(Ljava/lang/reflect/Field;)Ljava/lang/IllegalStateException;

    move-result-object v2

    throw v2
.end method

.method public visitFieldUsingCustomHandler(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 7
    .parameter "f"
    .parameter "declaredTypeOfField"
    .parameter "parent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 196
    :try_start_0
    iget-object v6, p0, Lcom/google/gson/JsonSerializationVisitor;->root:Lcom/google/gson/JsonElement;

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v6

    invoke-static {v6}, Lcom/google/gson/Preconditions;->checkState(Z)V

    .line 197
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 198
    .local v2, obj:Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 199
    iget-boolean v5, p0, Lcom/google/gson/JsonSerializationVisitor;->serializeNulls:Z

    if-eqz v5, :cond_0

    .line 200
    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/google/gson/JsonSerializationVisitor;->addChildAsElement(Ljava/lang/reflect/Field;Lcom/google/gson/JsonElement;)V

    .line 210
    :cond_0
    :goto_0
    return v4

    .line 204
    :cond_1
    new-instance v3, Lcom/google/gson/ObjectTypePair;

    const/4 v6, 0x0

    invoke-direct {v3, v2, p2, v6}, Lcom/google/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    .line 205
    .local v3, objTypePair:Lcom/google/gson/ObjectTypePair;
    invoke-direct {p0, v3}, Lcom/google/gson/JsonSerializationVisitor;->findAndInvokeCustomSerializer(Lcom/google/gson/ObjectTypePair;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 206
    .local v0, child:Lcom/google/gson/JsonElement;
    if-eqz v0, :cond_2

    .line 207
    invoke-direct {p0, p1, v0}, Lcom/google/gson/JsonSerializationVisitor;->addChildAsElement(Ljava/lang/reflect/Field;Lcom/google/gson/JsonElement;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/CircularReferenceException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 212
    .end local v0           #child:Lcom/google/gson/JsonElement;
    .end local v2           #obj:Ljava/lang/Object;
    .end local v3           #objTypePair:Lcom/google/gson/ObjectTypePair;
    :catch_0
    move-exception v1

    .line 213
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    .end local v1           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #child:Lcom/google/gson/JsonElement;
    .restart local v2       #obj:Ljava/lang/Object;
    .restart local v3       #objTypePair:Lcom/google/gson/ObjectTypePair;
    :cond_2
    move v4, v5

    .line 210
    goto :goto_0

    .line 214
    .end local v0           #child:Lcom/google/gson/JsonElement;
    .end local v2           #obj:Ljava/lang/Object;
    .end local v3           #objTypePair:Lcom/google/gson/ObjectTypePair;
    :catch_1
    move-exception v1

    .line 215
    .local v1, e:Lcom/google/gson/CircularReferenceException;
    invoke-virtual {v1, p1}, Lcom/google/gson/CircularReferenceException;->createDetailedException(Ljava/lang/reflect/Field;)Ljava/lang/IllegalStateException;

    move-result-object v4

    throw v4
.end method

.method public visitObjectField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 4
    .parameter "f"
    .parameter "typeOfF"
    .parameter "obj"

    .prologue
    .line 104
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/google/gson/JsonSerializationVisitor;->isFieldNull(Ljava/lang/reflect/Field;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    iget-boolean v2, p0, Lcom/google/gson/JsonSerializationVisitor;->serializeNulls:Z

    if-eqz v2, :cond_0

    .line 106
    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/gson/JsonSerializationVisitor;->addChildAsElement(Ljava/lang/reflect/Field;Lcom/google/gson/JsonElement;)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/google/gson/JsonSerializationVisitor;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    .local v1, fieldValue:Ljava/lang/Object;
    new-instance v2, Lcom/google/gson/ObjectTypePair;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p2, v3}, Lcom/google/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-direct {p0, p1, v2}, Lcom/google/gson/JsonSerializationVisitor;->addAsChildOfObject(Ljava/lang/reflect/Field;Lcom/google/gson/ObjectTypePair;)V
    :try_end_0
    .catch Lcom/google/gson/CircularReferenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v1           #fieldValue:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Lcom/google/gson/CircularReferenceException;
    invoke-virtual {v0, p1}, Lcom/google/gson/CircularReferenceException;->createDetailedException(Ljava/lang/reflect/Field;)Ljava/lang/IllegalStateException;

    move-result-object v2

    throw v2
.end method

.method public visitPrimitive(Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 121
    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v0

    .line 122
    .local v0, json:Lcom/google/gson/JsonElement;
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/gson/JsonSerializationVisitor;->assignToRoot(Lcom/google/gson/JsonElement;)V

    .line 123
    return-void

    .line 121
    .end local v0           #json:Lcom/google/gson/JsonElement;
    :cond_0
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public visitUsingCustomHandler(Lcom/google/gson/ObjectTypePair;)Z
    .locals 5
    .parameter "objTypePair"

    .prologue
    const/4 v3, 0x1

    .line 154
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/ObjectTypePair;->getObject()Ljava/lang/Object;

    move-result-object v2

    .line 155
    .local v2, obj:Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 156
    iget-boolean v4, p0, Lcom/google/gson/JsonSerializationVisitor;->serializeNulls:Z

    if-eqz v4, :cond_0

    .line 157
    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/gson/JsonSerializationVisitor;->assignToRoot(Lcom/google/gson/JsonElement;)V

    .line 166
    :cond_0
    :goto_0
    return v3

    .line 161
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/gson/JsonSerializationVisitor;->findAndInvokeCustomSerializer(Lcom/google/gson/ObjectTypePair;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 162
    .local v1, element:Lcom/google/gson/JsonElement;
    if-eqz v1, :cond_2

    .line 163
    invoke-direct {p0, v1}, Lcom/google/gson/JsonSerializationVisitor;->assignToRoot(Lcom/google/gson/JsonElement;)V
    :try_end_0
    .catch Lcom/google/gson/CircularReferenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v1           #element:Lcom/google/gson/JsonElement;
    .end local v2           #obj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Lcom/google/gson/CircularReferenceException;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/gson/CircularReferenceException;->createDetailedException(Ljava/lang/reflect/Field;)Ljava/lang/IllegalStateException;

    move-result-object v3

    throw v3

    .line 166
    .end local v0           #e:Lcom/google/gson/CircularReferenceException;
    .restart local v1       #element:Lcom/google/gson/JsonElement;
    .restart local v2       #obj:Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
