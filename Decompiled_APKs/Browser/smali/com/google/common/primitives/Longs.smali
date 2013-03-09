.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Longs$LongArrayAsList;,
        Lcom/google/common/primitives/Longs$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([JJII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([JJII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([J)Ljava/util/List;
    .locals 1
    .parameter "backingArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    array-length v0, p0

    if-nez v0, :cond_0

    .line 424
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 426
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([J)V

    goto :goto_0
.end method

.method public static compare(JJ)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 74
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs concat([[J)[J
    .locals 9
    .parameter "arrays"

    .prologue
    .line 221
    const/4 v4, 0x0

    .line 222
    .local v4, length:I
    move-object v0, p0

    .local v0, arr$:[[J
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 223
    .local v1, array:[J
    array-length v7, v1

    add-int/2addr v4, v7

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .end local v1           #array:[J
    :cond_0
    new-array v6, v4, [J

    .line 226
    .local v6, result:[J
    const/4 v5, 0x0

    .line 227
    .local v5, pos:I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 228
    .restart local v1       #array:[J
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    array-length v7, v1

    add-int/2addr v5, v7

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 231
    .end local v1           #array:[J
    :cond_1
    return-object v6
.end method

.method public static contains([JJ)Z
    .locals 6
    .parameter "array"
    .parameter "target"

    .prologue
    .line 87
    move-object v0, p0

    .local v0, arr$:[J
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-wide v3, v0, v1

    .line 88
    .local v3, value:J
    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    .line 89
    const/4 v5, 0x1

    .line 92
    .end local v3           #value:J
    :goto_1
    return v5

    .line 87
    .restart local v3       #value:J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v3           #value:J
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static copyOf([JI)[J
    .locals 3
    .parameter "original"
    .parameter "length"

    .prologue
    const/4 v2, 0x0

    .line 316
    new-array v0, p1, [J

    .line 317
    .local v0, copy:[J
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    return-object v0
.end method

.method public static ensureCapacity([JII)[J
    .locals 6
    .parameter "array"
    .parameter "minLength"
    .parameter "padding"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 307
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 308
    if-ltz p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 309
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Longs;->copyOf([JI)[J

    move-result-object p0

    .end local p0
    :cond_0
    return-object p0

    .restart local p0
    :cond_1
    move v0, v2

    .line 307
    goto :goto_0

    :cond_2
    move v0, v2

    .line 308
    goto :goto_1
.end method

.method public static fromByteArray([B)J
    .locals 10
    .parameter "bytes"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0xff

    .line 277
    array-length v0, p0

    if-lt v0, v8, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "array too small: %s < %s"

    new-array v4, v9, [Ljava/lang/Object;

    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 279
    aget-byte v0, p0, v2

    int-to-long v2, v0

    and-long/2addr v2, v6

    const/16 v0, 0x38

    shl-long/2addr v2, v0

    aget-byte v0, p0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v4, 0x30

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    aget-byte v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    move v0, v2

    .line 277
    goto :goto_0
.end method

.method public static hashCode(J)I
    .locals 2
    .parameter "value"

    .prologue
    .line 61
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static indexOf([JJ)I
    .locals 2
    .parameter "array"
    .parameter "target"

    .prologue
    .line 105
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result v0

    return v0
.end method

.method private static indexOf([JJII)I
    .locals 3
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 111
    move v0, p3

    .local v0, i:I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 112
    aget-wide v1, p0, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 116
    .end local v0           #i:I
    :goto_1
    return v0

    .line 111
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf([J[J)I
    .locals 6
    .parameter "array"
    .parameter "target"

    .prologue
    .line 131
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    array-length v2, p1

    if-nez v2, :cond_1

    .line 134
    const/4 v0, 0x0

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    .line 139
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 140
    add-int v2, v0, v1

    aget-wide v2, p0, v2

    aget-wide v4, p1, v1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 146
    .end local v1           #j:I
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static varargs join(Ljava/lang/String;[J)Ljava/lang/String;
    .locals 5
    .parameter "separator"
    .parameter "array"

    .prologue
    .line 331
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    array-length v2, p1

    if-nez v2, :cond_0

    .line 333
    const-string v2, ""

    .line 342
    :goto_0
    return-object v2

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 338
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-wide v2, p1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 339
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 340
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v3, p1, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 342
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static lastIndexOf([JJ)I
    .locals 2
    .parameter "array"
    .parameter "target"

    .prologue
    .line 159
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([JJII)I
    .locals 3
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 165
    add-int/lit8 v0, p4, -0x1

    .local v0, i:I
    :goto_0
    if-lt v0, p3, :cond_1

    .line 166
    aget-wide v1, p0, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 170
    .end local v0           #i:I
    :goto_1
    return v0

    .line 165
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[J>;"
        }
    .end annotation

    .prologue
    .line 362
    sget-object v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Longs$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([J)J
    .locals 5
    .parameter "array"

    .prologue
    const/4 v4, 0x0

    .line 201
    array-length v3, p0

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 202
    aget-wide v1, p0, v4

    .line 203
    .local v1, max:J
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 204
    aget-wide v3, p0, v0

    cmp-long v3, v3, v1

    if-lez v3, :cond_0

    .line 205
    aget-wide v1, p0, v0

    .line 203
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #max:J
    :cond_1
    move v3, v4

    .line 201
    goto :goto_0

    .line 208
    .restart local v0       #i:I
    .restart local v1       #max:J
    :cond_2
    return-wide v1
.end method

.method public static varargs min([J)J
    .locals 5
    .parameter "array"

    .prologue
    const/4 v4, 0x0

    .line 182
    array-length v3, p0

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 183
    aget-wide v1, p0, v4

    .line 184
    .local v1, min:J
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 185
    aget-wide v3, p0, v0

    cmp-long v3, v3, v1

    if-gez v3, :cond_0

    .line 186
    aget-wide v1, p0, v0

    .line 184
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #min:J
    :cond_1
    move v3, v4

    .line 182
    goto :goto_0

    .line 189
    .restart local v0       #i:I
    .restart local v1       #min:J
    :cond_2
    return-wide v1
.end method

.method public static toArray(Ljava/util/Collection;)[J
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    if-eqz v4, :cond_1

    .line 396
    check-cast p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    .end local p0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->toLongArray()[J

    move-result-object v0

    .line 405
    .local v0, array:[J
    .local v1, boxedArray:[Ljava/lang/Object;
    .local v2, i:I
    .local v3, len:I
    .restart local p0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    :cond_0
    return-object v0

    .line 399
    .end local v0           #array:[J
    .end local v1           #boxedArray:[Ljava/lang/Object;
    .end local v2           #i:I
    .end local v3           #len:I
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 400
    .restart local v1       #boxedArray:[Ljava/lang/Object;
    array-length v3, v1

    .line 401
    .restart local v3       #len:I
    new-array v0, v3, [J

    .line 402
    .restart local v0       #array:[J
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 403
    aget-object v4, v1, v2

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static toByteArray(J)[B
    .locals 5
    .parameter "value"
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 249
    new-array v0, v4, [B

    const/4 v1, 0x0

    const/16 v2, 0x38

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    shr-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    long-to-int v2, p0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method
