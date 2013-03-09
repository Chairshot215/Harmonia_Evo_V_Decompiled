.class Lcom/htc/gson/DefaultTypeAdapters$MapTypeAdapter;
.super Ljava/lang/Object;
.source "DefaultTypeAdapters.java"

# interfaces
.implements Lcom/htc/gson/JsonSerializer;
.implements Lcom/htc/gson/JsonDeserializer;
.implements Lcom/htc/gson/InstanceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/gson/DefaultTypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MapTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/gson/JsonSerializer",
        "<",
        "Ljava/util/Map;",
        ">;",
        "Lcom/htc/gson/JsonDeserializer",
        "<",
        "Ljava/util/Map;",
        ">;",
        "Lcom/htc/gson/InstanceCreator",
        "<",
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructMapType(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/util/Map;
    .locals 3
    .parameter "mapType"
    .parameter "context"

    .prologue
    .line 541
    move-object v0, p2

    check-cast v0, Lcom/htc/gson/JsonDeserializationContextDefault;

    .line 542
    .local v0, contextImpl:Lcom/htc/gson/JsonDeserializationContextDefault;
    invoke-virtual {v0}, Lcom/htc/gson/JsonDeserializationContextDefault;->getObjectConstructor()Lcom/htc/gson/ObjectConstructor;

    move-result-object v1

    .line 543
    .local v1, objectConstructor:Lcom/htc/gson/ObjectConstructor;
    invoke-interface {v1, p1}, Lcom/htc/gson/ObjectConstructor;->construct(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    return-object v2
.end method


# virtual methods
.method public bridge synthetic createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 499
    invoke-virtual {p0, p1}, Lcom/htc/gson/DefaultTypeAdapters$MapTypeAdapter;->createInstance(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 1
    .parameter "type"

    .prologue
    .line 547
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public bridge synthetic deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/gson/DefaultTypeAdapters$MapTypeAdapter;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/util/Map;
    .locals 8
    .parameter "json"
    .parameter "typeOfT"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-direct {p0, p2, p3}, Lcom/htc/gson/DefaultTypeAdapters$MapTypeAdapter;->constructMapType(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/util/Map;

    move-result-object v3

    .line 531
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v4, Lcom/htc/gson/TypeInfoMap;

    invoke-direct {v4, p2}, Lcom/htc/gson/TypeInfoMap;-><init>(Ljava/lang/reflect/Type;)V

    .line 532
    .local v4, mapTypeInfo:Lcom/htc/gson/TypeInfoMap;
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsJsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 533
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/gson/JsonElement;>;"
    new-instance v7, Lcom/htc/gson/JsonPrimitive;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v7, v6}, Lcom/htc/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/htc/gson/TypeInfoMap;->getKeyType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-interface {p3, v7, v6}, Lcom/htc/gson/JsonDeserializationContext;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 534
    .local v2, key:Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/gson/JsonElement;

    invoke-virtual {v4}, Lcom/htc/gson/TypeInfoMap;->getValueType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-interface {p3, v6, v7}, Lcom/htc/gson/JsonDeserializationContext;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    .line 535
    .local v5, value:Ljava/lang/Object;
    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 537
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/gson/JsonElement;>;"
    .end local v2           #key:Ljava/lang/Object;
    .end local v5           #value:Ljava/lang/Object;
    :cond_0
    return-object v3
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 499
    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/gson/DefaultTypeAdapters$MapTypeAdapter;->serialize(Ljava/util/Map;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/util/Map;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 8
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "context"

    .prologue
    .line 504
    new-instance v4, Lcom/htc/gson/JsonObject;

    invoke-direct {v4}, Lcom/htc/gson/JsonObject;-><init>()V

    .line 505
    .local v4, map:Lcom/htc/gson/JsonObject;
    const/4 v0, 0x0

    .line 506
    .local v0, childGenericType:Ljava/lang/reflect/Type;
    instance-of v7, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_0

    .line 507
    new-instance v7, Lcom/htc/gson/TypeInfoMap;

    invoke-direct {v7, p2}, Lcom/htc/gson/TypeInfoMap;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v7}, Lcom/htc/gson/TypeInfoMap;->getValueType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 510
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 511
    .local v2, entry:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 514
    .local v5, value:Ljava/lang/Object;
    if-nez v5, :cond_1

    .line 515
    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v6

    .line 521
    .local v6, valueElement:Lcom/htc/gson/JsonElement;
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Lcom/htc/gson/JsonObject;->add(Ljava/lang/String;Lcom/htc/gson/JsonElement;)V

    goto :goto_0

    .line 517
    .end local v6           #valueElement:Lcom/htc/gson/JsonElement;
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 519
    .local v1, childType:Ljava/lang/reflect/Type;
    :goto_2
    invoke-interface {p3, v5, v1}, Lcom/htc/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/htc/gson/JsonElement;

    move-result-object v6

    .restart local v6       #valueElement:Lcom/htc/gson/JsonElement;
    goto :goto_1

    .end local v1           #childType:Ljava/lang/reflect/Type;
    .end local v6           #valueElement:Lcom/htc/gson/JsonElement;
    :cond_2
    move-object v1, v0

    .line 517
    goto :goto_2

    .line 523
    .end local v2           #entry:Ljava/util/Map$Entry;
    .end local v5           #value:Ljava/lang/Object;
    :cond_3
    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    const-class v0, Lcom/htc/gson/DefaultTypeAdapters$MapTypeAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
