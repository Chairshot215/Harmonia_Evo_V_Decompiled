.class public Lcom/htc/android/mail/util/SparseLongArray;
.super Ljava/lang/Object;
.source "SparseLongArray.java"


# instance fields
.field private mKeys:[J

.field private mSize:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/htc/android/mail/util/SparseLongArray;-><init>(I)V

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result p1

    .line 28
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    .line 29
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/htc/android/mail/util/SparseLongArray;->mValues:[J

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    .line 31
    return-void
.end method

.method private static binarySearch([JIIJ)I
    .locals 5
    .parameter "a"
    .parameter "start"
    .parameter "len"
    .parameter "key"

    .prologue
    .line 203
    add-int v1, p1, p2

    .local v1, high:I
    add-int/lit8 v2, p1, -0x1

    .line 205
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 206
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 208
    .local v0, guess:I
    aget-wide v3, p0, v0

    cmp-long v3, v3, p3

    if-gez v3, :cond_0

    .line 209
    move v2, v0

    goto :goto_0

    .line 211
    :cond_0
    move v1, v0

    goto :goto_0

    .line 214
    .end local v0           #guess:I
    :cond_1
    add-int v3, p1, p2

    if-ne v1, v3, :cond_3

    .line 215
    add-int v3, p1, p2

    xor-int/lit8 v1, v3, -0x1

    .line 219
    .end local v1           #high:I
    :cond_2
    :goto_1
    return v1

    .line 216
    .restart local v1       #high:I
    :cond_3
    aget-wide v3, p0, v1

    cmp-long v3, v3, p3

    if-eqz v3, :cond_2

    .line 219
    xor-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private checkIntegrity()V
    .locals 6

    .prologue
    .line 223
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    if-ge v0, v2, :cond_2

    .line 224
    iget-object v2, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    aget-wide v2, v2, v0

    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    add-int/lit8 v5, v0, -0x1

    aget-wide v4, v4, v5

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 225
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget v2, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    if-ge v1, v2, :cond_0

    .line 226
    const-string v2, "FAIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mValues:[J

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 223
    .end local v1           #j:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_2
    return-void
.end method


# virtual methods
.method public append(JJ)V
    .locals 7
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    .line 177
    iget v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    iget v5, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    add-int/lit8 v5, v5, -0x1

    aget-wide v4, v4, v5

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    .line 178
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/android/mail/util/SparseLongArray;->put(JJ)V

    .line 200
    :goto_0
    return-void

    .line 182
    :cond_0
    iget v3, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    .line 183
    .local v3, pos:I
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 184
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .line 186
    .local v0, n:I
    new-array v1, v0, [J

    .line 187
    .local v1, nkeys:[J
    new-array v2, v0, [J

    .line 190
    .local v2, nvalues:[J
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mValues:[J

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseLongArray;->mValues:[J

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iput-object v1, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    .line 194
    iput-object v2, p0, Lcom/htc/android/mail/util/SparseLongArray;->mValues:[J

    .line 197
    .end local v0           #n:I
    .end local v1           #nkeys:[J
    .end local v2           #nvalues:[J
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    aput-wide p1, v4, v3

    .line 198
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mValues:[J

    aput-wide p3, v4, v3

    .line 199
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    .line 170
    return-void
.end method

.method public delete(J)V
    .locals 4
    .parameter "key"

    .prologue
    .line 59
    iget-object v1, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/htc/android/mail/util/SparseLongArray;->binarySearch([JIIJ)I

    move-result v0

    .line 61
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 62
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/util/SparseLongArray;->removeAt(I)V

    .line 64
    :cond_0
    return-void
.end method

.method public get(J)J
    .locals 2
    .parameter "key"

    .prologue
    .line 38
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/htc/android/mail/util/SparseLongArray;->get(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(JJ)J
    .locals 4
    .parameter "key"
    .parameter "valueIfKeyNotFound"

    .prologue
    .line 46
    iget-object v1, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/htc/android/mail/util/SparseLongArray;->binarySearch([JIIJ)I

    move-result v0

    .line 48
    .local v0, i:I
    if-gez v0, :cond_0

    .line 51
    .end local p3
    :goto_0
    return-wide p3

    .restart local p3
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/util/SparseLongArray;->mValues:[J

    aget-wide p3, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(J)I
    .locals 3
    .parameter "key"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/htc/android/mail/util/SparseLongArray;->binarySearch([JIIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(J)I
    .locals 3
    .parameter "value"

    .prologue
    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/htc/android/mail/util/SparseLongArray;->mValues:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 162
    .end local v0           #i:I
    :goto_1
    return v0

    .line 158
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JJ)V
    .locals 8
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    .line 81
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    iget v5, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Lcom/htc/android/mail/util/SparseLongArray;->binarySearch([JIIJ)I

    move-result v0

    .line 83
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 84
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mValues:[J

    aput-wide p3, v4, v0

    .line 112
    :goto_0
    return-void

    .line 86
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 88
    iget v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 89
    iget v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    .line 91
    .local v1, n:I
    new-array v2, v1, [J

    .line 92
    .local v2, nkeys:[J
    new-array v3, v1, [J

    .line 95
    .local v3, nvalues:[J
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mValues:[J

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseLongArray;->mValues:[J

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iput-object v2, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    .line 99
    iput-object v3, p0, Lcom/htc/android/mail/util/SparseLongArray;->mValues:[J

    .line 102
    .end local v1           #n:I
    .end local v2           #nkeys:[J
    .end local v3           #nvalues:[J
    :cond_1
    iget v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 104
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mValues:[J

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseLongArray;->mValues:[J

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 109
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mValues:[J

    aput-wide p3, v4, v0

    .line 110
    iget v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    goto :goto_0
.end method

.method public removeAt(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/htc/android/mail/util/SparseLongArray;->mKeys:[J

    iget v3, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/util/SparseLongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/htc/android/mail/util/SparseLongArray;->mValues:[J

    iget v3, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget v0, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    .line 73
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/htc/android/mail/util/SparseLongArray;->mSize:I

    return v0
.end method

.method public valueAt(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/android/mail/util/SparseLongArray;->mValues:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method
