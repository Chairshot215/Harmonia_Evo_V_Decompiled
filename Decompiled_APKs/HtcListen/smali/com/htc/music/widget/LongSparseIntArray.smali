.class public Lcom/htc/music/widget/LongSparseIntArray;
.super Ljava/lang/Object;
.source "LongSparseIntArray.java"


# instance fields
.field private mKeys:[J

.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/htc/music/widget/LongSparseIntArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result p1

    new-array v0, p1, [J

    iput-object v0, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    return-void
.end method

.method private static binarySearch([JIIJ)I
    .locals 5

    add-int v1, p1, p2

    add-int/lit8 v2, p1, -0x1

    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    aget-wide v3, p0, v0

    cmp-long v3, v3, p3

    if-gez v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    add-int v3, p1, p2

    if-ne v1, v3, :cond_3

    add-int v3, p1, p2

    xor-int/lit8 v1, v3, -0x1

    :cond_2
    :goto_1
    return v1

    :cond_3
    aget-wide v3, p0, v1

    cmp-long v3, v3, p3

    if-eqz v3, :cond_2

    xor-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private checkIntegrity()V
    .locals 6

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    aget-wide v2, v2, v0

    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    add-int/lit8 v5, v0, -0x1

    aget-wide v4, v4, v5

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    if-ge v1, v2, :cond_0

    const-string v2, "FAIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public append(JI)V
    .locals 7

    const/4 v6, 0x0

    iget v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    iget v5, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    add-int/lit8 v5, v5, -0x1

    aget-wide v4, v4, v5

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    array-length v4, v4

    if-lt v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v1, v0, [J

    new-array v2, v0, [I

    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    iput-object v2, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    :cond_1
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    aput-wide p1, v4, v3

    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    aput p3, v4, v3

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    return-void
.end method

.method public delete(J)V
    .locals 6

    iget-object v1, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/htc/music/widget/LongSparseIntArray;->binarySearch([JIIJ)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    iget v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    iget v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    :cond_0
    return-void
.end method

.method public get(J)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/music/widget/LongSparseIntArray;->get(JI)I

    move-result v0

    return v0
.end method

.method public get(JI)I
    .locals 4

    iget-object v1, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/htc/music/widget/LongSparseIntArray;->binarySearch([JIIJ)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return p3

    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    aget p3, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 5

    iget-object v0, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    int-to-long v3, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/music/widget/LongSparseIntArray;->binarySearch([JIIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)J
    .locals 2

    iget-object v0, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JI)V
    .locals 8

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    iget v5, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Lcom/htc/music/widget/LongSparseIntArray;->binarySearch([JIIJ)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    aput p3, v4, v0

    :goto_0
    return-void

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    iget v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_1

    iget v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v2, v1, [J

    new-array v3, v1, [I

    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    iput-object v3, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    :cond_1
    iget v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    iget-object v5, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mKeys:[J

    aput-wide p1, v4, v0

    iget-object v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    aput p3, v4, v0

    iget v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/htc/music/widget/LongSparseIntArray;->mSize:I

    return v0
.end method

.method public valueAt(I)I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/LongSparseIntArray;->mValues:[I

    aget v0, v0, p1

    return v0
.end method
