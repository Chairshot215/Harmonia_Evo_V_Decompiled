.class final Lcom/htc/gson/JsonDeserializationContextDefault;
.super Ljava/lang/Object;
.source "JsonDeserializationContextDefault.java"

# interfaces
.implements Lcom/htc/gson/JsonDeserializationContext;


# instance fields
.field private final deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final navigatorFactory:Lcom/htc/gson/ObjectNavigatorFactory;

.field private final objectConstructor:Lcom/htc/gson/MappedObjectConstructor;


# direct methods
.method constructor <init>(Lcom/htc/gson/ObjectNavigatorFactory;Lcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/MappedObjectConstructor;)V
    .locals 0
    .parameter "navigatorFactory"
    .parameter
    .parameter "objectConstructor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/gson/ObjectNavigatorFactory;",
            "Lcom/htc/gson/ParameterizedTypeHandlerMap",
            "<",
            "Lcom/htc/gson/JsonDeserializer",
            "<*>;>;",
            "Lcom/htc/gson/MappedObjectConstructor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;,"Lcom/htc/gson/ParameterizedTypeHandlerMap<Lcom/htc/gson/JsonDeserializer<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->navigatorFactory:Lcom/htc/gson/ObjectNavigatorFactory;

    .line 38
    iput-object p2, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    .line 39
    iput-object p3, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->objectConstructor:Lcom/htc/gson/MappedObjectConstructor;

    .line 40
    return-void
.end method

.method private fromJsonArray(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 8
    .parameter "arrayType"
    .parameter "jsonArray"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/htc/gson/JsonArray;",
            "Lcom/htc/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/htc/gson/JsonArrayDeserializationVisitor;

    iget-object v3, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->navigatorFactory:Lcom/htc/gson/ObjectNavigatorFactory;

    iget-object v4, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->objectConstructor:Lcom/htc/gson/MappedObjectConstructor;

    iget-object v5, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-object v1, p2

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/htc/gson/JsonArrayDeserializationVisitor;-><init>(Lcom/htc/gson/JsonArray;Ljava/lang/reflect/Type;Lcom/htc/gson/ObjectNavigatorFactory;Lcom/htc/gson/ObjectConstructor;Lcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/JsonDeserializationContext;)V

    .line 65
    .local v0, visitor:Lcom/htc/gson/JsonArrayDeserializationVisitor;,"Lcom/htc/gson/JsonArrayDeserializationVisitor<TT;>;"
    iget-object v1, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->navigatorFactory:Lcom/htc/gson/ObjectNavigatorFactory;

    new-instance v2, Lcom/htc/gson/ObjectTypePair;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, p1, v4}, Lcom/htc/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v1, v2}, Lcom/htc/gson/ObjectNavigatorFactory;->create(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/ObjectNavigator;

    move-result-object v7

    .line 66
    .local v7, on:Lcom/htc/gson/ObjectNavigator;
    invoke-virtual {v7, v0}, Lcom/htc/gson/ObjectNavigator;->accept(Lcom/htc/gson/ObjectNavigator$Visitor;)V

    .line 67
    invoke-virtual {v0}, Lcom/htc/gson/JsonArrayDeserializationVisitor;->getTarget()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private fromJsonObject(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonObject;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 8
    .parameter "typeOfT"
    .parameter "jsonObject"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/htc/gson/JsonObject;",
            "Lcom/htc/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/htc/gson/JsonObjectDeserializationVisitor;

    iget-object v3, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->navigatorFactory:Lcom/htc/gson/ObjectNavigatorFactory;

    iget-object v4, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->objectConstructor:Lcom/htc/gson/MappedObjectConstructor;

    iget-object v5, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-object v1, p2

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/htc/gson/JsonObjectDeserializationVisitor;-><init>(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/ObjectNavigatorFactory;Lcom/htc/gson/ObjectConstructor;Lcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/JsonDeserializationContext;)V

    .line 74
    .local v0, visitor:Lcom/htc/gson/JsonObjectDeserializationVisitor;,"Lcom/htc/gson/JsonObjectDeserializationVisitor<TT;>;"
    iget-object v1, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->navigatorFactory:Lcom/htc/gson/ObjectNavigatorFactory;

    new-instance v2, Lcom/htc/gson/ObjectTypePair;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, p1, v4}, Lcom/htc/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v1, v2}, Lcom/htc/gson/ObjectNavigatorFactory;->create(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/ObjectNavigator;

    move-result-object v7

    .line 75
    .local v7, on:Lcom/htc/gson/ObjectNavigator;
    invoke-virtual {v7, v0}, Lcom/htc/gson/ObjectNavigator;->accept(Lcom/htc/gson/ObjectNavigator$Visitor;)V

    .line 76
    invoke-virtual {v0}, Lcom/htc/gson/JsonObjectDeserializationVisitor;->getTarget()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private fromJsonPrimitive(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonPrimitive;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 9
    .parameter "typeOfT"
    .parameter "json"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lcom/htc/gson/JsonPrimitive;",
            "Lcom/htc/gson/JsonDeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/htc/gson/JsonObjectDeserializationVisitor;

    iget-object v3, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->navigatorFactory:Lcom/htc/gson/ObjectNavigatorFactory;

    iget-object v4, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->objectConstructor:Lcom/htc/gson/MappedObjectConstructor;

    iget-object v5, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-object v1, p2

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/htc/gson/JsonObjectDeserializationVisitor;-><init>(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/ObjectNavigatorFactory;Lcom/htc/gson/ObjectConstructor;Lcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/JsonDeserializationContext;)V

    .line 84
    .local v0, visitor:Lcom/htc/gson/JsonObjectDeserializationVisitor;,"Lcom/htc/gson/JsonObjectDeserializationVisitor<TT;>;"
    iget-object v1, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->navigatorFactory:Lcom/htc/gson/ObjectNavigatorFactory;

    new-instance v2, Lcom/htc/gson/ObjectTypePair;

    invoke-virtual {p2}, Lcom/htc/gson/JsonPrimitive;->getAsObject()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, p1, v4}, Lcom/htc/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v1, v2}, Lcom/htc/gson/ObjectNavigatorFactory;->create(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/ObjectNavigator;

    move-result-object v7

    .line 86
    .local v7, on:Lcom/htc/gson/ObjectNavigator;
    invoke-virtual {v7, v0}, Lcom/htc/gson/ObjectNavigator;->accept(Lcom/htc/gson/ObjectNavigator$Visitor;)V

    .line 87
    invoke-virtual {v0}, Lcom/htc/gson/JsonObjectDeserializationVisitor;->getTarget()Ljava/lang/Object;

    move-result-object v8

    .line 88
    .local v8, target:Ljava/lang/Object;
    return-object v8
.end method


# virtual methods
.method public deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .parameter "json"
    .parameter "typeOfT"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/htc/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 48
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    .line 50
    :cond_1
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v0

    invoke-direct {p0, p2, v0, p0}, Lcom/htc/gson/JsonDeserializationContextDefault;->fromJsonArray(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v0

    invoke-direct {p0, p2, v0, p0}, Lcom/htc/gson/JsonDeserializationContextDefault;->fromJsonObject(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonObject;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsJsonPrimitive()Lcom/htc/gson/JsonPrimitive;

    move-result-object v0

    invoke-direct {p0, p2, v0, p0}, Lcom/htc/gson/JsonDeserializationContextDefault;->fromJsonPrimitive(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonPrimitive;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_4
    new-instance v0, Lcom/htc/gson/JsonParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed parsing JSON source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to Json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getObjectConstructor()Lcom/htc/gson/ObjectConstructor;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->objectConstructor:Lcom/htc/gson/MappedObjectConstructor;

    return-object v0
.end method
