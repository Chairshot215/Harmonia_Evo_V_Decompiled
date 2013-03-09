.class public Lcom/google/common/collect/ImmutableListMultimap;
.super Lcom/google/common/collect/ImmutableMultimap;
.source "ImmutableListMultimap.java"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableListMultimap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultimap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/ListMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .locals 0
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;",
            "Lcom/google/common/collect/ImmutableList",
            "<TV;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, this:Lcom/google/common/collect/ImmutableListMultimap;,"Lcom/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    .local p1, map:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<TK;Lcom/google/common/collect/ImmutableList<TV;>;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    .line 256
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 13
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 302
    .local p0, this:Lcom/google/common/collect/ImmutableListMultimap;,"Lcom/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 303
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    .line 304
    .local v6, keyCount:I
    if-gez v6, :cond_0

    .line 305
    new-instance v10, Ljava/io/InvalidObjectException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid key count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 307
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 309
    .local v1, builder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/Object;Lcom/google/common/collect/ImmutableList<Ljava/lang/Object;>;>;"
    const/4 v8, 0x0

    .line 311
    .local v8, tmpSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_3

    .line 312
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 313
    .local v5, key:Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v9

    .line 314
    .local v9, valueCount:I
    if-gtz v9, :cond_1

    .line 315
    new-instance v10, Ljava/io/InvalidObjectException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid value count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 318
    :cond_1
    new-array v0, v9, [Ljava/lang/Object;

    .line 319
    .local v0, array:[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v9, :cond_2

    .line 320
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v0, v4

    .line 319
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 322
    :cond_2
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    invoke-virtual {v1, v5, v10}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 323
    add-int/2addr v8, v9

    .line 311
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 328
    .end local v0           #array:[Ljava/lang/Object;
    .end local v4           #j:I
    .end local v5           #key:Ljava/lang/Object;
    .end local v9           #valueCount:I
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 334
    .local v7, tmpMap:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<Ljava/lang/Object;Lcom/google/common/collect/ImmutableList<Ljava/lang/Object;>;>;"
    sget-object v10, Lcom/google/common/collect/ImmutableMultimap$FieldSettersHolder;->MAP_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;

    invoke-virtual {v10, p0, v7}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    sget-object v10, Lcom/google/common/collect/ImmutableMultimap$FieldSettersHolder;->SIZE_FIELD_SETTER:Lcom/google/common/collect/Serialization$FieldSetter;

    invoke-virtual {v10, p0, v8}, Lcom/google/common/collect/Serialization$FieldSetter;->set(Ljava/lang/Object;I)V

    .line 336
    return-void

    .line 329
    .end local v7           #tmpMap:Lcom/google/common/collect/ImmutableMap;,"Lcom/google/common/collect/ImmutableMap<Ljava/lang/Object;Lcom/google/common/collect/ImmutableList<Ljava/lang/Object;>;>;"
    :catch_0
    move-exception v2

    .line 330
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-instance v10, Ljava/io/InvalidObjectException;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v10

    check-cast v10, Ljava/io/InvalidObjectException;

    throw v10
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    .local p0, this:Lcom/google/common/collect/ImmutableListMultimap;,"Lcom/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 297
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    .line 298
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    .local p0, this:Lcom/google/common/collect/ImmutableListMultimap;,"Lcom/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, this:Lcom/google/common/collect/ImmutableListMultimap;,"Lcom/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableListMultimap;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    .line 269
    .local v0, list:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TV;>;"
    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .end local v0           #list:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TV;>;"
    :cond_0
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    .local p0, this:Lcom/google/common/collect/ImmutableListMultimap;,"Lcom/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    .local p0, this:Lcom/google/common/collect/ImmutableListMultimap;,"Lcom/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
