.class public Ljava/util/Random;
.super Ljava/lang/Object;
.source "Random.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final multiplier:J = 0x5deece66dL

.field private static final serialVersionUID:J = 0x363296344bf00a53L


# instance fields
.field private haveNextNextGaussian:Z

.field private nextNextGaussian:D

.field private seed:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/util/Random;->setSeed(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized next(I)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ljava/util/Random;->seed:J

    const-wide v2, 0x5deece66dL

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/Random;->seed:J

    iget-wide v0, p0, Ljava/util/Random;->seed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    rsub-int/lit8 v2, p1, 0x30

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public nextBoolean()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBytes([B)V
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result v3

    const/4 v2, 0x3

    :goto_1
    add-int/lit8 v1, v0, 0x1

    int-to-byte v4, v3

    aput-byte v4, p1, v0

    shr-int/lit8 v3, v3, 0x8

    move v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public nextDouble()D
    .locals 4

    const/16 v2, 0x1b

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v2

    invoke-virtual {p0, v2}, Ljava/util/Random;->next(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x4340

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public nextFloat()F
    .locals 2

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4b80

    div-float/2addr v0, v1

    return v0
.end method

.method public declared-synchronized nextGaussian()D
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    iput-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    iget-wide v8, p0, Ljava/util/Random;->nextNextGaussian:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v8

    :cond_0
    const-wide/high16 v8, 0x4000

    :try_start_1
    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0

    sub-double v4, v8, v10

    const-wide/high16 v8, 0x4000

    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0

    sub-double v6, v8, v10

    mul-double v8, v4, v4

    mul-double v10, v6, v6

    add-double v2, v8, v10

    const-wide/high16 v8, 0x3ff0

    cmpl-double v8, v2, v8

    if-gez v8, :cond_0

    const-wide/high16 v8, -0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    div-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double v8, v6, v0

    iput-wide v8, p0, Ljava/util/Random;->nextNextGaussian:D

    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    mul-double v8, v4, v0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public nextInt()I
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 7

    const/16 v6, 0x1f

    if-lez p1, :cond_1

    neg-int v2, p1

    and-int/2addr v2, p1

    if-ne v2, p1, :cond_0

    int-to-long v2, p1

    invoke-virtual {p0, v6}, Ljava/util/Random;->next(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    shr-long/2addr v2, v6

    long-to-int v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v6}, Ljava/util/Random;->next(I)I

    move-result v0

    rem-int v1, v0, p1

    sub-int v2, v0, v1

    add-int/lit8 v3, p1, -0x1

    add-int/2addr v2, v3

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public nextLong()J
    .locals 4

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v2

    invoke-virtual {p0, v2}, Ljava/util/Random;->next(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized setSeed(J)V
    .locals 4

    monitor-enter p0

    const-wide v0, 0x5deece66dL

    xor-long/2addr v0, p1

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    :try_start_0
    iput-wide v0, p0, Ljava/util/Random;->seed:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Random;->haveNextNextGaussian:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
