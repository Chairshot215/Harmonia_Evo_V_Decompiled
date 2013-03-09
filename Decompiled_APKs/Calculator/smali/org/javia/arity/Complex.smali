.class public Lorg/javia/arity/Complex;
.super Ljava/lang/Object;
.source "Complex.java"


# instance fields
.field public im:D

.field public re:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/javia/arity/Complex;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    .line 45
    return-void
.end method

.method private final normalizeInfinity()Lorg/javia/arity/Complex;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 560
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 561
    iput-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 565
    :cond_0
    :goto_0
    return-object p0

    .line 562
    :cond_1
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    iput-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    goto :goto_0
.end method

.method private final sqrt1z()Lorg/javia/arity/Complex;
    .locals 6

    .prologue
    .line 570
    const-wide/high16 v0, 0x3ff0

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, -0x4000

    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->sqrt()Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0
.end method

.method private final swap()Lorg/javia/arity/Complex;
    .locals 4

    .prologue
    .line 551
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final abs()D
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 118
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 119
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 120
    cmpl-double v4, v0, v5

    if-eqz v4, :cond_0

    cmpl-double v4, v2, v5

    if-nez v4, :cond_1

    .line 121
    :cond_0
    add-double/2addr v0, v2

    .line 125
    :goto_0
    return-wide v0

    .line 123
    :cond_1
    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    const/4 v4, 0x1

    move v6, v4

    .line 124
    :goto_1
    if-eqz v6, :cond_3

    div-double v4, v2, v0

    .line 125
    :goto_2
    if-eqz v6, :cond_4

    :goto_3
    const-wide/high16 v2, 0x3ff0

    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    goto :goto_0

    .line 123
    :cond_2
    const/4 v4, 0x0

    move v6, v4

    goto :goto_1

    .line 124
    :cond_3
    div-double v4, v0, v2

    goto :goto_2

    :cond_4
    move-wide v0, v2

    .line 125
    goto :goto_3
.end method

.method public final abs2()D
    .locals 6

    .prologue
    .line 132
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final acos()Lorg/javia/arity/Complex;
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 460
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 461
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    .line 463
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 464
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 465
    invoke-direct {p0}, Lorg/javia/arity/Complex;->sqrt1z()Lorg/javia/arity/Complex;

    move-result-object v4

    iget-wide v5, p0, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v0, v5

    iget-wide v5, p0, Lorg/javia/arity/Complex;->re:D

    add-double/2addr v2, v5

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    iget-wide v1, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v3, p0, Lorg/javia/arity/Complex;->re:D

    neg-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public final acosh()Lorg/javia/arity/Complex;
    .locals 12

    .prologue
    const-wide/high16 v10, 0x3ff0

    const-wide/16 v2, 0x0

    .line 491
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    cmpl-double v0, v0, v10

    if-ltz v0, :cond_0

    .line 492
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->acosh(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 496
    :goto_0
    return-object v0

    .line 494
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 495
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 496
    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v6, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v8, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    sub-double/2addr v4, v10

    const-wide/high16 v6, 0x4000

    iget-wide v8, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v6, v8

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v4

    invoke-virtual {v4}, Lorg/javia/arity/Complex;->sqrt()Lorg/javia/arity/Complex;

    move-result-object v4

    iget-wide v5, p0, Lorg/javia/arity/Complex;->re:D

    add-double/2addr v0, v5

    iget-wide v5, p0, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v2, v5

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public final add(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 6
    .parameter

    .prologue
    .line 139
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    .line 140
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v4, p1, Lorg/javia/arity/Complex;->re:D

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    .line 141
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p1, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 143
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4090

    mul-double/2addr v0, v4

    cmpg-double v0, v2, v0

    if-gez v0, :cond_0

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 146
    :cond_0
    return-object p0
.end method

.method public final arg()D
    .locals 4

    .prologue
    .line 112
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public asReal()D
    .locals 4

    .prologue
    .line 69
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8

    goto :goto_0
.end method

.method public final asin()Lorg/javia/arity/Complex;
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 450
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 451
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 455
    :goto_0
    return-object v0

    .line 453
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 454
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 455
    invoke-direct {p0}, Lorg/javia/arity/Complex;->sqrt1z()Lorg/javia/arity/Complex;

    move-result-object v4

    iget-wide v5, p0, Lorg/javia/arity/Complex;->re:D

    sub-double v2, v5, v2

    iget-wide v5, p0, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v0, v5

    invoke-virtual {v4, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    iget-wide v1, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v3, p0, Lorg/javia/arity/Complex;->re:D

    neg-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public final asinh()Lorg/javia/arity/Complex;
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 481
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 482
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->asinh(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 486
    :goto_0
    return-object v0

    .line 484
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 485
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 486
    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v6, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v8, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000

    iget-wide v8, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v6, v8

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v4

    invoke-virtual {v4}, Lorg/javia/arity/Complex;->sqrt()Lorg/javia/arity/Complex;

    move-result-object v4

    iget-wide v5, p0, Lorg/javia/arity/Complex;->re:D

    add-double/2addr v0, v5

    iget-wide v5, p0, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v2, v5

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public final atan()Lorg/javia/arity/Complex;
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000

    const-wide/high16 v8, 0x3ff0

    const-wide/16 v2, 0x0

    .line 470
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 471
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 476
    :goto_0
    return-object v0

    .line 473
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, v2

    .line 474
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    .line 475
    add-double v4, v0, v2

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v4, v6

    add-double/2addr v4, v8

    .line 476
    add-double/2addr v0, v2

    sub-double/2addr v0, v8

    neg-double v0, v0

    div-double/2addr v0, v4

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v6, p0, Lorg/javia/arity/Complex;->re:D

    add-double/2addr v2, v6

    neg-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    iget-wide v1, p0, Lorg/javia/arity/Complex;->im:D

    neg-double v1, v1

    div-double/2addr v1, v10

    iget-wide v3, p0, Lorg/javia/arity/Complex;->re:D

    div-double/2addr v3, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public final atanh()Lorg/javia/arity/Complex;
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000

    const-wide/high16 v8, 0x3ff0

    const-wide/16 v2, 0x0

    .line 501
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 502
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->atanh(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    .line 504
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, v2

    .line 505
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    .line 506
    add-double v4, v0, v8

    iget-wide v6, p0, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v4, v6

    .line 507
    sub-double v0, v8, v0

    sub-double/2addr v0, v2

    div-double/2addr v0, v4

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v2, v6

    div-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    iget-wide v1, p0, Lorg/javia/arity/Complex;->re:D

    div-double/2addr v1, v10

    iget-wide v3, p0, Lorg/javia/arity/Complex;->im:D

    div-double/2addr v3, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public final combinations(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 14
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 512
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p1, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    .line 513
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/MoreMath;->combinations(DD)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 528
    :goto_0
    return-object v0

    .line 516
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 517
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 519
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    .line 520
    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    .line 521
    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    .line 523
    invoke-virtual {p0, p1}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v8

    invoke-virtual {v8}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    .line 524
    iget-wide v8, p0, Lorg/javia/arity/Complex;->re:D

    .line 525
    iget-wide v10, p0, Lorg/javia/arity/Complex;->im:D

    .line 527
    iget-wide v12, p1, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v0, v12

    iget-wide v12, p1, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v2, v12

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    .line 528
    sub-double v0, v4, v8

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v0, v2

    sub-double v2, v6, v10

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public final conjugate()Lorg/javia/arity/Complex;
    .locals 4

    .prologue
    .line 76
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    neg-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0
.end method

.method public final cos()Lorg/javia/arity/Complex;
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 422
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public final cosh()Lorg/javia/arity/Complex;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 429
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/javia/arity/Complex;->swap()Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->cos()Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->conjugate()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public final div(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 10
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 227
    iget-wide v0, p1, Lorg/javia/arity/Complex;->re:D

    .line 228
    iget-wide v2, p1, Lorg/javia/arity/Complex;->im:D

    .line 229
    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    cmpl-double v4, v2, v6

    if-nez v4, :cond_0

    .line 230
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    div-double v0, v2, v0

    invoke-virtual {p0, v0, v1, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    .line 232
    :cond_0
    invoke-virtual {p1}, Lorg/javia/arity/Complex;->isInfinite()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->isFinite()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    invoke-virtual {p0, v6, v7, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_1
    cmpl-double v4, v2, v6

    if-nez v4, :cond_3

    .line 236
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    cmpl-double v2, v2, v6

    if-nez v2, :cond_2

    .line 237
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    div-double v0, v2, v0

    invoke-virtual {p0, v6, v7, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0

    .line 239
    :cond_2
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    div-double/2addr v2, v0

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    div-double v0, v4, v0

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_3
    cmpl-double v4, v0, v6

    if-nez v4, :cond_4

    .line 242
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    div-double/2addr v0, v2

    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    neg-double v4, v4

    div-double v2, v4, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_5

    .line 245
    div-double v4, v2, v0

    .line 246
    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 247
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    div-double/2addr v2, v0

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v8, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v4, v8

    sub-double v4, v6, v4

    div-double v0, v4, v0

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0

    .line 249
    :cond_5
    div-double v4, v0, v2

    .line 250
    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    .line 251
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v2, v4

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v2, v6

    div-double/2addr v2, v0

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v4, v6

    div-double v0, v4, v0

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public final equals(Lorg/javia/arity/Complex;)Z
    .locals 4
    .parameter

    .prologue
    .line 105
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final exp()Lorg/javia/arity/Complex;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 326
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    .line 327
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 328
    invoke-virtual {p0, v0, v1, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    :cond_0
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v4, v5}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public final factorial()Lorg/javia/arity/Complex;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 405
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->factorial(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public final gcd(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 12
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    .line 289
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v8

    if-nez v0, :cond_1

    iget-wide v0, p1, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v8

    if-nez v0, :cond_1

    .line 290
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/MoreMath;->gcd(DD)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v8, v9}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    .line 310
    :cond_0
    :goto_0
    return-object p0

    .line 292
    :cond_1
    new-instance v4, Lorg/javia/arity/Complex;

    invoke-direct {v4, p1}, Lorg/javia/arity/Complex;-><init>(Lorg/javia/arity/Complex;)V

    .line 293
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->abs2()D

    move-result-wide v2

    .line 294
    invoke-virtual {v4}, Lorg/javia/arity/Complex;->abs2()D

    move-result-wide v0

    .line 295
    :goto_1
    const-wide v5, 0x46293e5939a08ceaL

    mul-double/2addr v5, v0

    cmpg-double v2, v2, v5

    if-gez v2, :cond_2

    .line 296
    iget-wide v2, v4, Lorg/javia/arity/Complex;->re:D

    .line 297
    iget-wide v5, v4, Lorg/javia/arity/Complex;->im:D

    .line 298
    invoke-virtual {p0, v4}, Lorg/javia/arity/Complex;->mod(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    .line 299
    invoke-virtual {p0, v2, v3, v5, v6}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    .line 301
    invoke-virtual {v4}, Lorg/javia/arity/Complex;->abs2()D

    move-result-wide v2

    move-wide v10, v2

    move-wide v2, v0

    move-wide v0, v10

    .line 302
    goto :goto_1

    .line 304
    :cond_2
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    .line 305
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    neg-double v0, v0

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    .line 307
    :cond_3
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    cmpg-double v0, v0, v8

    if-gez v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->negate()Lorg/javia/arity/Complex;

    goto :goto_0
.end method

.method public final isFinite()Z
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->isNaN()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInfinite()Z
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->isNaN()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isNaN()Z
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final lgamma()Lorg/javia/arity/Complex;
    .locals 15

    .prologue
    .line 374
    const-wide v7, 0x3fefffffffffffe6L

    const-wide/16 v5, 0x0

    .line 375
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v9, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v9

    add-double v3, v0, v2

    .line 376
    iget-wide v1, p0, Lorg/javia/arity/Complex;->re:D

    .line 377
    sget-object v9, Lorg/javia/arity/MoreMath;->GAMMA:[D

    .line 378
    const/4 v0, 0x0

    :goto_0
    array-length v10, v9

    if-ge v0, v10, :cond_0

    .line 379
    const-wide/high16 v10, 0x3ff0

    add-double/2addr v1, v10

    .line 380
    add-double v10, v1, v1

    const-wide/high16 v12, 0x3ff0

    sub-double/2addr v10, v12

    add-double/2addr v3, v10

    .line 381
    aget-wide v10, v9, v0

    .line 382
    mul-double v12, v10, v1

    div-double/2addr v12, v3

    add-double/2addr v7, v12

    .line 383
    iget-wide v12, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v10, v12

    div-double/2addr v10, v3

    sub-double/2addr v5, v10

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    .line 387
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    const-wide v9, 0x4014f80000000000L

    add-double/2addr v2, v9

    .line 388
    iget-wide v9, p0, Lorg/javia/arity/Complex;->im:D

    .line 390
    iput-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    .line 392
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    .line 393
    iget-wide v11, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v11, v0

    iget-wide v13, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v13, v9

    sub-double/2addr v11, v13

    const-wide v13, 0x3fed67f1c864beb5L

    add-double/2addr v11, v13

    sub-double v2, v11, v2

    .line 394
    iget-wide v11, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v0, v11

    iget-wide v11, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v11, v9

    add-double/2addr v0, v11

    sub-double/2addr v0, v9

    .line 396
    invoke-virtual {p0, v7, v8, v5, v6}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v4

    invoke-virtual {v4}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    .line 397
    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    .line 398
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    .line 399
    return-object p0
.end method

.method public final log()Lorg/javia/arity/Complex;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 316
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 317
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    .line 319
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 320
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->abs()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public final mod(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 9
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 278
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 279
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 280
    cmpl-double v4, v2, v6

    if-nez v4, :cond_0

    iget-wide v4, p1, Lorg/javia/arity/Complex;->im:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 281
    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    rem-double/2addr v0, v2

    invoke-virtual {p0, v0, v1, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 283
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/javia/arity/Complex;->div(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v4

    iget-wide v5, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v5, v6}, Ljava/lang/Math;->rint(D)D

    move-result-wide v5

    iget-wide v7, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v7, v8}, Ljava/lang/Math;->rint(D)D

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/javia/arity/Complex;->mul(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v4

    iget-wide v5, p0, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v0, v5

    iget-wide v5, p0, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v2, v5

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method mul(D)Lorg/javia/arity/Complex;
    .locals 2
    .parameter

    .prologue
    .line 163
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 164
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    .line 165
    return-object p0
.end method

.method public final mul(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 14
    .parameter

    .prologue
    .line 171
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v6, p1, Lorg/javia/arity/Complex;->re:D

    iget-wide v4, p1, Lorg/javia/arity/Complex;->im:D

    .line 172
    const-wide/16 v8, 0x0

    cmpl-double v8, v0, v8

    if-nez v8, :cond_1

    const-wide/16 v8, 0x0

    cmpl-double v8, v4, v8

    if-nez v8, :cond_1

    .line 173
    mul-double v0, v2, v6

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    .line 221
    :cond_0
    :goto_0
    return-object p0

    .line 176
    :cond_1
    mul-double v8, v2, v6

    mul-double v10, v0, v4

    sub-double/2addr v8, v10

    .line 177
    mul-double v10, v2, v4

    mul-double v12, v0, v6

    add-double/2addr v10, v12

    .line 179
    invoke-virtual {p0, v8, v9, v10, v11}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v12

    invoke-virtual {v12}, Lorg/javia/arity/Complex;->isNaN()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 183
    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v12

    invoke-virtual {v12}, Lorg/javia/arity/Complex;->isInfinite()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 184
    invoke-direct {p0}, Lorg/javia/arity/Complex;->normalizeInfinity()Lorg/javia/arity/Complex;

    .line 185
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    .line 186
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    .line 189
    :cond_2
    invoke-virtual {p1}, Lorg/javia/arity/Complex;->isInfinite()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 190
    invoke-virtual {p0, v6, v7, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v4

    invoke-direct {v4}, Lorg/javia/arity/Complex;->normalizeInfinity()Lorg/javia/arity/Complex;

    .line 191
    iget-wide v6, p0, Lorg/javia/arity/Complex;->re:D

    .line 192
    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    .line 195
    :cond_3
    const-wide/16 v12, 0x0

    cmpl-double v12, v0, v12

    if-nez v12, :cond_6

    .line 196
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-nez v0, :cond_4

    .line 197
    mul-double v0, v2, v6

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    goto :goto_0

    .line 199
    :cond_4
    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-nez v0, :cond_5

    .line 200
    const-wide/16 v0, 0x0

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    goto :goto_0

    .line 202
    :cond_5
    mul-double v0, v2, v6

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    goto :goto_0

    .line 205
    :cond_6
    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-nez v12, :cond_9

    .line 206
    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-nez v2, :cond_7

    .line 207
    neg-double v0, v0

    mul-double/2addr v0, v4

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    goto :goto_0

    .line 209
    :cond_7
    const-wide/16 v2, 0x0

    cmpl-double v2, v4, v2

    if-nez v2, :cond_8

    .line 210
    const-wide/16 v2, 0x0

    mul-double/2addr v0, v6

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    goto/16 :goto_0

    .line 212
    :cond_8
    neg-double v2, v0

    mul-double/2addr v2, v4

    mul-double/2addr v0, v6

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    goto/16 :goto_0

    .line 215
    :cond_9
    const-wide/16 v12, 0x0

    cmpl-double v12, v4, v12

    if-nez v12, :cond_a

    .line 216
    mul-double/2addr v2, v6

    mul-double/2addr v0, v6

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    goto/16 :goto_0

    .line 218
    :cond_a
    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-nez v6, :cond_b

    .line 219
    neg-double v0, v0

    mul-double/2addr v0, v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    goto/16 :goto_0

    .line 221
    :cond_b
    invoke-virtual {p0, v8, v9, v10, v11}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public final negate()Lorg/javia/arity/Complex;
    .locals 4

    .prologue
    .line 82
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    neg-double v0, v0

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    neg-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0
.end method

.method public final permutations(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 10
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 533
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    iget-wide v0, p1, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_0

    .line 534
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/MoreMath;->permutations(DD)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 545
    :goto_0
    return-object v0

    .line 537
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 538
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 540
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    .line 541
    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    .line 542
    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    .line 544
    iget-wide v8, p1, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v0, v8

    iget-wide v8, p1, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v2, v8

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    .line 545
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    sub-double v0, v4, v0

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    sub-double v2, v6, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public final pow(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 9
    .parameter

    .prologue
    const-wide/high16 v4, 0x4000

    const-wide/16 v6, 0x0

    .line 343
    iget-wide v0, p1, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v6

    if-nez v0, :cond_4

    .line 344
    iget-wide v0, p1, Lorg/javia/arity/Complex;->re:D

    cmpl-double v0, v0, v6

    if-nez v0, :cond_0

    .line 346
    const-wide/high16 v0, 0x3ff0

    invoke-virtual {p0, v0, v1, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    .line 348
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v6

    if-nez v0, :cond_1

    .line 349
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 350
    cmpl-double v2, v0, v0

    if-nez v2, :cond_1

    .line 351
    invoke-virtual {p0, v0, v1, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0

    .line 354
    :cond_1
    iget-wide v0, p1, Lorg/javia/arity/Complex;->re:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_2

    .line 355
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->square()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0

    .line 357
    :cond_2
    iget-wide v0, p1, Lorg/javia/arity/Complex;->re:D

    const-wide/high16 v2, 0x3fe0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    .line 358
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->sqrt()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0

    .line 360
    :cond_3
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->abs2()D

    move-result-wide v0

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 361
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->arg()D

    move-result-wide v2

    iget-wide v4, p1, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v2, v4

    .line 362
    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p0, v4, v5, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_4
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v6

    if-nez v0, :cond_5

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    cmpl-double v0, v0, v6

    if-lez v0, :cond_5

    .line 365
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 366
    iget-wide v2, p1, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v6, v7, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object v2

    iget-wide v3, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v3, v0

    iget-wide v5, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v0, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0

    .line 368
    :cond_5
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    iget-wide v1, p1, Lorg/javia/arity/Complex;->re:D

    iget-wide v3, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v1, v3

    iget-wide v3, p1, Lorg/javia/arity/Complex;->im:D

    iget-wide v5, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    iget-wide v3, p1, Lorg/javia/arity/Complex;->re:D

    iget-wide v5, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v3, v5

    iget-wide v5, p1, Lorg/javia/arity/Complex;->im:D

    iget-wide v7, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public set(DD)Lorg/javia/arity/Complex;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-wide p1, p0, Lorg/javia/arity/Complex;->re:D

    .line 50
    iput-wide p3, p0, Lorg/javia/arity/Complex;->im:D

    .line 51
    return-object p0
.end method

.method public set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-wide v0, p1, Lorg/javia/arity/Complex;->re:D

    iput-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 57
    iget-wide v0, p1, Lorg/javia/arity/Complex;->im:D

    iput-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    .line 58
    return-object p0
.end method

.method public final sin()Lorg/javia/arity/Complex;
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 410
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public final sinh()Lorg/javia/arity/Complex;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 417
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/javia/arity/Complex;->swap()Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->sin()Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-direct {v0}, Lorg/javia/arity/Complex;->swap()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public final sqrt()Lorg/javia/arity/Complex;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 258
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v6

    if-nez v0, :cond_1

    .line 259
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    cmpg-double v0, v0, v6

    if-ltz v0, :cond_0

    .line 260
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    .line 272
    :goto_0
    return-object p0

    .line 262
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-virtual {p0, v6, v7, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    goto :goto_0

    .line 265
    :cond_1
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->abs()D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 266
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_2

    .line 267
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    add-double v4, v0, v0

    div-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    goto :goto_0

    .line 269
    :cond_2
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double v4, v0, v0

    div-double/2addr v2, v4

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_3

    :goto_1
    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    goto :goto_0

    :cond_3
    neg-double v0, v0

    goto :goto_1
.end method

.method public final square()Lorg/javia/arity/Complex;
    .locals 6

    .prologue
    .line 337
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000

    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0
.end method

.method public final sub(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .locals 6
    .parameter

    .prologue
    .line 152
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    .line 153
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v4, p1, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    .line 154
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p1, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 156
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4090

    mul-double/2addr v0, v4

    cmpg-double v0, v2, v0

    if-gez v0, :cond_0

    .line 157
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 159
    :cond_0
    return-object p0
.end method

.method public final tan()Lorg/javia/arity/Complex;
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 434
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 435
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->tan(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 440
    :goto_0
    return-object v0

    .line 437
    :cond_0
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    add-double/2addr v0, v2

    .line 438
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v2, v4

    .line 439
    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 440
    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v0

    div-double/2addr v0, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v2

    div-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public final tanh()Lorg/javia/arity/Complex;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 445
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/javia/arity/Complex;->swap()Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->tan()Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-direct {v0}, Lorg/javia/arity/Complex;->swap()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/javia/arity/Complex;->re:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/javia/arity/Complex;->re:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/javia/arity/Complex;->im:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
