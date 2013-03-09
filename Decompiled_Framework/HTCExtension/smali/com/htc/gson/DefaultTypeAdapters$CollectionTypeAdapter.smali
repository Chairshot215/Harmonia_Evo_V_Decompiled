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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/gson/DefaultTypeAdapters$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;-><init>()V

    return-void
.end method

.method private constructCollectionType(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/util/Collection;
    .locals 3

    move-object v0, p2

    check-cast v0, Lcom/htc/gson/JsonDeserializationContextDefault;

    invoke-virtual {v0}, Lcom/htc/gson/JsonDeserializationContextDefault;->getObjectConstructor()Lcom/htc/gson/ObjectConstructor;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/htc/gson/ObjectConstructor;->construct(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    return-object v2
.end method


# virtual methods
.method public bridge synthetic createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;->createInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public createInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public bridge synthetic deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->isJsonNull()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v2, v5

    :cond_0
    return-object v2

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;->constructCollectionType(Ljava/lang/reflect/Type;Lcom/htc/gson/JsonDeserializationContext;)Ljava/util/Collection;

    move-result-object v2

    new-instance v6, Lcom/htc/gson/TypeInfoCollection;

    invoke-direct {v6, p2}, Lcom/htc/gson/TypeInfoCollection;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v6}, Lcom/htc/gson/TypeInfoCollection;->getElementType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/gson/JsonElement;->getAsJsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/gson/JsonElement;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/gson/JsonElement;->isJsonNull()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {p3, v0, v1}, Lcom/htc/gson/JsonDeserializationContext;->deserialize(Lcom/htc/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/gson/DefaultTypeAdapters$CollectionTypeAdapter;->serialize(Ljava/util/Collection;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/util/Collection;Ljava/lang/reflect/Type;Lcom/htc/gson/JsonSerializationContext;)Lcom/htc/gson/JsonElement;
    .locals 7

    if-nez p1, :cond_1

    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/htc/gson/JsonArray;

    invoke-direct {v0}, Lcom/htc/gson/JsonArray;-><init>()V

    const/4 v2, 0x0

    instance-of v6, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_2

    new-instance v6, Lcom/htc/gson/TypeInfoCollection;

    invoke-direct {v6, p2}, Lcom/htc/gson/TypeInfoCollection;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v6}, Lcom/htc/gson/TypeInfoCollection;->getElementType()Ljava/lang/reflect/Type;

    move-result-object v2

    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/gson/JsonArray;->add(Lcom/htc/gson/JsonElement;)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    const-class v6, Ljava/lang/Object;

    if-ne v2, v6, :cond_5

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :goto_1
    invoke-interface {p3, v1, v3}, Lcom/htc/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/htc/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/gson/JsonArray;->add(Lcom/htc/gson/JsonElement;)V

    goto :goto_0

    :cond_5
    move-object v3, v2

    goto :goto_1
.end method
