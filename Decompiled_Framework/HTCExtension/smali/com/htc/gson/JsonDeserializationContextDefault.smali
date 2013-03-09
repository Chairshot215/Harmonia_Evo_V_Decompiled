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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->navigatorFactory:Lcom/htc/gson/ObjectNavigatorFactory;

    iput-object p2, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    iput-object p3, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->objectConstructor:Lcom/htc/gson/MappedObjectConstructor;

    return-void
.end method

.method private fromJsonArray(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 8
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

    new-instance v0, Lcom/htc/gson/JsonArrayDeserializationVisitor;

    iget-object v3, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->navigatorFactory:Lcom/htc/gson/ObjectNavigatorFactory;

    iget-object v4, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->objectConstructor:Lcom/htc/gson/MappedObjectConstructor;

    iget-object v5, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-object v1, p2

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/htc/gson/JsonArrayDeserializationVisitor;-><init>(Lcom/htc/gson/JsonArray;Ljava/lang/reflect/Type;Lcom/htc/gson/ObjectNavigatorFactory;Lcom/htc/gson/ObjectConstructor;Lcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/JsonDeserializationContext;)V

    iget-object v1, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->navigatorFactory:Lcom/htc/gson/ObjectNavigatorFactory;

    new-instance v2, Lcom/htc/gson/ObjectTypePair;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, p1, v4}, Lcom/htc/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v1, v2}, Lcom/htc/gson/ObjectNavigatorFactory;->create(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/ObjectNavigator;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/gson/ObjectNavigator;->accept(Lcom/htc/gson/ObjectNavigator$Visitor;)V

    invoke-virtual {v0}, Lcom/htc/gson/JsonArrayDeserializationVisitor;->getTarget()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private fromJsonObject(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonObject;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 8
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

    new-instance v0, Lcom/htc/gson/JsonObjectDeserializationVisitor;

    iget-object v3, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->navigatorFactory:Lcom/htc/gson/ObjectNavigatorFactory;

    iget-object v4, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->objectConstructor:Lcom/htc/gson/MappedObjectConstructor;

    iget-object v5, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-object v1, p2

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/htc/gson/JsonObjectDeserializationVisitor;-><init>(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/ObjectNavigatorFactory;Lcom/htc/gson/ObjectConstructor;Lcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/JsonDeserializationContext;)V

    iget-object v1, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->navigatorFactory:Lcom/htc/gson/ObjectNavigatorFactory;

    new-instance v2, Lcom/htc/gson/ObjectTypePair;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, p1, v4}, Lcom/htc/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v1, v2}, Lcom/htc/gson/ObjectNavigatorFactory;->create(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/ObjectNavigator;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/gson/ObjectNavigator;->accept(Lcom/htc/gson/ObjectNavigator$Visitor;)V

    invoke-virtual {v0}, Lcom/htc/gson/JsonObjectDeserializationVisitor;->getTarget()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private fromJsonPrimitive(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonPrimitive;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 9
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

    new-instance v0, Lcom/htc/gson/JsonObjectDeserializationVisitor;

    iget-object v3, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->navigatorFactory:Lcom/htc/gson/ObjectNavigatorFactory;

    iget-object v4, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->objectConstructor:Lcom/htc/gson/MappedObjectConstructor;

    iget-object v5, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->deserializers:Lcom/htc/gson/ParameterizedTypeHandlerMap;

    move-object v1, p2

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/htc/gson/JsonObjectDeserializationVisitor;-><init>(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/ObjectNavigatorFactory;Lcom/htc/gson/ObjectConstructor;Lcom/htc/gson/ParameterizedTypeHandlerMap;Lcom/htc/gson/JsonDeserializationContext;)V

    iget-object v1, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->navigatorFactory:Lcom/htc/gson/ObjectNavigatorFactory;

    new-instance v2, Lcom/htc/gson/ObjectTypePair;

    invoke-virtual {p2}, Lcom/htc/gson/JsonPrimitive;->getAsObject()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, p1, v4}, Lcom/htc/gson/ObjectTypePair;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v1, v2}, Lcom/htc/gson/ObjectNavigatorFactory;->create(Lcom/htc/gson/ObjectTypePair;)Lcom/htc/gson/ObjectNavigator;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/gson/ObjectNavigator;->accept(Lcom/htc/gson/ObjectNavigator$Visitor;)V

    invoke-virtual {v0}, Lcom/htc/gson/JsonObjectDeserializationVisitor;->getTarget()Ljava/lang/Object;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
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

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v0

    invoke-direct {p0, p2, v0, p0}, Lcom/htc/gson/JsonDeserializationContextDefault;->fromJsonArray(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonArray;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v0

    invoke-direct {p0, p2, v0, p0}, Lcom/htc/gson/JsonDeserializationContextDefault;->fromJsonObject(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonObject;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsJsonPrimitive()Lcom/htc/gson/JsonPrimitive;

    move-result-object v0

    invoke-direct {p0, p2, v0, p0}, Lcom/htc/gson/JsonDeserializationContextDefault;->fromJsonPrimitive(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonPrimitive;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

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

    iget-object v0, p0, Lcom/htc/gson/JsonDeserializationContextDefault;->objectConstructor:Lcom/htc/gson/MappedObjectConstructor;

    return-object v0
.end method
