.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Ints$IntArrayAsList;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([IIII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->indexOf([IIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([IIII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->lastIndexOf([IIII)I

    move-result v0

    return v0
.end method

.method public static varargs concat([[I)[I
    .locals 9
    .parameter "arrays"

    .prologue
    .line 263
    const/4 v4, 0x0

    .line 264
    .local v4, length:I
    move-object v0, p0

    .local v0, arr$:[[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 265
    .local v1, array:[I
    array-length v7, v1

    add-int/2addr v4, v7

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v1           #array:[I
    :cond_0
    new-array v6, v4, [I

    .line 268
    .local v6, result:[I
    const/4 v5, 0x0

    .line 269
    .local v5, pos:I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 270
    .restart local v1       #array:[I
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    array-length v7, v1

    add-int/2addr v5, v7

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 273
    .end local v1           #array:[I
    :cond_1
    return-object v6
.end method

.method public static hashCode(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 71
    return p0
.end method

.method private static indexOf([IIII)I
    .locals 2
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 153
    move v0, p2

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 154
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 158
    .end local v0           #i:I
    :goto_1
    return v0

    .line 153
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static lastIndexOf([IIII)I
    .locals 2
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 207
    add-int/lit8 v0, p3, -0x1

    .local v0, i:I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 208
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 212
    .end local v0           #i:I
    :goto_1
    return v0

    .line 207
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 212
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static saturatedCast(J)I
    .locals 2
    .parameter "value"

    .prologue
    .line 97
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 98
    const v0, 0x7fffffff

    .line 103
    :goto_0
    return v0

    .line 100
    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 101
    const/high16 v0, -0x8000

    goto :goto_0

    .line 103
    :cond_1
    long-to-int v0, p0

    goto :goto_0
.end method

.method public static toArray(Ljava/util/Collection;)[I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    if-eqz v4, :cond_1

    .line 434
    check-cast p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    .end local p0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->toIntArray()[I

    move-result-object v0

    .line 444
    .local v0, array:[I
    .local v1, boxedArray:[Ljava/lang/Object;
    .local v2, i:I
    .local v3, len:I
    .restart local p0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    :cond_0
    return-object v0

    .line 437
    .end local v0           #array:[I
    .end local v1           #boxedArray:[Ljava/lang/Object;
    .end local v2           #i:I
    .end local v3           #len:I
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 438
    .restart local v1       #boxedArray:[Ljava/lang/Object;
    array-length v3, v1

    .line 439
    .restart local v3       #len:I
    new-array v0, v3, [I

    .line 440
    .restart local v0       #array:[I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 442
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
