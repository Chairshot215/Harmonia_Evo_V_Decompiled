.class public Lcom/android/htccontacts/util/SparseLongArray;
.super Ljava/lang/Object;
.source "SparseLongArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/util/SparseLongArray$ArrayObserver;
    }
.end annotation

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

.field private mObservers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/htccontacts/util/SparseLongArray$ArrayObserver;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/htccontacts/util/SparseLongArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    .local p0, this:Lcom/android/htccontacts/util/SparseLongArray;,"Lcom/android/htccontacts/util/SparseLongArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/htccontacts/util/SparseLongArray;-><init>(I)V

    .line 24
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "initialCapacity"

    .prologue
    .local p0, this:Lcom/android/htccontacts/util/SparseLongArray;,"Lcom/android/htccontacts/util/SparseLongArray<TE;>;"
    const/4 v2, 0x0

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v2, p0, Lcom/android/htccontacts/util/SparseLongArray;->mGarbage:Z

    .line 331
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/htccontacts/util/SparseLongArray;->mObservers:Ljava/util/WeakHashMap;

    .line 32
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealLongArraySize(I)I

    move-result p1

    .line 34
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    .line 35
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    .line 36
    iput v2, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    .line 37
    return-void
.end method

.method private static binarySearch([JIIJ)I
    .locals 5
    .parameter "a"
    .parameter "start"
    .parameter "len"
    .parameter "key"

    .prologue
    .line 296
    add-int v1, p1, p2

    .local v1, high:I
    add-int/lit8 v2, p1, -0x1

    .line 298
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 299
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 301
    .local v0, guess:I
    aget-wide v3, p0, v0

    cmp-long v3, v3, p3

    if-gez v3, :cond_0

    .line 302
    move v2, v0

    goto :goto_0

    .line 304
    :cond_0
    move v1, v0

    goto :goto_0

    .line 307
    .end local v0           #guess:I
    :cond_1
    add-int v3, p1, p2

    if-ne v1, v3, :cond_3

    .line 308
    add-int v3, p1, p2

    xor-int/lit8 v1, v3, -0x1

    .line 312
    .end local v1           #high:I
    :cond_2
    :goto_1
    return v1

    .line 309
    .restart local v1       #high:I
    :cond_3
    aget-wide v3, p0, v1

    cmp-long v3, v3, p3

    if-eqz v3, :cond_2

    .line 312
    xor-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private checkIntegrity()V
    .locals 6

    .prologue
    .line 316
    .local p0, this:Lcom/android/htccontacts/util/SparseLongArray;,"Lcom/android/htccontacts/util/SparseLongArray<TE;>;"
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    if-ge v0, v2, :cond_2

    .line 317
    iget-object v2, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    aget-wide v2, v2, v0

    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    add-int/lit8 v5, v0, -0x1

    aget-wide v4, v4, v5

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 318
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget v2, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    if-ge v1, v2, :cond_0

    .line 319
    const-string v2, "FAIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 322
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 316
    .end local v1           #j:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_2
    return-void
.end method

.method private gc()V
    .locals 8

    .prologue
    .line 85
    .local p0, this:Lcom/android/htccontacts/util/SparseLongArray;,"Lcom/android/htccontacts/util/SparseLongArray<TE;>;"
    iget v2, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    .line 86
    .local v2, n:I
    const/4 v3, 0x0

    .line 87
    .local v3, o:I
    iget-object v1, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    .line 88
    .local v1, keys:[J
    iget-object v5, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    .line 90
    .local v5, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 91
    aget-object v4, v5, v0

    .line 93
    .local v4, val:Ljava/lang/Object;
    sget-object v6, Lcom/android/htccontacts/util/SparseLongArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1

    .line 94
    if-eq v0, v3, :cond_0

    .line 95
    aget-wide v6, v1, v0

    aput-wide v6, v1, v3

    .line 96
    aput-object v4, v5, v3

    .line 99
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 90
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v4           #val:Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/htccontacts/util/SparseLongArray;->mGarbage:Z

    .line 104
    iput v3, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    .line 107
    return-void
.end method

.method private notifyObservers(JLjava/lang/Object;)V
    .locals 5
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, this:Lcom/android/htccontacts/util/SparseLongArray;,"Lcom/android/htccontacts/util/SparseLongArray<TE;>;"
    .local p3, item:Ljava/lang/Object;,"TE;"
    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mObservers:Ljava/util/WeakHashMap;

    monitor-enter v4

    .line 350
    :try_start_0
    iget-object v3, p0, Lcom/android/htccontacts/util/SparseLongArray;->mObservers:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 351
    iget-object v3, p0, Lcom/android/htccontacts/util/SparseLongArray;->mObservers:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 352
    .local v1, keySet:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/htccontacts/util/SparseLongArray$ArrayObserver;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/util/SparseLongArray$ArrayObserver;

    .line 353
    .local v2, observer:Lcom/android/htccontacts/util/SparseLongArray$ArrayObserver;
    invoke-interface {v2, p1, p2, p3}, Lcom/android/htccontacts/util/SparseLongArray$ArrayObserver;->notifyChanged(JLjava/lang/Object;)V

    goto :goto_0

    .line 356
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #keySet:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/htccontacts/util/SparseLongArray$ArrayObserver;>;"
    .end local v2           #observer:Lcom/android/htccontacts/util/SparseLongArray$ArrayObserver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
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
    .local p0, this:Lcom/android/htccontacts/util/SparseLongArray;,"Lcom/android/htccontacts/util/SparseLongArray<TE;>;"
    .local p3, value:Ljava/lang/Object;,"TE;"
    const/4 v6, 0x0

    .line 266
    iget v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    iget v5, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    add-int/lit8 v5, v5, -0x1

    aget-wide v4, v4, v5

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    .line 267
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/htccontacts/util/SparseLongArray;->put(JLjava/lang/Object;)V

    .line 293
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-boolean v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mGarbage:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    iget-object v5, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 272
    invoke-direct {p0}, Lcom/android/htccontacts/util/SparseLongArray;->gc()V

    .line 275
    :cond_1
    iget v3, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    .line 276
    .local v3, pos:I
    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 277
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealLongArraySize(I)I

    move-result v0

    .line 279
    .local v0, n:I
    new-array v1, v0, [J

    .line 280
    .local v1, nkeys:[J
    new-array v2, v0, [Ljava/lang/Object;

    .line 283
    .local v2, nvalues:[Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    iget-object v5, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    iput-object v1, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    .line 287
    iput-object v2, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    .line 290
    .end local v0           #n:I
    .end local v1           #nkeys:[J
    .end local v2           #nvalues:[Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    aput-wide p1, v4, v3

    .line 291
    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v3

    .line 292
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    .prologue
    .local p0, this:Lcom/android/htccontacts/util/SparseLongArray;,"Lcom/android/htccontacts/util/SparseLongArray<TE;>;"
    const/4 v4, 0x0

    .line 250
    iget v1, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    .line 251
    .local v1, n:I
    iget-object v2, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    .line 253
    .local v2, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 254
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    iput v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    .line 258
    iput-boolean v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mGarbage:Z

    .line 259
    return-void
.end method

.method public delete(J)V
    .locals 4
    .parameter "key"

    .prologue
    .line 65
    .local p0, this:Lcom/android/htccontacts/util/SparseLongArray;,"Lcom/android/htccontacts/util/SparseLongArray<TE;>;"
    iget-object v1, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/android/htccontacts/util/SparseLongArray;->binarySearch([JIIJ)I

    move-result v0

    .line 67
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/htccontacts/util/SparseLongArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 69
    iget-object v1, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Lcom/android/htccontacts/util/SparseLongArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/util/SparseLongArray;->mGarbage:Z

    .line 73
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
    .line 44
    .local p0, this:Lcom/android/htccontacts/util/SparseLongArray;,"Lcom/android/htccontacts/util/SparseLongArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/htccontacts/util/SparseLongArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

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
    .line 52
    .local p0, this:Lcom/android/htccontacts/util/SparseLongArray;,"Lcom/android/htccontacts/util/SparseLongArray<TE;>;"
    .local p3, valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/android/htccontacts/util/SparseLongArray;->binarySearch([JIIJ)I

    move-result v0

    .line 54
    .local v0, i:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/htccontacts/util/SparseLongArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 57
    .end local p3           #valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    :cond_0
    :goto_0
    return-object p3

    .restart local p3       #valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    aget-object p3, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(J)J
    .locals 3
    .parameter "key"

    .prologue
    .line 219
    .local p0, this:Lcom/android/htccontacts/util/SparseLongArray;,"Lcom/android/htccontacts/util/SparseLongArray<TE;>;"
    iget-boolean v0, p0, Lcom/android/htccontacts/util/SparseLongArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/android/htccontacts/util/SparseLongArray;->gc()V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/htccontacts/util/SparseLongArray;->binarySearch([JIIJ)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public indexOfValue(Ljava/lang/Object;)J
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)J"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, this:Lcom/android/htccontacts/util/SparseLongArray;,"Lcom/android/htccontacts/util/SparseLongArray<TE;>;"
    .local p1, value:Ljava/lang/Object;,"TE;"
    iget-boolean v1, p0, Lcom/android/htccontacts/util/SparseLongArray;->mGarbage:Z

    if-eqz v1, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/android/htccontacts/util/SparseLongArray;->gc()V

    .line 239
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    if-ge v0, v1, :cond_2

    .line 240
    iget-object v1, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 241
    int-to-long v1, v0

    .line 243
    :goto_1
    return-wide v1

    .line 239
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_2
    const-wide/16 v1, -0x1

    goto :goto_1
.end method

.method public keyAt(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 180
    .local p0, this:Lcom/android/htccontacts/util/SparseLongArray;,"Lcom/android/htccontacts/util/SparseLongArray<TE;>;"
    iget-boolean v0, p0, Lcom/android/htccontacts/util/SparseLongArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/android/htccontacts/util/SparseLongArray;->gc()V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

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
    .local p0, this:Lcom/android/htccontacts/util/SparseLongArray;,"Lcom/android/htccontacts/util/SparseLongArray<TE;>;"
    .local p3, value:Ljava/lang/Object;,"TE;"
    const/4 v6, 0x0

    .line 115
    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    iget v5, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Lcom/android/htccontacts/util/SparseLongArray;->binarySearch([JIIJ)I

    move-result v0

    .line 117
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 118
    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 159
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/util/SparseLongArray;->notifyObservers(JLjava/lang/Object;)V

    .line 160
    :goto_1
    return-void

    .line 120
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 122
    iget v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Lcom/android/htccontacts/util/SparseLongArray;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 123
    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 124
    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    goto :goto_1

    .line 128
    :cond_1
    iget-boolean v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mGarbage:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    iget-object v5, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 129
    invoke-direct {p0}, Lcom/android/htccontacts/util/SparseLongArray;->gc()V

    .line 132
    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    iget v5, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Lcom/android/htccontacts/util/SparseLongArray;->binarySearch([JIIJ)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 135
    :cond_2
    iget v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    iget-object v5, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 136
    iget v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealLongArraySize(I)I

    move-result v1

    .line 138
    .local v1, n:I
    new-array v2, v1, [J

    .line 139
    .local v2, nkeys:[J
    new-array v3, v1, [Ljava/lang/Object;

    .line 142
    .local v3, nvalues:[Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    iget-object v5, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iput-object v2, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    .line 146
    iput-object v3, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    .line 149
    .end local v1           #n:I
    .end local v2           #nkeys:[J
    .end local v3           #nvalues:[Ljava/lang/Object;
    :cond_3
    iget v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    sub-int/2addr v4, v0

    if-lez v4, :cond_4

    .line 151
    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    iget-object v5, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    :cond_4
    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 156
    iget-object v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 157
    iget v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    goto/16 :goto_0
.end method

.method public registerObserver(Lcom/android/htccontacts/util/SparseLongArray$ArrayObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 335
    .local p0, this:Lcom/android/htccontacts/util/SparseLongArray;,"Lcom/android/htccontacts/util/SparseLongArray<TE;>;"
    iget-object v1, p0, Lcom/android/htccontacts/util/SparseLongArray;->mObservers:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/util/SparseLongArray;->mObservers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/htccontacts/util/SparseLongArray;->mObservers:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_0
    monitor-exit v1

    .line 340
    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(J)V
    .locals 0
    .parameter "key"

    .prologue
    .line 79
    .local p0, this:Lcom/android/htccontacts/util/SparseLongArray;,"Lcom/android/htccontacts/util/SparseLongArray<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/util/SparseLongArray;->delete(J)V

    .line 80
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
    .line 206
    .local p0, this:Lcom/android/htccontacts/util/SparseLongArray;,"Lcom/android/htccontacts/util/SparseLongArray<TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    iget-boolean v0, p0, Lcom/android/htccontacts/util/SparseLongArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/android/htccontacts/util/SparseLongArray;->gc()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 211
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 167
    .local p0, this:Lcom/android/htccontacts/util/SparseLongArray;,"Lcom/android/htccontacts/util/SparseLongArray<TE;>;"
    iget-boolean v0, p0, Lcom/android/htccontacts/util/SparseLongArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/android/htccontacts/util/SparseLongArray;->gc()V

    .line 171
    :cond_0
    iget v0, p0, Lcom/android/htccontacts/util/SparseLongArray;->mSize:I

    return v0
.end method

.method public unregisterObserver(Lcom/android/htccontacts/util/SparseLongArray$ArrayObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 343
    .local p0, this:Lcom/android/htccontacts/util/SparseLongArray;,"Lcom/android/htccontacts/util/SparseLongArray<TE;>;"
    iget-object v1, p0, Lcom/android/htccontacts/util/SparseLongArray;->mObservers:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/util/SparseLongArray;->mObservers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    monitor-exit v1

    .line 346
    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 193
    .local p0, this:Lcom/android/htccontacts/util/SparseLongArray;,"Lcom/android/htccontacts/util/SparseLongArray<TE;>;"
    iget-boolean v0, p0, Lcom/android/htccontacts/util/SparseLongArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/android/htccontacts/util/SparseLongArray;->gc()V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/util/SparseLongArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
