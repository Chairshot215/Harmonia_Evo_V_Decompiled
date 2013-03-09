.class Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;
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
    accessFlags = 0xa
    name = "CollectionTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/gson/JsonSerializer",
        "<",
        "Ljava/util/Collection;",
        ">;",
        "Lcom/htc/gson/JsonDeserializer",
        "<",
        "Ljava/util/Collection;",
        ">;",
        "Lcom/htc/gson/InstanceCreator",
        "<",
        "Ljava/util/Collection;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;-><init>()V

    return-void
.end method

.method private constructCollectionType(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/util/Collection;
    .locals 3
    .parameter "collectionType"
    .parameter "context"

    .prologue
    .line 483
    move-object v0, p2

    check-cast v0, Lcom/htc/gson/JsonDeserializationContextDefault;

    .line 484
    .local v0, contextImpl:Lcom/htc/gson/JsonDeserializationContextDefault;
    invoke-virtual {v0}, Lcom/htc/gson/JsonDeserializationContextDefault;->getObjectConstructor()Lcom/htc/gson/ObjectConstructor;

    move-result-object v1

    .line 485
    .local v1, objectConstructor:Lcom/htc/gson/ObjectConstructor;
    invoke-interface {v1, p1}, Lcom/htc/gson/ObjectConstructor;->construct(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    return-object v2
.end method


# virtual methods
.method public bridge synthetic createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;->createInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .locals 1
    .parameter "type"

    .prologue
    .line 489
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

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
    .line 436
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/util/Collection;
    .locals 7
    .parameter "json"
    .parameter "typeOfT"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 463
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->isJsonNull()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v2, v5

    .line 478
    :cond_0
    return-object v2

    .line 468
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;->constructCollectionType(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/util/Collection;

    move-result-object v2

    .line 469
    .local v2, collection:Ljava/util/Collection;
    new-instance v6, Lcom/htc/gson/TypeInfoCollection;

    invoke-direct {v6, p2}, Lcom/htc/gson/TypeInfoCollection;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v6}, Lcom/htc/gson/TypeInfoCollection;->getElementType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 470
    .local v1, childType:Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonElement;

    .line 471
    .local v0, childElement:Lcom/htc/gson/JsonElement;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->isJsonNull()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 472
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 474
    :cond_3
    invoke-interface {p3, v0, v1}, Lcom/htc/gson/JsonDeserializationContext;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    .line 475
    .local v4, value:Ljava/lang/Object;
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 436
    check-cast p1, Ljava/util/Collection;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;->serialize(Ljava/util/Collection;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/util/Collection;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 7
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "context"

    .prologue
    .line 440
    if-nez p1, :cond_1

    .line 441
    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v0

    .line 458
    :cond_0
    return-object v0

    .line 443
    :cond_1
    new-instance v0, Lcom/htc/gson/JsonArray;

    invoke-direct {v0}, Lcom/htc/gson/JsonArray;-><init>()V

    .line 444
    .local v0, array:Lcom/htc/gson/JsonArray;
    const/4 v2, 0x0

    .line 445
    .local v2, childGenericType:Ljava/lang/reflect/Type;
    instance-of v6, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_2

    .line 446
    new-instance v6, Lcom/htc/gson/TypeInfoCollection;

    invoke-direct {v6, p2}, Lcom/htc/gson/TypeInfoCollection;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v6}, Lcom/htc/gson/TypeInfoCollection;->getElementType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 448
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 449
    .local v1, child:Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 450
    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/gson/JsonArray;->add(Lcom/htc/gson/JsonElement;)V

    goto :goto_0

    .line 452
    :cond_3
    if-eqz v2, :cond_4

    const-class v6, Ljava/lang/Object;

    if-ne v2, v6, :cond_5

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 454
    .local v3, childType:Ljava/lang/reflect/Type;
    :goto_1
    invoke-interface {p3, v1, v3}, Lcom/htc/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/htc/gson/JsonElement;

    move-result-object v4

    .line 455
    .local v4, element:Lcom/htc/gson/JsonElement;
    invoke-virtual {v0, v4}, Lcom/htc/gson/JsonArray;->add(Lcom/htc/gson/JsonElement;)V

    goto :goto_0

    .end local v3           #childType:Ljava/lang/reflect/Type;
    .end local v4           #element:Lcom/htc/gson/JsonElement;
    :cond_5
    move-object v3, v2

    .line 452
    goto :goto_1
.end method
