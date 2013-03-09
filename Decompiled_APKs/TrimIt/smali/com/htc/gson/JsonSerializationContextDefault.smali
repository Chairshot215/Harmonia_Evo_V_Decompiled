.class final Lcom/htc/gson/JsonSerializationContextDefault;
.super Ljava/lang/Object;
.source "JsonSerializationContextDefault.java"

# interfaces
.implements Lcom/htc/gson/JsonSerializationContext;


# instance fields
.field private final ancestors:Lcom/htc/gson/MemoryRefStack;

.field private final factory:Lcom/htc/gson/ObjectNavigatorFactory;

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
.method constructor <init>(Lcom/htc/gson/ObjectNavigatorFactory;ZLcom/htc/gson/ParameterizedTypeHandlerMap;)V
    .locals 1
    .parameter "factory"
    .parameter "serializeNulls"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/gson/ObjectNavigatorFactory;",
            "Z",
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonSerializer",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p3, serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<Lcom/htc/gson/JsonSerializer<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/htc/gson/JsonSerializationContextDefault;->factory:Lcom/htc/gson/ObjectNavigatorFactory;

    .line 38
    iput-boolean p2, p0, Lcom/htc/gson/JsonSerializationContextDefault;->serializeNulls:Z

    .line 39
    iput-object p3, p0, Lcom/htc/gson/JsonSerializationContextDefault;->serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    .line 40
    new-instance v0, Lcom/htc/gson/MemoryRefStack;

    invoke-direct {v0}, Lcom/htc/gson/MemoryRefStack;-><init>()V

    iput-object v0, p0, Lcom/htc/gson/JsonSerializationContextDefault;->ancestors:Lcom/htc/gson/MemoryRefStack;

    .line 41
    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;)Lcom/htc/gson/JsonElement;
    .locals 2
    .parameter "src"

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/gson/JsonSerializationContextDefault;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)Lcom/htc/gson/JsonElement;

    move-result-object v0

    goto :goto_0
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/htc/gson/JsonElement;
    .locals 1
    .parameter "src"
    .parameter "typeOfSrc"

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/gson/JsonSerializationContextDefault;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)Lcom/htc/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)Lcom/htc/gson/JsonElement;
    .locals 7
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "preserveType"

    .prologue
    .line 55
    iget-object v1, p0, Lcom/htc/gson/JsonSerializationContextDefault;->factory:Lcom/htc/gson/ObjectNavigatorFactory;

    new-instance v2, Lcom/htc/gson/ObjectTypePair;

    invoke-direct {v2, p1, p2, p3}, Lcom/htc/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v1, v2}, Lcom/htc/gson/ObjectNavigatorFactory;->create(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/ObjectNavigator;

    move-result-object v6

    .line 56
    .local v6, on:Lcom/htc/gson/ObjectNavigator;
    new-instance v0, Lcom/htc/gson/JsonSerializationVisitor;

    iget-object v1, p0, Lcom/htc/gson/JsonSerializationContextDefault;->factory:Lcom/htc/gson/ObjectNavigatorFactory;

    iget-boolean v2, p0, Lcom/htc/gson/JsonSerializationContextDefault;->serializeNulls:Z

    iget-object v3, p0, Lcom/htc/gson/JsonSerializationContextDefault;->serializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    iget-object v5, p0, Lcom/htc/gson/JsonSerializationContextDefault;->ancestors:Lcom/htc/gson/MemoryRefStack;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/gson/JsonSerializationVisitor;-><init>(Lcom/htc/gson/ObjectNavigatorFactory;ZLcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/JsonSerializationContext;Lcom/htc/gson/MemoryRefStack;)V

    .line 58
    .local v0, visitor:Lcom/htc/gson/JsonSerializationVisitor;
    invoke-virtual {v6, v0}, Lcom/htc/gson/ObjectNavigator;->accept(Lcom/htc/gson/ObjectNavigator$Visitor;)V

    .line 59
    invoke-virtual {v0}, Lcom/htc/gson/JsonSerializationVisitor;->getJsonElement()Lcom/htc/gson/JsonElement;

    move-result-object v1

    return-object v1
.end method
