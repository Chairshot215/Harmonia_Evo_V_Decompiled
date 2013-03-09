.class public Lcom/jme3/util/SafeArrayList;
.super Ljava/lang/Object;
.source "SafeArrayList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/util/SafeArrayList$ArrayIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private backingArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field private elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    .local p1, elementType:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/util/SafeArrayList;->size:I

    .line 93
    iput-object p1, p0, Lcom/jme3/util/SafeArrayList;->elementType:Ljava/lang/Class;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    .local p1, elementType:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    .local p2, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/util/SafeArrayList;->size:I

    .line 97
    iput-object p1, p0, Lcom/jme3/util/SafeArrayList;->elementType:Ljava/lang/Class;

    .line 98
    invoke-virtual {p0, p2}, Lcom/jme3/util/SafeArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getBuffer()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 271
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getBuffer()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/jme3/util/SafeArrayList;->size:I

    .line 272
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getBuffer()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 185
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getBuffer()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/jme3/util/SafeArrayList;->size:I

    .line 186
    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    .local p2, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getBuffer()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 207
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getBuffer()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/jme3/util/SafeArrayList;->size:I

    .line 208
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getBuffer()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 201
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getBuffer()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/jme3/util/SafeArrayList;->size:I

    .line 202
    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 224
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getBuffer()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/util/SafeArrayList;->size:I

    .line 226
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 156
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/jme3/util/SafeArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected final createArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TE;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    iget-object v0, p0, Lcom/jme3/util/SafeArrayList;->elementType:Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Lcom/jme3/util/SafeArrayList;->createArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final createArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)[TT;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 229
    if-ne p1, p0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v5

    .line 231
    :cond_1
    instance-of v7, p1, Ljava/util/List;

    if-nez v7, :cond_2

    move v5, v6

    .line 232
    goto :goto_0

    :cond_2
    move-object v4, p1

    .line 233
    check-cast v4, Ljava/util/List;

    .line 234
    .local v4, other:Ljava/util/List;
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 235
    .local v0, i1:Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 236
    .local v1, i2:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 237
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 238
    .local v2, o1:Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 239
    .local v3, o2:Ljava/lang/Object;
    if-eq v2, v3, :cond_3

    .line 241
    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_4
    move v5, v6

    .line 242
    goto :goto_0

    .line 244
    .end local v2           #o1:Ljava/lang/Object;
    .end local v3           #o2:Ljava/lang/Object;
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    :cond_6
    move v5, v6

    goto :goto_0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    iget-object v0, p0, Lcom/jme3/util/SafeArrayList;->backingArray:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/jme3/util/SafeArrayList;->backingArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 261
    :goto_0
    return-object v0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/jme3/util/SafeArrayList;->buffer:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/jme3/util/SafeArrayList;->buffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Size:0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getArray()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TE;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    iget-object v0, p0, Lcom/jme3/util/SafeArrayList;->backingArray:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/jme3/util/SafeArrayList;->backingArray:[Ljava/lang/Object;

    .line 128
    :goto_0
    return-object v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/jme3/util/SafeArrayList;->buffer:Ljava/util/List;

    if-nez v0, :cond_1

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/util/SafeArrayList;->createArray(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/util/SafeArrayList;->backingArray:[Ljava/lang/Object;

    .line 128
    :goto_1
    iget-object v0, p0, Lcom/jme3/util/SafeArrayList;->backingArray:[Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/jme3/util/SafeArrayList;->buffer:Ljava/util/List;

    iget-object v1, p0, Lcom/jme3/util/SafeArrayList;->buffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jme3/util/SafeArrayList;->createArray(I)[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/util/SafeArrayList;->backingArray:[Ljava/lang/Object;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/util/SafeArrayList;->buffer:Ljava/util/List;

    goto :goto_1
.end method

.method protected final getBuffer()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    iget-object v0, p0, Lcom/jme3/util/SafeArrayList;->buffer:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/jme3/util/SafeArrayList;->buffer:Ljava/util/List;

    .line 144
    :goto_0
    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/jme3/util/SafeArrayList;->backingArray:[Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/SafeArrayList;->buffer:Ljava/util/List;

    .line 144
    :goto_1
    iget-object v0, p0, Lcom/jme3/util/SafeArrayList;->buffer:Ljava/util/List;

    goto :goto_0

    .line 141
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jme3/util/SafeArrayList;->backingArray:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jme3/util/SafeArrayList;->buffer:Ljava/util/List;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/util/SafeArrayList;->backingArray:[Ljava/lang/Object;

    goto :goto_1
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 249
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 250
    .local v1, array:[Ljava/lang/Object;,"[TE;"
    const/4 v5, 0x1

    .line 251
    .local v5, result:I
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 252
    .local v2, e:Ljava/lang/Object;,"TE;"
    mul-int/lit8 v7, v5, 0x1f

    if-nez v2, :cond_0

    const/4 v6, 0x0

    :goto_1
    add-int v5, v7, v6

    .line 251
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_1

    .line 254
    .end local v2           #e:Ljava/lang/Object;,"TE;"
    :cond_1
    return v5
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .parameter "o"

    .prologue
    .line 281
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 282
    .local v0, array:[Ljava/lang/Object;,"[TE;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 283
    aget-object v1, v0, v2

    .line 284
    .local v1, element:Ljava/lang/Object;,"TE;"
    if-ne v1, p1, :cond_1

    .line 291
    .end local v1           #element:Ljava/lang/Object;,"TE;"
    .end local v2           #i:I
    :cond_0
    :goto_1
    return v2

    .line 287
    .restart local v1       #element:Ljava/lang/Object;,"TE;"
    .restart local v2       #i:I
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 282
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    .end local v1           #element:Ljava/lang/Object;,"TE;"
    :cond_3
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 152
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    iget v0, p0, Lcom/jme3/util/SafeArrayList;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4
    .parameter "o"

    .prologue
    .line 295
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 296
    .local v0, array:[Ljava/lang/Object;,"[TE;"
    array-length v3, v0

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_3

    .line 297
    aget-object v1, v0, v2

    .line 298
    .local v1, element:Ljava/lang/Object;,"TE;"
    if-ne v1, p1, :cond_1

    .line 305
    .end local v1           #element:Ljava/lang/Object;,"TE;"
    .end local v2           #i:I
    :cond_0
    :goto_1
    return v2

    .line 301
    .restart local v1       #element:Ljava/lang/Object;,"TE;"
    .restart local v2       #i:I
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 296
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 305
    .end local v1           #element:Ljava/lang/Object;,"TE;"
    :cond_3
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    new-instance v0, Lcom/jme3/util/SafeArrayList$ArrayIterator;

    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/jme3/util/SafeArrayList$ArrayIterator;-><init>(Lcom/jme3/util/SafeArrayList;[Ljava/lang/Object;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    new-instance v0, Lcom/jme3/util/SafeArrayList$ArrayIterator;

    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/jme3/util/SafeArrayList$ArrayIterator;-><init>(Lcom/jme3/util/SafeArrayList;[Ljava/lang/Object;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getBuffer()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 276
    .local v0, result:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getBuffer()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/jme3/util/SafeArrayList;->size:I

    .line 277
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 190
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getBuffer()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 191
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getBuffer()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/jme3/util/SafeArrayList;->size:I

    .line 192
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getBuffer()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 213
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getBuffer()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/jme3/util/SafeArrayList;->size:I

    .line 214
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getBuffer()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 219
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getBuffer()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/jme3/util/SafeArrayList;->size:I

    .line 220
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    .local p2, element:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getBuffer()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 148
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    iget v0, p0, Lcom/jme3/util/SafeArrayList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 2
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 320
    .local v0, raw:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    const/4 v3, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 170
    .local v0, array:[Ljava/lang/Object;,"[TE;"
    array-length v1, p1

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 171
    array-length v1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 180
    :goto_0
    return-object v1

    .line 174
    :cond_0
    array-length v1, v0

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_1

    .line 177
    array-length v1, v0

    const/4 v2, 0x0

    aput-object v2, p1, v1

    :cond_1
    move-object v1, p1

    .line 180
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 325
    .local p0, this:Lcom/jme3/util/SafeArrayList;,"Lcom/jme3/util/SafeArrayList<TE;>;"
    invoke-virtual {p0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    .line 326
    .local v0, array:[Ljava/lang/Object;,"[TE;"
    array-length v4, v0

    if-nez v4, :cond_0

    .line 327
    const-string v4, "[]"

    .line 339
    :goto_0
    return-object v4

    .line 330
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v3, sb:Ljava/lang/StringBuilder;
    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_3

    .line 333
    if-lez v2, :cond_1

    .line 334
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_1
    aget-object v1, v0, v2

    .line 336
    .local v1, e:Ljava/lang/Object;,"TE;"
    if-ne v1, p0, :cond_2

    const-string v1, "(this Collection)"

    .end local v1           #e:Ljava/lang/Object;,"TE;"
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 338
    :cond_3
    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method
