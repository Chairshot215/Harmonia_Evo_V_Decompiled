.class public Lcom/htc/android/mail/util/SparseArray;
.super Ljava/lang/Object;
.source "SparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/android/mail/util/SparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    .local p0, this:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/htc/android/mail/util/SparseArray;-><init>(I)V

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "initialCapacity"

    .prologue
    .local p0, this:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<TE;>;"
    const/4 v1, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v1, p0, Lcom/htc/android/mail/util/SparseArray;->mGarbage:Z

    .line 29
    invoke-static {p1}, Lcom/htc/android/mail/util/ArrayUtils;->idealIntArraySize(I)I

    move-result p1

    .line 31
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    .line 32
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 33
    iput v1, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    .line 34
    return-void
.end method

.method private static binarySearch([JIIJ)I
    .locals 5
    .parameter "a"
    .parameter "start"
    .parameter "len"
    .parameter "key"

    .prologue
    .line 292
    add-int v1, p1, p2

    .local v1, high:I
    add-int/lit8 v2, p1, -0x1

    .line 294
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 295
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 297
    .local v0, guess:I
    aget-wide v3, p0, v0

    cmp-long v3, v3, p3

    if-gez v3, :cond_0

    .line 298
    move v2, v0

    goto :goto_0

    .line 300
    :cond_0
    move v1, v0

    goto :goto_0

    .line 303
    .end local v0           #guess:I
    :cond_1
    add-int v3, p1, p2

    if-ne v1, v3, :cond_3

    .line 304
    add-int v3, p1, p2

    xor-int/lit8 v1, v3, -0x1

    .line 308
    .end local v1           #high:I
    :cond_2
    :goto_1
    return v1

    .line 305
    .restart local v1       #high:I
    :cond_3
    aget-wide v3, p0, v1

    cmp-long v3, v3, p3

    if-eqz v3, :cond_2

    .line 308
    xor-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private checkIntegrity()V
    .locals 6

    .prologue
    .line 312
    .local p0, this:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<TE;>;"
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    if-ge v0, v2, :cond_2

    .line 313
    iget-object v2, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    aget-wide v2, v2, v0

    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    add-int/lit8 v5, v0, -0x1

    aget-wide v4, v4, v5

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 314
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget v2, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    if-ge v1, v2, :cond_0

    .line 315
    const-string v2, "FAIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 318
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 312
    .end local v1           #j:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_2
    return-void
.end method

.method private gc()V
    .locals 8

    .prologue
    .line 82
    .local p0, this:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<TE;>;"
    iget v2, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    .line 83
    .local v2, n:I
    const/4 v3, 0x0

    .line 84
    .local v3, o:I
    iget-object v1, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    .line 85
    .local v1, keys:[J
    iget-object v5, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 87
    .local v5, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 88
    aget-object v4, v5, v0

    .line 90
    .local v4, val:Ljava/lang/Object;
    sget-object v6, Lcom/htc/android/mail/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1

    .line 91
    if-eq v0, v3, :cond_0

    .line 92
    aget-wide v6, v1, v0

    aput-wide v6, v1, v3

    .line 93
    aput-object v4, v5, v3

    .line 96
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 87
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .end local v4           #val:Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/android/mail/util/SparseArray;->mGarbage:Z

    .line 101
    iput v3, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    .line 104
    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .locals 7
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<TE;>;"
    .local p3, value:Ljava/lang/Object;,"TE;"
    const/4 v6, 0x0

    .line 262
    iget v4, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    iget v5, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    add-int/lit8 v5, v5, -0x1

    aget-wide v4, v4, v5

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    .line 263
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/android/mail/util/SparseArray;->put(JLjava/lang/Object;)V

    .line 289
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-boolean v4, p0, Lcom/htc/android/mail/util/SparseArray;->mGarbage:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 268
    invoke-direct {p0}, Lcom/htc/android/mail/util/SparseArray;->gc()V

    .line 271
    :cond_1
    iget v3, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    .line 272
    .local v3, pos:I
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 273
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/htc/android/mail/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .line 275
    .local v0, n:I
    new-array v1, v0, [J

    .line 276
    .local v1, nkeys:[J
    new-array v2, v0, [Ljava/lang/Object;

    .line 279
    .local v2, nvalues:[Ljava/lang/Object;
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    iput-object v1, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    .line 283
    iput-object v2, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 286
    .end local v0           #n:I
    .end local v1           #nkeys:[J
    .end local v2           #nvalues:[Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    aput-wide p1, v4, v3

    .line 287
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v3

    .line 288
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    .prologue
    .local p0, this:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<TE;>;"
    const/4 v4, 0x0

    .line 246
    iget v1, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    .line 247
    .local v1, n:I
    iget-object v2, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 249
    .local v2, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 250
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    iput v4, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    .line 254
    iput-boolean v4, p0, Lcom/htc/android/mail/util/SparseArray;->mGarbage:Z

    .line 255
    return-void
.end method

.method public delete(J)V
    .locals 4
    .parameter "key"

    .prologue
    .line 62
    .local p0, this:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<TE;>;"
    iget-object v1, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 64
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/htc/android/mail/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 66
    iget-object v1, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Lcom/htc/android/mail/util/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 67
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/mail/util/SparseArray;->mGarbage:Z

    .line 70
    :cond_0
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/android/mail/util/SparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<TE;>;"
    .local p3, valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 51
    .local v0, i:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/htc/android/mail/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 54
    .end local p3           #valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    :cond_0
    :goto_0
    return-object p3

    .restart local p3       #valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object p3, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(J)I
    .locals 3
    .parameter "key"

    .prologue
    .line 215
    .local p0, this:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/htc/android/mail/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/htc/android/mail/util/SparseArray;->gc()V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->binarySearch([JIIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, this:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<TE;>;"
    .local p1, value:Ljava/lang/Object;,"TE;"
    iget-boolean v1, p0, Lcom/htc/android/mail/util/SparseArray;->mGarbage:Z

    if-eqz v1, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/htc/android/mail/util/SparseArray;->gc()V

    .line 235
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_2

    .line 236
    iget-object v1, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 239
    .end local v0           #i:I
    :goto_1
    return v0

    .line 235
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 176
    .local p0, this:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/htc/android/mail/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/htc/android/mail/util/SparseArray;->gc()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .locals 8
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<TE;>;"
    .local p3, value:Ljava/lang/Object;,"TE;"
    const/4 v6, 0x0

    .line 112
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    iget v5, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 114
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 115
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 156
    :goto_0
    return-void

    .line 117
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 119
    iget v4, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Lcom/htc/android/mail/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 120
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 121
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    goto :goto_0

    .line 125
    :cond_1
    iget-boolean v4, p0, Lcom/htc/android/mail/util/SparseArray;->mGarbage:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 126
    invoke-direct {p0}, Lcom/htc/android/mail/util/SparseArray;->gc()V

    .line 129
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    iget v5, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->binarySearch([JIIJ)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 132
    :cond_2
    iget v4, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 133
    iget v4, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/htc/android/mail/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    .line 135
    .local v1, n:I
    new-array v2, v1, [J

    .line 136
    .local v2, nkeys:[J
    new-array v3, v1, [Ljava/lang/Object;

    .line 139
    .local v3, nvalues:[Ljava/lang/Object;
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iput-object v2, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    .line 143
    iput-object v3, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    .line 146
    .end local v1           #n:I
    .end local v2           #nkeys:[J
    .end local v3           #nvalues:[Ljava/lang/Object;
    :cond_3
    iget v4, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_4

    .line 148
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    :cond_4
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 153
    iget-object v4, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 154
    iget v4, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    goto/16 :goto_0
.end method

.method public remove(J)V
    .locals 0
    .parameter "key"

    .prologue
    .line 76
    .local p0, this:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/util/SparseArray;->delete(J)V

    .line 77
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, this:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    iget-boolean v0, p0, Lcom/htc/android/mail/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/htc/android/mail/util/SparseArray;->gc()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 207
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 163
    .local p0, this:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/htc/android/mail/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/htc/android/mail/util/SparseArray;->gc()V

    .line 167
    :cond_0
    iget v0, p0, Lcom/htc/android/mail/util/SparseArray;->mSize:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, this:Lcom/htc/android/mail/util/SparseArray;,"Lcom/htc/android/mail/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/htc/android/mail/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/htc/android/mail/util/SparseArray;->gc()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
