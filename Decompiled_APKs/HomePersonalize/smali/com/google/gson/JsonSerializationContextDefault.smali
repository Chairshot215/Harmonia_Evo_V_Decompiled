.class final Lcom/google/gson/JsonSerializationContextDefault;
.super Ljava/lang/Object;
.source "JsonSerializationContextDefault.java"

# interfaces
.implements Lcom/google/gson/JsonSerializationContext;


# instance fields
.field private final ancestors:Lcom/google/gson/MemoryRefStack;

.field private final factory:Lcom/google/gson/ObjectNavigatorFactory;

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
.method constructor <init>(Lcom/google/gson/ObjectNavigatorFactory;ZLcom/google/gson/ParameterizedTypeHandlerMap;)V
    .locals 1
    .parameter "factory"
    .parameter "serializeNulls"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/ObjectNavigatorFactory;",
            "Z",
            "Lcom/google/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/google/gson/JsonSerializer",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;,"Lcom/google/gson/ParameterizedTypeHandlerMap<Lcom/google/gson/JsonSerializer<*>;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/gson/JsonSerializationContextDefault;->factory:Lcom/google/gson/ObjectNavigatorFactory;

    .line 36
    iput-boolean p2, p0, Lcom/google/gson/JsonSerializationContextDefault;->serializeNulls:Z

    .line 37
    iput-object p3, p0, Lcom/google/gson/JsonSerializationContextDefault;->serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 38
    new-instance v0, Lcom/google/gson/MemoryRefStack;

    invoke-direct {v0}, Lcom/google/gson/MemoryRefStack;-><init>()V

    iput-object v0, p0, Lcom/google/gson/JsonSerializationContextDefault;->ancestors:Lcom/google/gson/MemoryRefStack;

    .line 39
    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
    .locals 2
    .parameter "src"

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    invoke-static {}, Lcom/google/gson/JsonNull;->createJsonNull()Lcom/google/gson/JsonNull;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/gson/JsonSerializationContextDefault;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)Lcom/google/gson/JsonElement;

    move-result-object v0

    goto :goto_0
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/gson/JsonElement;
    .locals 1
    .parameter "src"
    .parameter "typeOfSrc"

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gson/JsonSerializationContextDefault;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)Lcom/google/gson/JsonElement;
    .locals 7
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "preserveType"

    .prologue
    .line 53
    iget-object v1, p0, Lcom/google/gson/JsonSerializationContextDefault;->factory:Lcom/google/gson/ObjectNavigatorFactory;

    new-instance v2, Lcom/google/gson/ObjectTypePair;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v1, v2}, Lcom/google/gson/ObjectNavigatorFactory;->create(Lcom/google/gson/ObjectTypePair;)Lcom/google/gson/ObjectNavigator;

    move-result-object v6

    .line 54
    .local v6, on:Lcom/google/gson/ObjectNavigator;
    new-instance v0, Lcom/google/gson/JsonSerializationVisitor;

    iget-object v1, p0, Lcom/google/gson/JsonSerializationContextDefault;->factory:Lcom/google/gson/ObjectNavigatorFactory;

    iget-boolean v2, p0, Lcom/google/gson/JsonSerializationContextDefault;->serializeNulls:Z

    iget-object v3, p0, Lcom/google/gson/JsonSerializationContextDefault;->serializers:Lcom/google/gson/ParameterizedTypeHandlerMap;

    iget-object v5, p0, Lcom/google/gson/JsonSerializationContextDefault;->ancestors:Lcom/google/gson/MemoryRefStack;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/gson/JsonSerializationVisitor;-><init>(Lcom/google/gson/ObjectNavigatorFactory;ZLcom/google/gson/ParameterizedTypeHandlerMap;Lcom/google/gson/JsonSerializationContext;Lcom/google/gson/MemoryRefStack;)V

    .line 56
    .local v0, visitor:Lcom/google/gson/JsonSerializationVisitor;
    invoke-virtual {v6, v0}, Lcom/google/gson/ObjectNavigator;->accept(Lcom/google/gson/ObjectNavigator$Visitor;)V

    .line 57
    invoke-virtual {v0}, Lcom/google/gson/JsonSerializationVisitor;->getJsonElement()Lcom/google/gson/JsonElement;

    move-result-object v1

    return-object v1
.end method
