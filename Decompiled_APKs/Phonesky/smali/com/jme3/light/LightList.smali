.class public final Lcom/jme3/light/LightList;
.super Ljava/lang/Object;
.source "LightList.java"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/jme3/light/Light;",
        ">;",
        "Lcom/jme3/export/Savable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/jme3/light/Light;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private distToOwner:[F

.field private list:[Lcom/jme3/light/Light;

.field private listSize:I

.field private owner:Lcom/jme3/scene/Spatial;

.field private tlist:[Lcom/jme3/light/Light;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/jme3/light/LightList$1;

    invoke-direct {v0}, Lcom/jme3/light/LightList$1;-><init>()V

    sput-object v0, Lcom/jme3/light/LightList;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Spatial;)V
    .locals 2
    .parameter "owner"

    .prologue
    const/4 v1, 0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/light/LightList;->listSize:I

    .line 83
    new-array v0, v1, [Lcom/jme3/light/Light;

    iput-object v0, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    .line 84
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    .line 85
    iget-object v0, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    const/high16 v1, -0x80

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 86
    iput-object p1, p0, Lcom/jme3/light/LightList;->owner:Lcom/jme3/scene/Spatial;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/jme3/light/LightList;)[Lcom/jme3/light/Light;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    return-object v0
.end method

.method private doubleSize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 98
    iget-object v2, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [Lcom/jme3/light/Light;

    .line 99
    .local v0, temp:[Lcom/jme3/light/Light;
    iget-object v2, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [F

    .line 100
    .local v1, temp2:[F
    iget-object v2, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    iget-object v3, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget-object v2, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    iget-object v3, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iput-object v0, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    .line 103
    iput-object v1, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    .line 104
    return-void
.end method


# virtual methods
.method public add(Lcom/jme3/light/Light;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 113
    iget v0, p0, Lcom/jme3/light/LightList;->listSize:I

    iget-object v1, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/jme3/light/LightList;->doubleSize()V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    iget v1, p0, Lcom/jme3/light/LightList;->listSize:I

    aput-object p1, v0, v1

    .line 117
    iget-object v0, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    iget v1, p0, Lcom/jme3/light/LightList;->listSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jme3/light/LightList;->listSize:I

    const/high16 v2, -0x80

    aput v2, v0, v1

    .line 118
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    iget v1, p0, Lcom/jme3/light/LightList;->listSize:I

    if-nez v1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/jme3/light/LightList;->listSize:I

    if-ge v0, v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    aput-object v2, v1, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/jme3/light/LightList;->tlist:[Lcom/jme3/light/Light;

    if-eqz v1, :cond_2

    .line 184
    iget-object v1, p0, Lcom/jme3/light/LightList;->tlist:[Lcom/jme3/light/Light;

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/jme3/light/LightList;->listSize:I

    goto :goto_0
.end method

.method public clone()Lcom/jme3/light/LightList;
    .locals 3

    .prologue
    .line 293
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/LightList;

    .line 295
    .local v0, clone:Lcom/jme3/light/LightList;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/jme3/light/LightList;->owner:Lcom/jme3/scene/Spatial;

    .line 296
    iget-object v2, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    invoke-virtual {v2}, [Lcom/jme3/light/Light;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/jme3/light/Light;

    iput-object v2, v0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    .line 297
    iget-object v2, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    iput-object v2, v0, Lcom/jme3/light/LightList;->distToOwner:[F

    .line 298
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/jme3/light/LightList;->tlist:[Lcom/jme3/light/Light;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    return-object v0

    .line 301
    .end local v0           #clone:Lcom/jme3/light/LightList;
    :catch_0
    move-exception v1

    .line 302
    .local v1, ex:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/jme3/light/LightList;->clone()Lcom/jme3/light/LightList;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lcom/jme3/light/Light;
    .locals 1
    .parameter "num"

    .prologue
    .line 167
    iget v0, p0, Lcom/jme3/light/LightList;->listSize:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/jme3/light/Light;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lcom/jme3/light/LightList$2;

    invoke-direct {v0, p0}, Lcom/jme3/light/LightList$2;-><init>(Lcom/jme3/light/LightList;)V

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 6
    .parameter "im"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v2

    .line 321
    .local v2, ic:Lcom/jme3/export/InputCapsule;
    const-string v4, "lights"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 322
    .local v3, lights:Ljava/util/List;,"Ljava/util/List<Lcom/jme3/light/Light;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/jme3/light/LightList;->listSize:I

    .line 325
    const/4 v4, 0x1

    iget v5, p0, Lcom/jme3/light/LightList;->listSize:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 326
    .local v0, arraySize:I
    new-array v4, v0, [Lcom/jme3/light/Light;

    iput-object v4, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    .line 327
    new-array v4, v0, [F

    iput-object v4, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    .line 329
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/jme3/light/LightList;->listSize:I

    if-ge v1, v4, :cond_0

    .line 330
    iget-object v5, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/light/Light;

    aput-object v4, v5, v1

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    :cond_0
    iget-object v4, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    const/high16 v5, -0x80

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([FF)V

    .line 334
    return-void
.end method

.method public remove(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 126
    iget v1, p0, Lcom/jme3/light/LightList;->listSize:I

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 127
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 129
    :cond_1
    iget v1, p0, Lcom/jme3/light/LightList;->listSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/jme3/light/LightList;->listSize:I

    .line 130
    iget v1, p0, Lcom/jme3/light/LightList;->listSize:I

    if-ne p1, v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    iget v2, p0, Lcom/jme3/light/LightList;->listSize:I

    aput-object v4, v1, v2

    .line 139
    :goto_0
    return-void

    .line 135
    :cond_2
    move v0, p1

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/jme3/light/LightList;->listSize:I

    if-ge v0, v1, :cond_3

    .line 136
    iget-object v1, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    iget-object v2, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    :cond_3
    iget-object v1, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    iget v2, p0, Lcom/jme3/light/LightList;->listSize:I

    aput-object v4, v1, v2

    goto :goto_0
.end method

.method public setOwner(Lcom/jme3/scene/Spatial;)V
    .locals 0
    .parameter "owner"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/jme3/light/LightList;->owner:Lcom/jme3/scene/Spatial;

    .line 95
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/jme3/light/LightList;->listSize:I

    return v0
.end method

.method public sort(Z)V
    .locals 6
    .parameter "transformChanged"

    .prologue
    const/4 v5, 0x0

    .line 201
    iget v1, p0, Lcom/jme3/light/LightList;->listSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 203
    iget-object v1, p0, Lcom/jme3/light/LightList;->tlist:[Lcom/jme3/light/Light;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jme3/light/LightList;->tlist:[Lcom/jme3/light/Light;

    array-length v1, v1

    iget-object v2, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    invoke-virtual {v1}, [Lcom/jme3/light/Light;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/jme3/light/Light;

    iput-object v1, p0, Lcom/jme3/light/LightList;->tlist:[Lcom/jme3/light/Light;

    .line 209
    :goto_0
    if-eqz p1, :cond_2

    .line 211
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/jme3/light/LightList;->listSize:I

    if-ge v0, v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/jme3/light/LightList;->owner:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1, v2}, Lcom/jme3/light/Light;->computeLastDistance(Lcom/jme3/scene/Spatial;)V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 206
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    iget-object v2, p0, Lcom/jme3/light/LightList;->tlist:[Lcom/jme3/light/Light;

    iget-object v3, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    array-length v3, v3

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 217
    :cond_2
    iget-object v1, p0, Lcom/jme3/light/LightList;->tlist:[Lcom/jme3/light/Light;

    iget-object v2, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    iget v3, p0, Lcom/jme3/light/LightList;->listSize:I

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lcom/jme3/light/LightList;->c:Ljava/util/Comparator;

    invoke-static {v1, v2, v5, v3, v4}, Lcom/jme3/util/SortUtil;->msort([Ljava/lang/Object;[Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 219
    :cond_3
    return-void
.end method

.method public update(Lcom/jme3/light/LightList;Lcom/jme3/light/LightList;)V
    .locals 8
    .parameter "local"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, -0x80

    .line 231
    invoke-virtual {p0}, Lcom/jme3/light/LightList;->clear()V

    .line 233
    :goto_0
    iget-object v3, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    array-length v3, v3

    iget v4, p1, Lcom/jme3/light/LightList;->listSize:I

    if-gt v3, v4, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/jme3/light/LightList;->doubleSize()V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v3, p1, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    iget-object v4, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    iget v5, p1, Lcom/jme3/light/LightList;->listSize:I

    invoke-static {v3, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p1, Lcom/jme3/light/LightList;->listSize:I

    if-ge v0, v3, :cond_1

    .line 241
    iget-object v3, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    aput v6, v3, v0

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 246
    :cond_1
    if-eqz p2, :cond_4

    .line 247
    iget v3, p1, Lcom/jme3/light/LightList;->listSize:I

    iget v4, p2, Lcom/jme3/light/LightList;->listSize:I

    add-int v2, v3, v4

    .line 248
    .local v2, sz:I
    :goto_2
    iget-object v3, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    array-length v3, v3

    if-gt v3, v2, :cond_2

    .line 249
    invoke-direct {p0}, Lcom/jme3/light/LightList;->doubleSize()V

    goto :goto_2

    .line 251
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget v3, p2, Lcom/jme3/light/LightList;->listSize:I

    if-ge v0, v3, :cond_3

    .line 252
    iget v3, p1, Lcom/jme3/light/LightList;->listSize:I

    add-int v1, v0, v3

    .line 253
    .local v1, p:I
    iget-object v3, p0, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    iget-object v4, p2, Lcom/jme3/light/LightList;->list:[Lcom/jme3/light/Light;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    .line 254
    iget-object v3, p0, Lcom/jme3/light/LightList;->distToOwner:[F

    aput v6, v3, v1

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 257
    .end local v1           #p:I
    :cond_3
    iget v3, p1, Lcom/jme3/light/LightList;->listSize:I

    iget v4, p2, Lcom/jme3/light/LightList;->listSize:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/jme3/light/LightList;->listSize:I

    .line 261
    .end local v2           #sz:I
    :goto_4
    return-void

    .line 259
    :cond_4
    iget v3, p1, Lcom/jme3/light/LightList;->listSize:I

    iput v3, p0, Lcom/jme3/light/LightList;->listSize:I

    goto :goto_4
.end method
