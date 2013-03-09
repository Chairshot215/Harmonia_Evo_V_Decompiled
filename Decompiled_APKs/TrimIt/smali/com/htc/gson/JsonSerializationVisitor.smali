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
    .parameter "factory"
    .parameter "serializeNulls"
    .parameter
    .parameter "context"
    .parameter "ancestors"
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

    .prologue
    .line 42
    .local p3, serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<Lcom/htc/gson/JsonSerializer<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/htc/gson/JsonSerializationVisitor;->factory:Lcom/htc/gson/ObjectNavigatorFactory;

    .line 44
    iput-boolean p2, p0, Lcom/htc/gson/JsonSerializationVisitor;->serializeNulls:Z

    .line 45
    iput-object p3, p0, Lcom/htc/gson/JsonSerializationVisitor;->serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    .line 46
    iput-object p4, p0, Lcom/htc/gson/JsonSerializationVisitor;->context:Lcom/htc/gson/JsonSerializationContext;

    .line 47
    iput-object p5, p0, Lcom/htc/gson/JsonSerializationVisitor;->ancestors:Lcom/htc/gson/MemoryRefStack;

    .line 48
    return-void
.end method

.method private addAsArrayElement(Lcom/htc/gson/ObjectTypePair;)V
    .locals 3
    .parameter "elementTypePair"

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/htc/gson/ObjectTypePair;->getObject()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/htc/gson/JsonSerializationVisitor;->root:Lcom/htc/gson/JsonElement;

    invoke-virtual {v1}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v1

    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/gson/JsonArray;->add(Lcom/htc/gson/JsonElement;)V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/gson/JsonSerializationVisitor;->getJsonElementForChild(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 142
    .local v0, childElement:Lcom/htc/gson/JsonElement;
    iget-object v1, p0, Lcom/htc/gson/JsonSerializationVisitor;->root:Lcom/htc/gson/JsonElement;

    invoke-virtual {v1}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/gson/JsonArray;->add(Lcom/htc/gson/JsonElement;)V

    goto :goto_0
.end method

.method private addAsChildOfObject(Ljava/lang/reflect/Field;Lcom/htc/gson/ObjectTypePair;)V
    .locals 1
    .parameter "f"
    .parameter "fieldValuePair"

    .prologue
    .line 128
    invoke-direct {p0, p2}, Lcom/htc/gson/JsonSerializationVisitor;->getJsonElementForChild(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 129
    .local v0, childElement:Lcom/htc/gson/JsonElement;
    invoke-direct {p0, p1, v0}, Lcom/htc/gson/JsonSerializationVisitor;->addChildAsElement(Ljava/lang/reflect/Field;Lcom/htc/gson/JsonElement;)V

    .line 130
    return-void
.end method

.method private addChildAsElement(Ljava/lang/reflect/Field;Lcom/htc/gson/JsonElement;)V
    .locals 3
    .parameter "f"
    .parameter "childElement"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/htc/gson/JsonSerializationVisitor;->factory:Lcom/htc/gson/ObjectNavigatorFactory;

    invoke-virtual {v1}, Lcom/htc/gson/ObjectNavigatorFactory;->getFieldNamingPolicy()Lcom/htc/gson/FieldNamingStrategy;

    move-result-object v0

    .line 134
    .local v0, namingPolicy:Lcom/htc/gson/FieldNamingStrategy;
    iget-object v1, p0, Lcom/htc/gson/JsonSerializationVisitor;->root:Lcom/htc/gson/JsonElement;

    invoke-virtual {v1}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v1

    invoke-interface {v0, p1}, Lcom/htc/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/htc/gson/JsonObject;->add(Ljava/lang/String;Lcom/htc/gson/JsonElement;)V

    .line 135
    return-void
.end method

.method private assignToRoot(Lcom/htc/gson/JsonElement;)V
    .locals 0
    .parameter "newRoot"

    .prologue
    .line 222
    invoke-static {p1}, Lcom/htc/gson/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 223
    iput-object p1, p0, Lcom/htc/gson/JsonSerializationVisitor;->root:Lcom/htc/gson/JsonElement;

    .line 224
    return-void
.end method

.method private findAndInvokeCustomSerializer(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/JsonElement;
    .locals 6
    .parameter "objTypePair"

    .prologue
    .line 180
    iget-object v3, p0, Lcom/htc/gson/JsonSerializationVisitor;->serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {p1, v3}, Lcom/htc/gson/ObjectTypePair;->getMatchingHandler(Lcom/htc/gson/ParameterizedTypeHandlerMap;)Lcom/htc/gson/Pair;

    move-result-object v1

    .line 181
    .local v1, pair:Lcom/htc/gson/Pair;,"Lcom/htc/gson/Pair<Lcom/htc/gson/JsonSerializer<*>;Lcom/htc/gson/ObjectTypePair;>;"
    if-nez v1, :cond_0

    .line 182
    const/4 v0, 0x0

    .line 192
    :goto_0
    return-object v0

    .line 184
    :cond_0
    invoke-virtual {v1}, Lcom/htc/gson/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/gson/JsonSerializer;

    .line 185
    .local v2, serializer:Lcom/htc/gson/JsonSerializer;
    invoke-virtual {v1}, Lcom/htc/gson/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/htc/gson/ObjectTypePair;

    .line 186
    .restart local p1
    invoke-virtual {p0, p1}, Lcom/htc/gson/JsonSerializationVisitor;->start(Lcom/htc/gson/ObjectTypePair;)V

    .line 188
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/gson/ObjectTypePair;->getObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/gson/ObjectTypePair;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/gson/JsonSerializationVisitor;->context:Lcom/htc/gson/JsonSerializationContext;

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 190
    .local v0, element:Lcom/htc/gson/JsonElement;
    if-nez v0, :cond_1

    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 192
    .end local v0           #element:Lcom/htc/gson/JsonElement;
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
    .parameter "f"
    .parameter "obj"

    .prologue
    .line 232
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getJsonElementForChild(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/JsonElement;
    .locals 7
    .parameter "fieldValueTypePair"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/htc/gson/JsonSerializationVisitor;->factory:Lcom/htc/gson/ObjectNavigatorFactory;

    invoke-virtual {v1, p1}, Lcom/htc/gson/ObjectNavigatorFactory;->create(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/ObjectNavigator;

    move-result-object v6

    .line 148
    .local v6, on:Lcom/htc/gson/ObjectNavigator;
    new-instance v0, Lcom/htc/gson/JsonSerializationVisitor;

    iget-object v1, p0, Lcom/htc/gson/JsonSerializationVisitor;->factory:Lcom/htc/gson/ObjectNavigatorFactory;

    iget-boolean v2, p0, Lcom/htc/gson/JsonSerializationVisitor;->serializeNulls:Z

    iget-object v3, p0, Lcom/htc/gson/JsonSerializationVisitor;->serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    iget-object v4, p0, Lcom/htc/gson/JsonSerializationVisitor;->context:Lcom/htc/gson/JsonSerializationContext;

    iget-object v5, p0, Lcom/htc/gson/JsonSerializationVisitor;->ancestors:Lcom/htc/gson/MemoryRefStack;

    invoke-direct/range {v0 .. v5}, Lcom/htc/gson/JsonSerializationVisitor;-><init>(Lcom/htc/gson/ObjectNavigatorFactory;ZLcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/JsonSerializationContext;Lcom/htc/gson/MemoryRefStack;)V

    .line 150
    .local v0, childVisitor:Lcom/htc/gson/JsonSerializationVisitor;
    invoke-virtual {v6, v0}, Lcom/htc/gson/ObjectNavigator;->accept(Lcom/htc/gson/ObjectNavigator$Visitor;)V

    .line 151
    invoke-virtual {v0}, Lcom/htc/gson/JsonSerializationVisitor;->getJsonElement()Lcom/htc/gson/JsonElement;

    move-result-object v1

    return-object v1
.end method

.method private isFieldNull(Ljava/lang/reflect/Field;Ljava/lang/Object;)Z
    .locals 1
    .parameter "f"
    .parameter "obj"

    .prologue
    .line 227
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
    .parameter "node"

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/htc/gson/JsonSerializationVisitor;->ancestors:Lcom/htc/gson/MemoryRefStack;

    invoke-virtual {v0}, Lcom/htc/gson/MemoryRefStack;->pop()Lcom/htc/gson/ObjectTypePair;

    .line 68
    :cond_0
    return-void
.end method

.method public getJsonElement()Lcom/htc/gson/JsonElement;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/gson/JsonSerializationVisitor;->root:Lcom/htc/gson/JsonElement;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public start(Lcom/htc/gson/ObjectTypePair;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/htc/gson/JsonSerializationVisitor;->ancestors:Lcom/htc/gson/MemoryRefStack;

    invoke-virtual {v0, p1}, Lcom/htc/gson/MemoryRefStack;->contains(Lcom/htc/gson/ObjectTypePair;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    new-instance v0, Lcom/htc/gson/CircularReferenceException;

    invoke-direct {v0, p1}, Lcom/htc/gson/CircularReferenceException;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/htc/gson/JsonSerializationVisitor;->ancestors:Lcom/htc/gson/MemoryRefStack;

    invoke-virtual {v0, p1}, Lcom/htc/gson/MemoryRefStack;->push(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/ObjectTypePair;

    goto :goto_0
.end method

.method public startVisitingObject(Ljava/lang/Object;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 71
    new-instance v0, Lcom/htc/gson/JsonObject;

    invoke-direct {v0}, Lcom/htc/gson/JsonObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/htc/gson/JsonSerializationVisitor;->assignToRoot(Lcom/htc/gson/JsonElement;)V

    .line 72
    return-void
.end method

.method public visitArray(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 8
    .parameter "array"
    .parameter "arrayType"

    .prologue
    .line 75
    new-instance v6, Lcom/htc/gson/JsonArray;

    invoke-direct {v6}, Lcom/htc/gson/JsonArray;-><init>()V

    invoke-direct {p0, v6}, Lcom/htc/gson/JsonSerializationVisitor;->assignToRoot(Lcom/htc/gson/JsonElement;)V

    .line 76
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    .line 77
    .local v5, length:I
    invoke-static {p2}, Lcom/htc/gson/TypeInfoFactory;->getTypeInfoForArray(Ljava/lang/reflect/Type;)Lcom/htc/gson/TypeInfoArray;

    move-result-object v3

    .line 78
    .local v3, fieldTypeInfo:Lcom/htc/gson/TypeInfoArray;
    invoke-virtual {v3}, Lcom/htc/gson/TypeInfoArray;->getSecondLevelType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 79
    .local v2, componentType:Ljava/lang/reflect/Type;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 80
    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 81
    .local v0, child:Ljava/lang/Object;
    move-object v1, v2

    .line 85
    .local v1, childType:Ljava/lang/reflect/Type;
    new-instance v6, Lcom/htc/gson/ObjectTypePair;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v1, v7}, Lcom/htc/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-direct {p0, v6}, Lcom/htc/gson/JsonSerializationVisitor;->addAsArrayElement(Lcom/htc/gson/ObjectTypePair;)V

    .line 79
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
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
    .line 91
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/htc/gson/JsonSerializationVisitor;->isFieldNull(Ljava/lang/reflect/Field;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    iget-boolean v2, p0, Lcom/htc/gson/JsonSerializationVisitor;->serializeNulls:Z

    if-eqz v2, :cond_0

    .line 93
    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/htc/gson/JsonSerializationVisitor;->addChildAsElement(Ljava/lang/reflect/Field;Lcom/htc/gson/JsonElement;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/htc/gson/JsonSerializationVisitor;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, array:Ljava/lang/Object;
    new-instance v2, Lcom/htc/gson/ObjectTypePair;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p2, v3}, Lcom/htc/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-direct {p0, p1, v2}, Lcom/htc/gson/JsonSerializationVisitor;->addAsChildOfObject(Ljava/lang/reflect/Field;Lcom/htc/gson/ObjectTypePair;)V
    :try_end_0
    .catch Lcom/htc/gson/CircularReferenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v0           #array:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 100
    .local v1, e:Lcom/htc/gson/CircularReferenceException;
    invoke-virtual {v1, p1}, Lcom/htc/gson/CircularReferenceException;->createDetailedException(Ljava/lang/reflect/Field;)Ljava/lang/IllegalStateException;

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

    .line 198
    :try_start_0
    iget-object v6, p0, Lcom/htc/gson/JsonSerializationVisitor;->root:Lcom/htc/gson/JsonElement;

    invoke-virtual {v6}, Lcom/htc/gson/JsonElement;->isJsonObject()Z

    move-result v6

    invoke-static {v6}, Lcom/htc/gson/Preconditions;->checkState(Z)V

    .line 199
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 200
    .local v2, obj:Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 201
    iget-boolean v5, p0, Lcom/htc/gson/JsonSerializationVisitor;->serializeNulls:Z

    if-eqz v5, :cond_0

    .line 202
    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/htc/gson/JsonSerializationVisitor;->addChildAsElement(Ljava/lang/reflect/Field;Lcom/htc/gson/JsonElement;)V

    .line 212
    :cond_0
    :goto_0
    return v4

    .line 206
    :cond_1
    new-instance v3, Lcom/htc/gson/ObjectTypePair;

    const/4 v6, 0x0

    invoke-direct {v3, v2, p2, v6}, Lcom/htc/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    .line 207
    .local v3, objTypePair:Lcom/htc/gson/ObjectTypePair;
    invoke-direct {p0, v3}, Lcom/htc/gson/JsonSerializationVisitor;->findAndInvokeCustomSerializer(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 208
    .local v0, child:Lcom/htc/gson/JsonElement;
    if-eqz v0, :cond_2

    .line 209
    invoke-direct {p0, p1, v0}, Lcom/htc/gson/JsonSerializationVisitor;->addChildAsElement(Ljava/lang/reflect/Field;Lcom/htc/gson/JsonElement;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/htc/gson/CircularReferenceException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 214
    .end local v0           #child:Lcom/htc/gson/JsonElement;
    .end local v2           #obj:Ljava/lang/Object;
    .end local v3           #objTypePair:Lcom/htc/gson/ObjectTypePair;
    :catch_0
    move-exception v1

    .line 215
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    .end local v1           #e:Ljava/lang/IllegalAccessException;
    .restart local v0       #child:Lcom/htc/gson/JsonElement;
    .restart local v2       #obj:Ljava/lang/Object;
    .restart local v3       #objTypePair:Lcom/htc/gson/ObjectTypePair;
    :cond_2
    move v4, v5

    .line 212
    goto :goto_0

    .line 216
    .end local v0           #child:Lcom/htc/gson/JsonElement;
    .end local v2           #obj:Ljava/lang/Object;
    .end local v3           #objTypePair:Lcom/htc/gson/ObjectTypePair;
    :catch_1
    move-exception v1

    .line 217
    .local v1, e:Lcom/htc/gson/CircularReferenceException;
    invoke-virtual {v1, p1}, Lcom/htc/gson/CircularReferenceException;->createDetailedException(Ljava/lang/reflect/Field;)Ljava/lang/IllegalStateException;

    move-result-object v4

    throw v4
.end method

.method public visitObjectField(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 4
    .parameter "f"
    .parameter "typeOfF"
    .parameter "obj"

    .prologue
    .line 106
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/htc/gson/JsonSerializationVisitor;->isFieldNull(Ljava/lang/reflect/Field;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    iget-boolean v2, p0, Lcom/htc/gson/JsonSerializationVisitor;->serializeNulls:Z

    if-eqz v2, :cond_0

    .line 108
    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/htc/gson/JsonSerializationVisitor;->addChildAsElement(Ljava/lang/reflect/Field;Lcom/htc/gson/JsonElement;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/htc/gson/JsonSerializationVisitor;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 115
    .local v1, fieldValue:Ljava/lang/Object;
    new-instance v2, Lcom/htc/gson/ObjectTypePair;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p2, v3}, Lcom/htc/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-direct {p0, p1, v2}, Lcom/htc/gson/JsonSerializationVisitor;->addAsChildOfObject(Ljava/lang/reflect/Field;Lcom/htc/gson/ObjectTypePair;)V
    :try_end_0
    .catch Lcom/htc/gson/CircularReferenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v1           #fieldValue:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Lcom/htc/gson/CircularReferenceException;
    invoke-virtual {v0, p1}, Lcom/htc/gson/CircularReferenceException;->createDetailedException(Ljava/lang/reflect/Field;)Ljava/lang/IllegalStateException;

    move-result-object v2

    throw v2
.end method

.method public visitPrimitive(Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 123
    if-nez p1, :cond_0

    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v0

    .line 124
    .local v0, json:Lcom/htc/gson/JsonElement;
    :goto_0
    invoke-direct {p0, v0}, Lcom/htc/gson/JsonSerializationVisitor;->assignToRoot(Lcom/htc/gson/JsonElement;)V

    .line 125
    return-void

    .line 123
    .end local v0           #json:Lcom/htc/gson/JsonElement;
    :cond_0
    new-instance v0, Lcom/htc/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/htc/gson/JsonPrimitive;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public visitUsingCustomHandler(Lcom/htc/gson/ObjectTypePair;)Z
    .locals 5
    .parameter "objTypePair"

    .prologue
    const/4 v3, 0x1

    .line 156
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/gson/ObjectTypePair;->getObject()Ljava/lang/Object;

    move-result-object v2

    .line 157
    .local v2, obj:Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 158
    iget-boolean v4, p0, Lcom/htc/gson/JsonSerializationVisitor;->serializeNulls:Z

    if-eqz v4, :cond_0

    .line 159
    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/gson/JsonSerializationVisitor;->assignToRoot(Lcom/htc/gson/JsonElement;)V

    .line 168
    :cond_0
    :goto_0
    return v3

    .line 163
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/gson/JsonSerializationVisitor;->findAndInvokeCustomSerializer(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/JsonElement;

    move-result-object v1

    .line 164
    .local v1, element:Lcom/htc/gson/JsonElement;
    if-eqz v1, :cond_2

    .line 165
    invoke-direct {p0, v1}, Lcom/htc/gson/JsonSerializationVisitor;->assignToRoot(Lcom/htc/gson/JsonElement;)V
    :try_end_0
    .catch Lcom/htc/gson/CircularReferenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    .end local v1           #element:Lcom/htc/gson/JsonElement;
    .end local v2           #obj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Lcom/htc/gson/CircularReferenceException;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/htc/gson/CircularReferenceException;->createDetailedException(Ljava/lang/reflect/Field;)Ljava/lang/IllegalStateException;

    move-result-object v3

    throw v3

    .line 168
    .end local v0           #e:Lcom/htc/gson/CircularReferenceException;
    .restart local v1       #element:Lcom/htc/gson/JsonElement;
    .restart local v2       #obj:Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
