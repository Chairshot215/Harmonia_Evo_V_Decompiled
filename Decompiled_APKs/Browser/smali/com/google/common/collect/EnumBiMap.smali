.class public final Lcom/google/common/collect/EnumBiMap;
.super Lcom/google/common/collect/AbstractBiMap;
.source "EnumBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum",
        "<TK;>;V:",
        "Ljava/lang/Enum",
        "<TV;>;>",
        "Lcom/google/common/collect/AbstractBiMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/google/common/collect/EnumBiMap;,"Lcom/google/common/collect/EnumBiMap<TK;TV;>;"
    .local p1, keyType:Ljava/lang/Class;,"Ljava/lang/Class<TK;>;"
    .local p2, valueType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/AbstractBiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 71
    iput-object p1, p0, Lcom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    .line 72
    iput-object p2, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    .line 73
    return-void
.end method

.method public static create(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/common/collect/EnumBiMap;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;V:",
            "Ljava/lang/Enum",
            "<TV;>;>(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Lcom/google/common/collect/EnumBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, keyType:Ljava/lang/Class;,"Ljava/lang/Class<TK;>;"
    .local p1, valueType:Ljava/lang/Class;,"Ljava/lang/Class<TV;>;"
    new-instance v0, Lcom/google/common/collect/EnumBiMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/EnumBiMap;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/EnumBiMap;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;V:",
            "Ljava/lang/Enum",
            "<TV;>;>(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/EnumBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    invoke-static {p0}, Lcom/google/common/collect/EnumBiMap;->inferKeyType(Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0}, Lcom/google/common/collect/EnumBiMap;->inferValueType(Ljava/util/Map;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/EnumBiMap;->create(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/common/collect/EnumBiMap;

    move-result-object v0

    .line 65
    .local v0, bimap:Lcom/google/common/collect/EnumBiMap;,"Lcom/google/common/collect/EnumBiMap<TK;TV;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/collect/EnumBiMap;->putAll(Ljava/util/Map;)V

    .line 66
    return-object v0
.end method

.method static inferKeyType(Ljava/util/Map;)Ljava/lang/Class;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum",
            "<TK;>;>(",
            "Ljava/util/Map",
            "<TK;*>;)",
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<TK;*>;"
    instance-of v0, p0, Lcom/google/common/collect/EnumBiMap;

    if-eqz v0, :cond_0

    .line 77
    check-cast p0, Lcom/google/common/collect/EnumBiMap;

    .end local p0           #map:Ljava/util/Map;,"Ljava/util/Map<TK;*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EnumBiMap;->keyType()Ljava/lang/Class;

    move-result-object v0

    .line 83
    .restart local p0       #map:Ljava/util/Map;,"Ljava/util/Map<TK;*>;"
    :goto_0
    return-object v0

    .line 79
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/EnumHashBiMap;

    if-eqz v0, :cond_1

    .line 80
    check-cast p0, Lcom/google/common/collect/EnumHashBiMap;

    .end local p0           #map:Ljava/util/Map;,"Ljava/util/Map<TK;*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/EnumHashBiMap;->keyType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 82
    .restart local p0       #map:Ljava/util/Map;,"Ljava/util/Map<TK;*>;"
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 83
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static inferValueType(Ljava/util/Map;)Ljava/lang/Class;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Enum",
            "<TV;>;>(",
            "Ljava/util/Map",
            "<*TV;>;)",
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<*TV;>;"
    instance-of v0, p0, Lcom/google/common/collect/EnumBiMap;

    if-eqz v0, :cond_0

    .line 88
    check-cast p0, Lcom/google/common/collect/EnumBiMap;

    .end local p0           #map:Ljava/util/Map;,"Ljava/util/Map<*TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    .line 91
    .restart local p0       #map:Ljava/util/Map;,"Ljava/util/Map<*TV;>;"
    :goto_0
    return-object v0

    .line 90
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 91
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 118
    .local p0, this:Lcom/google/common/collect/EnumBiMap;,"Lcom/google/common/collect/EnumBiMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 119
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    .line 120
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    .line 121
    new-instance v0, Ljava/util/EnumMap;

    iget-object v1, p0, Lcom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v1, Ljava/util/EnumMap;

    iget-object v2, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/EnumBiMap;->setDelegates(Ljava/util/Map;Ljava/util/Map;)V

    .line 122
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->populateMap(Ljava/util/Map;Ljava/io/ObjectInputStream;)V

    .line 123
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    .local p0, this:Lcom/google/common/collect/EnumBiMap;,"Lcom/google/common/collect/EnumBiMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 110
    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 112
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMap(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    .line 113
    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 35
    .local p0, this:Lcom/google/common/collect/EnumBiMap;,"Lcom/google/common/collect/EnumBiMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    return-void
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    .local p0, this:Lcom/google/common/collect/EnumBiMap;,"Lcom/google/common/collect/EnumBiMap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 35
    .local p0, this:Lcom/google/common/collect/EnumBiMap;,"Lcom/google/common/collect/EnumBiMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .prologue
    .line 35
    .local p0, this:Lcom/google/common/collect/EnumBiMap;,"Lcom/google/common/collect/EnumBiMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 35
    .local p0, this:Lcom/google/common/collect/EnumBiMap;,"Lcom/google/common/collect/EnumBiMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, this:Lcom/google/common/collect/EnumBiMap;,"Lcom/google/common/collect/EnumBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->keyType:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    .local p0, this:Lcom/google/common/collect/EnumBiMap;,"Lcom/google/common/collect/EnumBiMap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public valueType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, this:Lcom/google/common/collect/EnumBiMap;,"Lcom/google/common/collect/EnumBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/EnumBiMap;->valueType:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Set;
    .locals 1

    .prologue
    .line 35
    .local p0, this:Lcom/google/common/collect/EnumBiMap;,"Lcom/google/common/collect/EnumBiMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
