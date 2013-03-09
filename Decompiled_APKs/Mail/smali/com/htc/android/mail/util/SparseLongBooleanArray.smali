.class public Lcom/htc/android/mail/util/SparseLongBooleanArray;
.super Ljava/lang/Object;
.source "SparseLongBooleanArray.java"


# instance fields
.field private mKeys:[J

.field private mSize:I

.field private mValues:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/htc/android/mail/util/SparseLongBooleanArray;-><init>(I)V

    .line 19
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result p1

    .line 29
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    .line 30
    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mValues:[Z

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    .line 32
    return-void
.end method

.method private static binarySearch([JIIJ)I
    .locals 5
    .parameter "a"
    .parameter "start"
    .parameter "len"
    .parameter "key"

    .prologue
    .line 197
    add-int v1, p1, p2

    .local v1, high:I
    add-int/lit8 v2, p1, -0x1

    .line 199
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 200
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 202
    .local v0, guess:I
    aget-wide v3, p0, v0

    cmp-long v3, v3, p3

    if-gez v3, :cond_0

    .line 203
    move v2, v0

    goto :goto_0

    .line 205
    :cond_0
    move v1, v0

    goto :goto_0

    .line 208
    .end local v0           #guess:I
    :cond_1
    add-int v3, p1, p2

    if-ne v1, v3, :cond_3

    .line 209
    add-int v3, p1, p2

    xor-int/lit8 v1, v3, -0x1

    .line 213
    .end local v1           #high:I
    :cond_2
    :goto_1
    return v1

    .line 210
    .restart local v1       #high:I
    :cond_3
    aget-wide v3, p0, v1

    cmp-long v3, v3, p3

    if-eqz v3, :cond_2

    .line 213
    xor-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private checkIntegrity()V
    .locals 6

    .prologue
    .line 217
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    if-ge v0, v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    aget-wide v2, v2, v0

    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    add-int/lit8 v5, v0, -0x1

    aget-wide v4, v4, v5

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 219
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget v2, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    if-ge v1, v2, :cond_0

    .line 220
    const-string v2, "FAIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mValues:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 223
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 217
    .end local v1           #j:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_2
    return-void
.end method


# virtual methods
.method public append(JZ)V
    .locals 7
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    .line 171
    iget v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    iget v5, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    add-int/lit8 v5, v5, -0x1

    aget-wide v4, v4, v5

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    .line 172
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->put(JZ)V

    .line 194
    :goto_0
    return-void

    .line 176
    :cond_0
    iget v3, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    .line 177
    .local v3, pos:I
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 178
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .line 180
    .local v0, n:I
    new-array v1, v0, [J

    .line 181
    .local v1, nkeys:[J
    new-array v2, v0, [Z

    .line 184
    .local v2, nvalues:[Z
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mValues:[Z

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mValues:[Z

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iput-object v1, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    .line 188
    iput-object v2, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mValues:[Z

    .line 191
    .end local v0           #n:I
    .end local v1           #nkeys:[J
    .end local v2           #nvalues:[Z
    :cond_1
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    aput-wide p1, v4, v3

    .line 192
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mValues:[Z

    aput-boolean p3, v4, v3

    .line 193
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    .line 164
    return-void
.end method

.method public delete(J)V
    .locals 6
    .parameter "key"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->binarySearch([JIIJ)I

    move-result v0

    .line 62
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    iget v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget-object v1, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mValues:[Z

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mValues:[Z

    iget v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget v1, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    .line 67
    :cond_0
    return-void
.end method

.method public get(J)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->get(JZ)Z

    move-result v0

    return v0
.end method

.method public get(JZ)Z
    .locals 4
    .parameter "key"
    .parameter "valueIfKeyNotFound"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->binarySearch([JIIJ)I

    move-result v0

    .line 49
    .local v0, i:I
    if-gez v0, :cond_0

    .line 52
    .end local p3
    :goto_0
    return p3

    .restart local p3
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mValues:[Z

    aget-boolean p3, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(J)I
    .locals 3
    .parameter "key"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->binarySearch([JIIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Z)I
    .locals 2
    .parameter "value"

    .prologue
    .line 152
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mValues:[Z

    aget-boolean v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 156
    .end local v0           #i:I
    :goto_1
    return v0

    .line 152
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JZ)V
    .locals 8
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    .line 75
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    iget v5, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->binarySearch([JIIJ)I

    move-result v0

    .line 77
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 78
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mValues:[Z

    aput-boolean p3, v4, v0

    .line 106
    :goto_0
    return-void

    .line 80
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 82
    iget v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 83
    iget v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    .line 85
    .local v1, n:I
    new-array v2, v1, [J

    .line 86
    .local v2, nkeys:[J
    new-array v3, v1, [Z

    .line 89
    .local v3, nvalues:[Z
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mValues:[Z

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mValues:[Z

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iput-object v2, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    .line 93
    iput-object v3, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mValues:[Z

    .line 96
    .end local v1           #n:I
    .end local v2           #nkeys:[J
    .end local v3           #nvalues:[Z
    :cond_1
    iget v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 98
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mValues:[Z

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mValues:[Z

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 103
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mValues:[Z

    aput-boolean p3, v4, v0

    .line 104
    iget v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mSize:I

    return v0
.end method

.method public valueAt(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/android/mail/util/SparseLongBooleanArray;->mValues:[Z

    aget-boolean v0, v0, p1

    return v0
.end method
