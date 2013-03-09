.class public final Lcom/google/common/collect/EnumHashBiMap;
.super Lcom/google/common/collect/AbstractBiMap;
.source "EnumHashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum",
        "<TK;>;V:",
        "Ljava/lang/Object;",
        ">",
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


# direct methods
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
    .line 102
    .local p0, this:Lcom/google/common/collect/EnumHashBiMap;,"Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 103
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/collect/EnumHashBiMap;->keyType:Ljava/lang/Class;

    .line 104
    new-instance v1, Ljava/util/EnumMap;

    iget-object v0, p0, Lcom/google/common/collect/EnumHashBiMap;->keyType:Ljava/lang/Class;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v2, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/common/collect/EnumHashBiMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/EnumHashBiMap;->setDelegates(Ljava/util/Map;Ljava/util/Map;)V

    .line 106
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->populateMap(Ljava/util/Map;Ljava/io/ObjectInputStream;)V

    .line 107
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
    .line 94
    .local p0, this:Lcom/google/common/collect/EnumHashBiMap;,"Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 95
    iget-object v0, p0, Lcom/google/common/collect/EnumHashBiMap;->keyType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 96
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMap(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    .line 97
    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 37
    .local p0, this:Lcom/google/common/collect/EnumHashBiMap;,"Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->clear()V

    return-void
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    .local p0, this:Lcom/google/common/collect/EnumHashBiMap;,"Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 37
    .local p0, this:Lcom/google/common/collect/EnumHashBiMap;,"Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .prologue
    .line 37
    .local p0, this:Lcom/google/common/collect/EnumHashBiMap;,"Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 37
    .local p0, this:Lcom/google/common/collect/EnumHashBiMap;,"Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, this:Lcom/google/common/collect/EnumHashBiMap;,"Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Enum;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    .local p0, this:Lcom/google/common/collect/EnumHashBiMap;,"Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Enum;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EnumHashBiMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    .local p0, this:Lcom/google/common/collect/EnumHashBiMap;,"Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    .local p0, this:Lcom/google/common/collect/EnumHashBiMap;,"Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractBiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Set;
    .locals 1

    .prologue
    .line 37
    .local p0, this:Lcom/google/common/collect/EnumHashBiMap;,"Lcom/google/common/collect/EnumHashBiMap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
