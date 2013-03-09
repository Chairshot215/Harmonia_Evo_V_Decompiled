.class public Lgnu/math/IntNum;
.super Lgnu/math/RatNum;
.source "IntNum.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final maxFixNum:I = 0x400

.field static final minFixNum:I = -0x64

.field static final numFixNum:I = 0x465

.field static final smallFixNums:[Lgnu/math/IntNum;


# instance fields
.field public ival:I

.field public words:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    const/16 v1, 0x465

    new-array v1, v1, [Lgnu/math/IntNum;

    sput-object v1, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    .line 30
    const/16 v0, 0x465

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 31
    sget-object v1, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    new-instance v2, Lgnu/math/IntNum;

    add-int/lit8 v3, v0, -0x64

    invoke-direct {v2, v3}, Lgnu/math/IntNum;-><init>(I)V

    aput-object v2, v1, v0

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lgnu/math/RatNum;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 41
    invoke-direct {p0}, Lgnu/math/RatNum;-><init>()V

    .line 42
    iput p1, p0, Lgnu/math/IntNum;->ival:I

    .line 43
    return-void
.end method

.method public static abs(Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1
    .parameter "x"

    .prologue
    .line 1611
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static final add(II)Lgnu/math/IntNum;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 326
    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static add(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 332
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_0

    .line 333
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v1, p1}, Lgnu/math/IntNum;->add(II)Lgnu/math/IntNum;

    move-result-object v1

    .line 336
    :goto_0
    return-object v1

    .line 334
    :cond_0
    new-instance v0, Lgnu/math/IntNum;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/math/IntNum;-><init>(I)V

    .line 335
    .local v0, result:Lgnu/math/IntNum;
    invoke-virtual {v0, p0, p1}, Lgnu/math/IntNum;->setAdd(Lgnu/math/IntNum;I)V

    .line 336
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0
.end method

.method public static add(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 418
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 13
    .parameter "x"
    .parameter "y"
    .parameter "k"

    .prologue
    const-wide v11, 0xffffffffL

    const/4 v10, 0x1

    .line 430
    iget-object v7, p0, Lgnu/math/IntNum;->words:[I

    if-nez v7, :cond_0

    iget-object v7, p1, Lgnu/math/IntNum;->words:[I

    if-nez v7, :cond_0

    .line 431
    int-to-long v7, p2

    iget v9, p1, Lgnu/math/IntNum;->ival:I

    int-to-long v9, v9

    mul-long/2addr v7, v9

    iget v9, p0, Lgnu/math/IntNum;->ival:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v7

    .line 463
    :goto_0
    return-object v7

    .line 432
    :cond_0
    if-eq p2, v10, :cond_1

    .line 434
    const/4 v7, -0x1

    if-ne p2, v7, :cond_2

    .line 435
    invoke-static {p1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    .line 439
    :cond_1
    :goto_1
    iget-object v7, p0, Lgnu/math/IntNum;->words:[I

    if-nez v7, :cond_3

    .line 440
    iget v7, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {p1, v7}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v7

    goto :goto_0

    .line 437
    :cond_2
    invoke-static {p2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v7

    invoke-static {p1, v7}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    goto :goto_1

    .line 441
    :cond_3
    iget-object v7, p1, Lgnu/math/IntNum;->words:[I

    if-nez v7, :cond_4

    .line 442
    iget v7, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {p0, v7}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v7

    goto :goto_0

    .line 445
    :cond_4
    iget v7, p1, Lgnu/math/IntNum;->ival:I

    iget v8, p0, Lgnu/math/IntNum;->ival:I

    if-le v7, v8, :cond_5

    .line 447
    move-object v4, p0

    .local v4, tmp:Lgnu/math/IntNum;
    move-object p0, p1

    move-object p1, v4

    .line 449
    .end local v4           #tmp:Lgnu/math/IntNum;
    :cond_5
    iget v7, p0, Lgnu/math/IntNum;->ival:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Lgnu/math/IntNum;->alloc(I)Lgnu/math/IntNum;

    move-result-object v3

    .line 450
    .local v3, result:Lgnu/math/IntNum;
    iget v2, p1, Lgnu/math/IntNum;->ival:I

    .line 451
    .local v2, i:I
    iget-object v7, v3, Lgnu/math/IntNum;->words:[I

    iget-object v8, p0, Lgnu/math/IntNum;->words:[I

    iget-object v9, p1, Lgnu/math/IntNum;->words:[I

    invoke-static {v7, v8, v9, v2}, Lgnu/math/MPN;->add_n([I[I[II)I

    move-result v7

    int-to-long v0, v7

    .line 452
    .local v0, carry:J
    iget-object v7, p1, Lgnu/math/IntNum;->words:[I

    sub-int v8, v2, v10

    aget v7, v7, v8

    if-gez v7, :cond_6

    move-wide v5, v11

    .line 453
    .local v5, y_ext:J
    :goto_2
    iget v7, p0, Lgnu/math/IntNum;->ival:I

    if-ge v2, v7, :cond_7

    .line 455
    iget-object v7, p0, Lgnu/math/IntNum;->words:[I

    aget v7, v7, v2

    int-to-long v7, v7

    and-long/2addr v7, v11

    add-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 456
    iget-object v7, v3, Lgnu/math/IntNum;->words:[I

    long-to-int v8, v0

    aput v8, v7, v2

    .line 457
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 453
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 452
    .end local v5           #y_ext:J
    :cond_6
    const-wide/16 v7, 0x0

    move-wide v5, v7

    goto :goto_2

    .line 459
    .restart local v5       #y_ext:J
    :cond_7
    iget-object v7, p0, Lgnu/math/IntNum;->words:[I

    sub-int v8, v2, v10

    aget v7, v7, v8

    if-gez v7, :cond_8

    .line 460
    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    .line 461
    :cond_8
    iget-object v7, v3, Lgnu/math/IntNum;->words:[I

    add-long v8, v0, v5

    long-to-int v8, v8

    aput v8, v7, v2

    .line 462
    add-int/lit8 v7, v2, 0x1

    iput v7, v3, Lgnu/math/IntNum;->ival:I

    .line 463
    invoke-virtual {v3}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public static alloc(I)Lgnu/math/IntNum;
    .locals 2
    .parameter "nwords"

    .prologue
    .line 141
    const/4 v1, 0x1

    if-gt p0, v1, :cond_0

    .line 142
    new-instance v1, Lgnu/math/IntNum;

    invoke-direct {v1}, Lgnu/math/IntNum;-><init>()V

    .line 145
    :goto_0
    return-object v1

    .line 143
    :cond_0
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0}, Lgnu/math/IntNum;-><init>()V

    .line 144
    .local v0, result:Lgnu/math/IntNum;
    new-array v1, p0, [I

    iput-object v1, v0, Lgnu/math/IntNum;->words:[I

    move-object v1, v0

    .line 145
    goto :goto_0
.end method

.method public static asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;
    .locals 2
    .parameter "value"

    .prologue
    .line 92
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 93
    check-cast p0, Lgnu/math/IntNum;

    .end local p0
    move-object v0, p0

    .line 100
    :goto_0
    return-object v0

    .line 94
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    .line 99
    :cond_2
    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    .line 100
    .restart local p0
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compare(Lgnu/math/IntNum;J)I
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 236
    iget-object v5, p0, Lgnu/math/IntNum;->words:[I

    if-nez v5, :cond_0

    .line 237
    iget v5, p0, Lgnu/math/IntNum;->ival:I

    int-to-long v2, v5

    .line 252
    .local v2, x_word:J
    :goto_0
    cmp-long v5, v2, p1

    if-gez v5, :cond_8

    move v5, v8

    .end local v2           #x_word:J
    :goto_1
    return v5

    .line 240
    :cond_0
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v1

    .line 241
    .local v1, x_negative:Z
    const-wide/16 v5, 0x0

    cmp-long v5, p1, v5

    if-gez v5, :cond_1

    move v4, v7

    .line 242
    .local v4, y_negative:Z
    :goto_2
    if-eq v1, v4, :cond_3

    .line 243
    if-eqz v1, :cond_2

    move v5, v8

    goto :goto_1

    .end local v4           #y_negative:Z
    :cond_1
    move v4, v9

    .line 241
    goto :goto_2

    .restart local v4       #y_negative:Z
    :cond_2
    move v5, v7

    .line 243
    goto :goto_1

    .line 244
    :cond_3
    iget-object v5, p0, Lgnu/math/IntNum;->words:[I

    if-nez v5, :cond_4

    move v0, v7

    .line 245
    .local v0, x_len:I
    :goto_3
    if-ne v0, v7, :cond_5

    .line 246
    iget-object v5, p0, Lgnu/math/IntNum;->words:[I

    aget v5, v5, v9

    int-to-long v2, v5

    .restart local v2       #x_word:J
    goto :goto_0

    .line 244
    .end local v0           #x_len:I
    .end local v2           #x_word:J
    :cond_4
    iget v5, p0, Lgnu/math/IntNum;->ival:I

    move v0, v5

    goto :goto_3

    .line 247
    .restart local v0       #x_len:I
    :cond_5
    const/4 v5, 0x2

    if-ne v0, v5, :cond_6

    .line 248
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v2

    .restart local v2       #x_word:J
    goto :goto_0

    .line 250
    .end local v2           #x_word:J
    :cond_6
    if-eqz v1, :cond_7

    move v5, v8

    goto :goto_1

    :cond_7
    move v5, v7

    goto :goto_1

    .line 252
    .end local v0           #x_len:I
    .end local v1           #x_negative:Z
    .end local v4           #y_negative:Z
    .restart local v2       #x_word:J
    :cond_8
    cmp-long v5, v2, p1

    if-lez v5, :cond_9

    move v5, v7

    goto :goto_1

    :cond_9
    move v5, v9

    goto :goto_1
.end method

.method public static compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 219
    iget-object v4, p0, Lgnu/math/IntNum;->words:[I

    if-nez v4, :cond_2

    iget-object v4, p1, Lgnu/math/IntNum;->words:[I

    if-nez v4, :cond_2

    .line 220
    iget v4, p0, Lgnu/math/IntNum;->ival:I

    iget v5, p1, Lgnu/math/IntNum;->ival:I

    if-ge v4, v5, :cond_0

    move v4, v7

    .line 229
    :goto_0
    return v4

    .line 220
    :cond_0
    iget v4, p0, Lgnu/math/IntNum;->ival:I

    iget v5, p1, Lgnu/math/IntNum;->ival:I

    if-le v4, v5, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v8

    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v1

    .line 222
    .local v1, x_negative:Z
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v3

    .line 223
    .local v3, y_negative:Z
    if-eq v1, v3, :cond_4

    .line 224
    if-eqz v1, :cond_3

    move v4, v7

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_0

    .line 225
    :cond_4
    iget-object v4, p0, Lgnu/math/IntNum;->words:[I

    if-nez v4, :cond_5

    move v0, v6

    .line 226
    .local v0, x_len:I
    :goto_1
    iget-object v4, p1, Lgnu/math/IntNum;->words:[I

    if-nez v4, :cond_6

    move v2, v6

    .line 227
    .local v2, y_len:I
    :goto_2
    if-eq v0, v2, :cond_9

    .line 228
    if-le v0, v2, :cond_7

    move v4, v6

    :goto_3
    if-eq v4, v1, :cond_8

    move v4, v6

    goto :goto_0

    .line 225
    .end local v0           #x_len:I
    .end local v2           #y_len:I
    :cond_5
    iget v4, p0, Lgnu/math/IntNum;->ival:I

    move v0, v4

    goto :goto_1

    .line 226
    .restart local v0       #x_len:I
    :cond_6
    iget v4, p1, Lgnu/math/IntNum;->ival:I

    move v2, v4

    goto :goto_2

    .restart local v2       #y_len:I
    :cond_7
    move v4, v8

    .line 228
    goto :goto_3

    :cond_8
    move v4, v7

    goto :goto_0

    .line 229
    :cond_9
    iget-object v4, p0, Lgnu/math/IntNum;->words:[I

    iget-object v5, p1, Lgnu/math/IntNum;->words:[I

    invoke-static {v4, v5, v0}, Lgnu/math/MPN;->cmp([I[II)I

    move-result v4

    goto :goto_0
.end method

.method public static divide(JJLgnu/math/IntNum;Lgnu/math/IntNum;I)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "quotient"
    .parameter "remainder"
    .parameter "rounding_mode"

    .prologue
    .line 553
    const/4 v0, 0x5

    if-ne p6, v0, :cond_0

    .line 554
    const-wide/16 v0, 0x0

    cmp-long p6, p2, v0

    if-gez p6, :cond_1

    .end local p6
    const/4 p6, 0x2

    .line 555
    .restart local p6
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_5

    .line 557
    const/4 v0, 0x1

    .line 558
    .local v0, xNegative:Z
    const-wide/high16 v1, -0x8000

    cmp-long v1, p0, v1

    if-nez v1, :cond_2

    .line 560
    invoke-static {p0, p1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {p2, p3}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v1, v2, p4, p5, p6}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    move p4, v0

    .line 640
    .end local v0           #xNegative:Z
    .end local p5
    .end local p6
    .local p4, xNegative:I
    :goto_1
    return-void

    .line 554
    .local p4, quotient:Lgnu/math/IntNum;
    .restart local p5
    :cond_1
    const/4 p6, 0x1

    goto :goto_0

    .line 564
    .restart local v0       #xNegative:Z
    .restart local p6
    :cond_2
    neg-long p0, p0

    move v6, v0

    .line 569
    .end local v0           #xNegative:Z
    .local v6, xNegative:Z
    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_b

    .line 571
    const/4 v0, 0x1

    .line 572
    .local v0, yNegative:Z
    const-wide/high16 v1, -0x8000

    cmp-long v1, p2, v1

    if-nez v1, :cond_7

    .line 574
    const/4 v0, 0x3

    if-ne p6, v0, :cond_6

    .line 576
    .end local v0           #yNegative:Z
    if-eqz p4, :cond_3

    .line 577
    const/4 p6, 0x0

    invoke-virtual {p4, p6}, Lgnu/math/IntNum;->set(I)V

    .line 578
    .end local p6
    :cond_3
    if-eqz p5, :cond_4

    .line 579
    invoke-virtual {p5, p0, p1}, Lgnu/math/IntNum;->set(J)V

    :cond_4
    :goto_3
    move p4, v6

    .line 584
    .local p4, xNegative:I
    goto :goto_1

    .line 567
    .end local v6           #xNegative:Z
    .local p4, quotient:Lgnu/math/IntNum;
    .restart local p6
    :cond_5
    const/4 v0, 0x0

    .local v0, xNegative:Z
    move v6, v0

    .end local v0           #xNegative:Z
    .restart local v6       #xNegative:Z
    goto :goto_2

    .line 582
    :cond_6
    invoke-static {p0, p1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    invoke-static {p2, p3}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1, p4, p5, p6}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    goto :goto_3

    .line 586
    .local v0, yNegative:Z
    :cond_7
    neg-long p2, p2

    .line 591
    :goto_4
    div-long v1, p0, p2

    .line 592
    .local v1, q:J
    rem-long v4, p0, p2

    .line 593
    .local v4, r:J
    xor-int v3, v6, v0

    .line 595
    .local v3, qNegative:Z
    const/4 v0, 0x0

    .line 596
    .local v0, add_one:Z
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-eqz v7, :cond_8

    .line 598
    packed-switch p6, :pswitch_data_0

    .end local p6
    :cond_8
    move p6, v0

    .line 612
    .end local v0           #add_one:Z
    :goto_5
    if-eqz p4, :cond_12

    .line 614
    if-eqz p6, :cond_11

    .line 615
    const-wide/16 v7, 0x1

    add-long v0, v1, v7

    .line 616
    .end local v1           #q:J
    .local v0, q:J
    :goto_6
    if-eqz v3, :cond_9

    .line 617
    neg-long v0, v0

    .line 618
    :cond_9
    invoke-virtual {p4, v0, v1}, Lgnu/math/IntNum;->set(J)V

    .line 620
    :goto_7
    if-eqz p5, :cond_10

    .line 623
    if-eqz p6, :cond_f

    .line 626
    sub-long v0, p2, v4

    .line 629
    .end local v4           #r:J
    .local v0, r:J
    if-nez v6, :cond_e

    const/4 p4, 0x1

    .line 636
    .end local v6           #xNegative:Z
    .end local p4           #quotient:Lgnu/math/IntNum;
    :goto_8
    if-eqz p4, :cond_a

    .line 637
    neg-long v0, v0

    .line 638
    :cond_a
    invoke-virtual {p5, v0, v1}, Lgnu/math/IntNum;->set(J)V

    move p6, p4

    .local p6, xNegative:I
    move-wide p4, v0

    .end local v0           #r:J
    .end local p5
    .local p4, r:J
    :goto_9
    move p4, p6

    .line 640
    .end local p6           #xNegative:I
    .local p4, xNegative:I
    goto :goto_1

    .line 589
    .end local v3           #qNegative:Z
    .restart local v6       #xNegative:Z
    .local p4, quotient:Lgnu/math/IntNum;
    .restart local p5
    .local p6, rounding_mode:I
    :cond_b
    const/4 v0, 0x0

    .local v0, yNegative:Z
    goto :goto_4

    .local v0, add_one:Z
    .restart local v1       #q:J
    .restart local v3       #qNegative:Z
    .restart local v4       #r:J
    :pswitch_0
    move p6, v0

    .line 601
    .local p6, add_one:I
    goto :goto_5

    .line 604
    .local p6, rounding_mode:I
    :pswitch_1
    const/4 v7, 0x1

    if-ne p6, v7, :cond_c

    const/4 p6, 0x1

    .end local p6           #rounding_mode:I
    :goto_a
    if-ne v3, p6, :cond_8

    .line 605
    const/4 p6, 0x1

    .end local v0           #add_one:Z
    .local p6, add_one:Z
    goto :goto_5

    .line 604
    .restart local v0       #add_one:Z
    .local p6, rounding_mode:I
    :cond_c
    const/4 p6, 0x0

    goto :goto_a

    .line 608
    :pswitch_2
    const-wide/16 v7, 0x1

    and-long/2addr v7, v1

    sub-long v7, p2, v7

    const/4 p6, 0x1

    shr-long/2addr v7, p6

    cmp-long p6, v4, v7

    if-lez p6, :cond_d

    .end local p6           #rounding_mode:I
    const/4 p6, 0x1

    .end local v0           #add_one:Z
    .local p6, add_one:Z
    :goto_b
    goto :goto_5

    .end local p6           #add_one:Z
    .restart local v0       #add_one:Z
    :cond_d
    const/4 p6, 0x0

    goto :goto_b

    .line 629
    .end local v1           #q:J
    .end local v4           #r:J
    .local v0, r:J
    :cond_e
    const/4 p4, 0x0

    goto :goto_8

    .local v0, q:J
    .restart local v4       #r:J
    :cond_f
    move-wide v0, v4

    .end local v4           #r:J
    .local v0, r:J
    move p4, v6

    .local p4, xNegative:I
    goto :goto_8

    .local v0, q:J
    .restart local v4       #r:J
    .local p4, quotient:Lgnu/math/IntNum;
    :cond_10
    move-wide p4, v4

    .end local v4           #r:J
    .end local p5
    .local p4, r:J
    move p6, v6

    .local p6, xNegative:I
    goto :goto_9

    .end local v0           #q:J
    .end local p6           #xNegative:I
    .restart local v1       #q:J
    .restart local v4       #r:J
    .local p4, quotient:Lgnu/math/IntNum;
    .restart local p5
    :cond_11
    move-wide v0, v1

    .end local v1           #q:J
    .restart local v0       #q:J
    goto :goto_6

    .end local v0           #q:J
    .restart local v1       #q:J
    :cond_12
    move-wide v0, v1

    .end local v1           #q:J
    .restart local v0       #q:J
    goto :goto_7

    .line 598
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V
    .locals 15
    .parameter "x"
    .parameter "y"
    .parameter "quotient"
    .parameter "remainder"
    .parameter "rounding_mode"

    .prologue
    .line 654
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    if-eqz v3, :cond_0

    iget v3, p0, Lgnu/math/IntNum;->ival:I

    const/4 v4, 0x2

    if-gt v3, v4, :cond_3

    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/math/IntNum;->words:[I

    move-object v3, v0

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move v3, v0

    const/4 v4, 0x2

    if-gt v3, v4, :cond_3

    .line 657
    :cond_1
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v3

    .line 658
    .local v3, x_l:J
    invoke-virtual/range {p1 .. p1}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v5

    .line 659
    .local v5, y_l:J
    const-wide/high16 v7, -0x8000

    cmp-long v7, v3, v7

    if-eqz v7, :cond_3

    const-wide/high16 v7, -0x8000

    cmp-long v7, v5, v7

    if-eqz v7, :cond_3

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    .line 661
    invoke-static/range {v3 .. v9}, Lgnu/math/IntNum;->divide(JJLgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 823
    .end local v3           #x_l:J
    .end local v5           #y_l:J
    .end local p0
    .end local p1
    .end local p2
    :cond_2
    :goto_0
    return-void

    .line 666
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_3
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v6

    .line 667
    .local v6, xNegative:Z
    invoke-virtual/range {p1 .. p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v9

    .line 668
    .local v9, yNegative:Z
    xor-int v3, v6, v9

    .line 670
    .local v3, qNegative:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/math/IntNum;->words:[I

    move-object v4, v0

    if-nez v4, :cond_4

    const/4 v4, 0x1

    .line 671
    .local v4, ylen:I
    :goto_1
    new-array v11, v4, [I

    .line 672
    .local v11, ywords:[I
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Lgnu/math/IntNum;->getAbsolute([I)V

    move v10, v4

    .line 673
    .end local v4           #ylen:I
    .local v10, ylen:I
    :goto_2
    const/4 v4, 0x1

    if-le v10, v4, :cond_5

    const/4 v4, 0x1

    sub-int v4, v10, v4

    aget v4, v11, v4

    if-nez v4, :cond_5

    add-int/lit8 v4, v10, -0x1

    .end local v10           #ylen:I
    .restart local v4       #ylen:I
    move v10, v4

    .end local v4           #ylen:I
    .restart local v10       #ylen:I
    goto :goto_2

    .line 670
    .end local v10           #ylen:I
    .end local v11           #ywords:[I
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move v4, v0

    goto :goto_1

    .line 675
    .restart local v10       #ylen:I
    .restart local v11       #ywords:[I
    :cond_5
    iget-object v4, p0, Lgnu/math/IntNum;->words:[I

    if-nez v4, :cond_6

    const/4 v4, 0x1

    .line 676
    .local v4, xlen:I
    :goto_3
    add-int/lit8 v5, v4, 0x2

    new-array v8, v5, [I

    .line 677
    .local v8, xwords:[I
    invoke-virtual {p0, v8}, Lgnu/math/IntNum;->getAbsolute([I)V

    move v7, v4

    .line 678
    .end local v4           #xlen:I
    .end local p0
    .local v7, xlen:I
    :goto_4
    const/4 p0, 0x1

    if-le v7, p0, :cond_7

    const/4 p0, 0x1

    sub-int p0, v7, p0

    aget p0, v8, p0

    if-nez p0, :cond_7

    add-int/lit8 p0, v7, -0x1

    .end local v7           #xlen:I
    .local p0, xlen:I
    move v7, p0

    .end local p0           #xlen:I
    .restart local v7       #xlen:I
    goto :goto_4

    .line 675
    .end local v7           #xlen:I
    .end local v8           #xwords:[I
    .local p0, x:Lgnu/math/IntNum;
    :cond_6
    iget v4, p0, Lgnu/math/IntNum;->ival:I

    goto :goto_3

    .line 682
    .end local p0           #x:Lgnu/math/IntNum;
    .restart local v7       #xlen:I
    .restart local v8       #xwords:[I
    :cond_7
    invoke-static {v8, v7, v11, v10}, Lgnu/math/MPN;->cmp([II[II)I

    move-result p0

    .line 683
    .local p0, cmpval:I
    if-gez p0, :cond_8

    .line 685
    move-object p0, v8

    .local p0, rwords:[I
    move-object v5, v11

    .end local v8           #xwords:[I
    .local v5, xwords:[I
    move-object v8, p0

    .line 686
    .end local v11           #ywords:[I
    .local v8, ywords:[I
    move v4, v7

    .local v4, rlen:I
    const/4 p0, 0x1

    .local p0, qlen:I
    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v5, v10

    .end local v10           #ylen:I
    move v13, v4

    .end local v4           #rlen:I
    .local v13, rlen:I
    move v4, p0

    .end local p0           #qlen:I
    .local v4, qlen:I
    move p0, v13

    .end local v13           #rlen:I
    .local p0, rlen:I
    move-object v14, v5

    .end local v5           #xwords:[I
    .local v14, xwords:[I
    move v5, v7

    .end local v7           #xlen:I
    .local v5, xlen:I
    move-object v7, v14

    .line 732
    .end local v14           #xwords:[I
    .local v7, xwords:[I
    :goto_5
    const/4 v10, 0x1

    if-le p0, v10, :cond_b

    const/4 v10, 0x1

    sub-int v10, p0, v10

    aget v10, v8, v10

    if-nez v10, :cond_b

    .line 733
    add-int/lit8 p0, p0, -0x1

    goto :goto_5

    .line 688
    .end local v4           #qlen:I
    .end local v5           #xlen:I
    .local v7, xlen:I
    .local v8, xwords:[I
    .restart local v10       #ylen:I
    .restart local v11       #ywords:[I
    .local p0, cmpval:I
    :cond_8
    if-nez p0, :cond_9

    .line 690
    const/4 p0, 0x0

    const/4 v4, 0x1

    aput v4, v8, p0

    .end local p0           #cmpval:I
    const/4 p0, 0x1

    .line 691
    .local p0, qlen:I
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v11, v4

    const/4 v4, 0x1

    .local v4, rlen:I
    move v5, v7

    .end local v7           #xlen:I
    .restart local v5       #xlen:I
    move-object v7, v8

    .end local v8           #xwords:[I
    .local v7, xwords:[I
    move-object v8, v11

    .end local v11           #ywords:[I
    .local v8, ywords:[I
    move v13, v4

    .end local v4           #rlen:I
    .restart local v13       #rlen:I
    move v4, p0

    .end local p0           #qlen:I
    .local v4, qlen:I
    move p0, v13

    .end local v13           #rlen:I
    .local p0, rlen:I
    goto :goto_5

    .line 693
    .end local v4           #qlen:I
    .end local v5           #xlen:I
    .local v7, xlen:I
    .local v8, xwords:[I
    .restart local v11       #ywords:[I
    .local p0, cmpval:I
    :cond_9
    const/4 p0, 0x1

    if-ne v10, p0, :cond_a

    .line 695
    .end local p0           #cmpval:I
    move p0, v7

    .line 696
    .local p0, qlen:I
    const/4 v4, 0x1

    .line 697
    .local v4, rlen:I
    const/4 v5, 0x0

    const/4 v10, 0x0

    aget v10, v11, v10

    .end local v10           #ylen:I
    invoke-static {v8, v8, v7, v10}, Lgnu/math/MPN;->divmod_1([I[III)I

    move-result v10

    aput v10, v11, v5

    move v5, v7

    .end local v7           #xlen:I
    .restart local v5       #xlen:I
    move-object v7, v8

    .end local v8           #xwords:[I
    .local v7, xwords:[I
    move-object v8, v11

    .end local v11           #ywords:[I
    .local v8, ywords:[I
    move v13, v4

    .end local v4           #rlen:I
    .restart local v13       #rlen:I
    move v4, p0

    .end local p0           #qlen:I
    .local v4, qlen:I
    move p0, v13

    .end local v13           #rlen:I
    .local p0, rlen:I
    goto :goto_5

    .line 705
    .end local v4           #qlen:I
    .end local v5           #xlen:I
    .end local p0           #rlen:I
    .local v7, xlen:I
    .local v8, xwords:[I
    .restart local v10       #ylen:I
    .restart local v11       #ywords:[I
    :cond_a
    const/4 p0, 0x1

    sub-int p0, v10, p0

    aget p0, v11, p0

    invoke-static {p0}, Lgnu/math/MPN;->count_leading_zeros(I)I

    move-result p0

    .line 706
    .local p0, nshift:I
    if-eqz p0, :cond_22

    .line 710
    const/4 v4, 0x0

    invoke-static {v11, v4, v11, v10, p0}, Lgnu/math/MPN;->lshift([II[III)I

    .line 714
    const/4 v4, 0x0

    invoke-static {v8, v4, v8, v7, p0}, Lgnu/math/MPN;->lshift([II[III)I

    move-result v4

    .line 715
    .local v4, x_high:I
    add-int/lit8 v5, v7, 0x1

    .end local v7           #xlen:I
    .restart local v5       #xlen:I
    aput v4, v8, v7

    .line 718
    .end local v4           #x_high:I
    :goto_6
    if-ne v5, v10, :cond_21

    .line 719
    add-int/lit8 v4, v5, 0x1

    .end local v5           #xlen:I
    .local v4, xlen:I
    const/4 v7, 0x0

    aput v7, v8, v5

    move v7, v4

    .line 720
    .end local v4           #xlen:I
    .restart local v7       #xlen:I
    :goto_7
    invoke-static {v8, v7, v11, v10}, Lgnu/math/MPN;->divide([II[II)V

    .line 721
    move v5, v10

    .line 722
    .local v5, rlen:I
    const/4 v4, 0x0

    invoke-static {v11, v8, v4, v5, p0}, Lgnu/math/MPN;->rshift0([I[IIII)V

    .line 724
    add-int/lit8 p0, v7, 0x1

    sub-int v4, p0, v10

    .line 725
    .local v4, qlen:I
    if-eqz p2, :cond_20

    .line 727
    .end local p0           #nshift:I
    const/4 p0, 0x0

    .local p0, i:I
    :goto_8
    if-ge p0, v4, :cond_20

    .line 728
    add-int v12, p0, v10

    aget v12, v8, v12

    aput v12, v8, p0

    .line 727
    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    .line 734
    .end local v10           #ylen:I
    .end local v11           #ywords:[I
    .local v5, xlen:I
    .local v7, xwords:[I
    .local v8, ywords:[I
    .local p0, rlen:I
    :cond_b
    const/4 v5, 0x1

    sub-int v5, p0, v5

    aget v5, v8, v5

    .end local v5           #xlen:I
    if-gez v5, :cond_1f

    .line 736
    const/4 v5, 0x0

    aput v5, v8, p0

    .line 737
    add-int/lit8 p0, p0, 0x1

    move v5, p0

    .line 742
    .end local p0           #rlen:I
    .local v5, rlen:I
    :goto_9
    const/4 p0, 0x0

    .line 743
    .local p0, add_one:Z
    const/4 v10, 0x1

    if-gt v5, v10, :cond_c

    const/4 v10, 0x0

    aget v10, v8, v10

    if-eqz v10, :cond_e

    .line 745
    :cond_c
    const/4 v10, 0x5

    move/from16 v0, p4

    move v1, v10

    if-ne v0, v1, :cond_d

    .line 747
    if-eqz v9, :cond_10

    const/16 p4, 0x2

    .line 749
    :cond_d
    :goto_a
    packed-switch p4, :pswitch_data_0

    .line 772
    :cond_e
    :goto_b
    :pswitch_0
    if-eqz p2, :cond_19

    .line 774
    const/4 v10, 0x1

    sub-int v10, v4, v10

    aget v10, v7, v10

    if-gez v10, :cond_f

    .line 776
    const/4 v10, 0x0

    aput v10, v7, v4

    .line 777
    add-int/lit8 v4, v4, 0x1

    .line 779
    :cond_f
    move-object/from16 v0, p2

    move-object v1, v7

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lgnu/math/IntNum;->set([II)V

    .line 780
    if-eqz v3, :cond_18

    .line 782
    if-eqz p0, :cond_17

    .line 783
    invoke-virtual/range {p2 .. p2}, Lgnu/math/IntNum;->setInvert()V

    move/from16 p2, v4

    .line 790
    .end local v3           #qNegative:Z
    .end local v4           #qlen:I
    .local p2, qlen:I
    :goto_c
    if-eqz p3, :cond_2

    .line 793
    move-object/from16 v0, p3

    move-object v1, v8

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lgnu/math/IntNum;->set([II)V

    .line 794
    if-eqz p0, :cond_1e

    .line 799
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/math/IntNum;->words:[I

    move-object p0, v0

    .end local p0           #add_one:Z
    if-nez p0, :cond_1b

    .line 801
    move-object/from16 p0, p3

    .line 802
    .local p0, tmp:Lgnu/math/IntNum;
    if-eqz v9, :cond_1a

    const/16 p2, 0x0

    aget p2, v8, p2

    .end local p2           #qlen:I
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move/from16 p1, v0

    .end local p1
    add-int p1, p1, p2

    :goto_d
    invoke-virtual/range {p0 .. p1}, Lgnu/math/IntNum;->set(I)V

    .line 810
    :goto_e
    if-eqz v6, :cond_1d

    .line 811
    move-object/from16 v0, p3

    move-object v1, p0

    invoke-virtual {v0, v1}, Lgnu/math/IntNum;->setNegative(Lgnu/math/IntNum;)V

    goto/16 :goto_0

    .line 747
    .restart local v3       #qNegative:Z
    .restart local v4       #qlen:I
    .local p0, add_one:Z
    .restart local p1
    .local p2, quotient:Lgnu/math/IntNum;
    :cond_10
    const/16 p4, 0x1

    goto :goto_a

    .line 755
    :pswitch_1
    const/4 v10, 0x1

    move/from16 v0, p4

    move v1, v10

    if-ne v0, v1, :cond_11

    const/4 v10, 0x1

    :goto_f
    if-ne v3, v10, :cond_e

    .line 756
    const/4 p0, 0x1

    goto :goto_b

    .line 755
    :cond_11
    const/4 v10, 0x0

    goto :goto_f

    .line 760
    :pswitch_2
    if-nez p3, :cond_15

    new-instance p0, Lgnu/math/IntNum;

    .end local p0           #add_one:Z
    invoke-direct {p0}, Lgnu/math/IntNum;-><init>()V

    .line 761
    .local p0, tmp:Lgnu/math/IntNum;
    :goto_10
    invoke-virtual {p0, v8, v5}, Lgnu/math/IntNum;->set([II)V

    .line 762
    const/4 v10, 0x1

    invoke-static {p0, v10}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    .line 763
    if-eqz v9, :cond_12

    .line 764
    invoke-virtual {p0}, Lgnu/math/IntNum;->setNegative()V

    .line 765
    :cond_12
    invoke-static/range {p0 .. p1}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result p0

    .line 767
    .local p0, cmp:I
    if-eqz v9, :cond_13

    .line 768
    neg-int p0, p0

    .line 769
    :cond_13
    const/4 v10, 0x1

    if-eq p0, v10, :cond_14

    if-nez p0, :cond_16

    const/4 p0, 0x0

    aget p0, v7, p0

    .end local p0           #cmp:I
    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    .local p0, add_one:Z
    :goto_11
    goto/16 :goto_b

    :cond_15
    move-object/from16 p0, p3

    .line 760
    goto :goto_10

    .line 769
    .end local p0           #add_one:Z
    :cond_16
    const/4 p0, 0x0

    goto :goto_11

    .line 785
    .restart local p0       #add_one:Z
    :cond_17
    invoke-virtual/range {p2 .. p2}, Lgnu/math/IntNum;->setNegative()V

    move/from16 p2, v4

    .end local v4           #qlen:I
    .local p2, qlen:I
    goto :goto_c

    .line 787
    .restart local v4       #qlen:I
    .local p2, quotient:Lgnu/math/IntNum;
    :cond_18
    if-eqz p0, :cond_19

    .line 788
    const/4 v3, 0x1

    move-object/from16 v0, p2

    move v1, v3

    invoke-virtual {v0, v1}, Lgnu/math/IntNum;->setAdd(I)V

    .end local v3           #qNegative:Z
    :cond_19
    move/from16 p2, v4

    .end local v4           #qlen:I
    .local p2, qlen:I
    goto :goto_c

    .line 802
    .local p0, tmp:Lgnu/math/IntNum;
    :cond_1a
    const/16 p2, 0x0

    aget p2, v8, p2

    .end local p2           #qlen:I
    move-object/from16 v0, p1

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move/from16 p1, v0

    .end local p1
    sub-int p1, p2, p1

    goto :goto_d

    .line 805
    .end local p0           #tmp:Lgnu/math/IntNum;
    .restart local p1
    .restart local p2       #qlen:I
    :cond_1b
    if-eqz v9, :cond_1c

    const/4 p0, 0x1

    :goto_12
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move v2, p0

    invoke-static {v0, v1, v2}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    .restart local p0       #tmp:Lgnu/math/IntNum;
    goto :goto_e

    .end local p0           #tmp:Lgnu/math/IntNum;
    :cond_1c
    const/4 p0, -0x1

    goto :goto_12

    .line 813
    .end local p1
    .end local p2           #qlen:I
    .restart local p0       #tmp:Lgnu/math/IntNum;
    :cond_1d
    move-object/from16 v0, p3

    move-object v1, p0

    invoke-virtual {v0, v1}, Lgnu/math/IntNum;->set(Lgnu/math/IntNum;)V

    goto/16 :goto_0

    .line 819
    .local p0, add_one:Z
    .restart local p1
    .restart local p2       #qlen:I
    :cond_1e
    if-eqz v6, :cond_2

    .line 820
    invoke-virtual/range {p3 .. p3}, Lgnu/math/IntNum;->setNegative()V

    goto/16 :goto_0

    .end local v5           #rlen:I
    .restart local v3       #qNegative:Z
    .restart local v4       #qlen:I
    .local p0, rlen:I
    .local p2, quotient:Lgnu/math/IntNum;
    :cond_1f
    move v5, p0

    .end local p0           #rlen:I
    .restart local v5       #rlen:I
    goto/16 :goto_9

    .local v7, xlen:I
    .local v8, xwords:[I
    .restart local v10       #ylen:I
    .restart local v11       #ywords:[I
    :cond_20
    move p0, v5

    .end local v5           #rlen:I
    .restart local p0       #rlen:I
    move v5, v7

    .end local v7           #xlen:I
    .local v5, xlen:I
    move-object v7, v8

    .end local v8           #xwords:[I
    .local v7, xwords:[I
    move-object v8, v11

    .end local v11           #ywords:[I
    .local v8, ywords:[I
    goto/16 :goto_5

    .end local v4           #qlen:I
    .end local v7           #xwords:[I
    .local v8, xwords:[I
    .restart local v11       #ywords:[I
    .local p0, nshift:I
    :cond_21
    move v7, v5

    .end local v5           #xlen:I
    .local v7, xlen:I
    goto/16 :goto_7

    :cond_22
    move v5, v7

    .end local v7           #xlen:I
    .restart local v5       #xlen:I
    goto/16 :goto_6

    .line 749
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1301
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_1

    iget-object v1, p1, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_1

    .line 1302
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    iget v2, p1, Lgnu/math/IntNum;->ival:I

    if-ne v1, v2, :cond_0

    move v1, v4

    .line 1310
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 1302
    goto :goto_0

    .line 1303
    :cond_1
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    if-eqz v1, :cond_2

    iget-object v1, p1, Lgnu/math/IntNum;->words:[I

    if-eqz v1, :cond_2

    iget v1, p0, Lgnu/math/IntNum;->ival:I

    iget v2, p1, Lgnu/math/IntNum;->ival:I

    if-eq v1, v2, :cond_3

    :cond_2
    move v1, v3

    .line 1304
    goto :goto_0

    .line 1305
    :cond_3
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    .local v0, i:I
    :cond_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5

    .line 1307
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    aget v1, v1, v0

    iget-object v2, p1, Lgnu/math/IntNum;->words:[I

    aget v2, v2, v0

    if-eq v1, v2, :cond_4

    move v1, v3

    .line 1308
    goto :goto_0

    :cond_5
    move v1, v4

    .line 1310
    goto :goto_0
.end method

.method public static final gcd(II)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 934
    if-le p1, p0, :cond_0

    .line 936
    move v0, p0

    .local v0, tmp:I
    move p0, p1

    move p1, v0

    .line 940
    .end local v0           #tmp:I
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    move v1, p0

    .line 943
    :goto_1
    return v1

    .line 942
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    move v1, p1

    .line 943
    goto :goto_1

    .line 946
    :cond_2
    move v0, p1

    .line 947
    .restart local v0       #tmp:I
    rem-int p1, p0, p1

    .line 948
    move p0, v0

    .line 949
    goto :goto_0
.end method

.method public static gcd(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x0

    const/high16 v8, -0x8000

    .line 955
    iget v3, p0, Lgnu/math/IntNum;->ival:I

    .line 956
    .local v3, xval:I
    iget v5, p1, Lgnu/math/IntNum;->ival:I

    .line 957
    .local v5, yval:I
    iget-object v7, p0, Lgnu/math/IntNum;->words:[I

    if-nez v7, :cond_4

    .line 959
    if-nez v3, :cond_0

    .line 960
    invoke-static {p1}, Lgnu/math/IntNum;->abs(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v7

    .line 991
    :goto_0
    return-object v7

    .line 961
    :cond_0
    iget-object v7, p1, Lgnu/math/IntNum;->words:[I

    if-nez v7, :cond_3

    if-eq v3, v8, :cond_3

    if-eq v5, v8, :cond_3

    .line 964
    if-gez v3, :cond_1

    .line 965
    neg-int v3, v3

    .line 966
    :cond_1
    if-gez v5, :cond_2

    .line 967
    neg-int v5, v5

    .line 968
    :cond_2
    invoke-static {v3, v5}, Lgnu/math/IntNum;->gcd(II)I

    move-result v7

    invoke-static {v7}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v7

    goto :goto_0

    .line 970
    :cond_3
    const/4 v3, 0x1

    .line 972
    :cond_4
    iget-object v7, p1, Lgnu/math/IntNum;->words:[I

    if-nez v7, :cond_6

    .line 974
    if-nez v5, :cond_5

    .line 975
    invoke-static {p0}, Lgnu/math/IntNum;->abs(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v7

    goto :goto_0

    .line 976
    :cond_5
    const/4 v5, 0x1

    .line 978
    :cond_6
    if-le v3, v5, :cond_8

    move v0, v3

    .line 979
    .local v0, len:I
    :goto_1
    new-array v4, v0, [I

    .line 980
    .local v4, xwords:[I
    new-array v6, v0, [I

    .line 981
    .local v6, ywords:[I
    invoke-virtual {p0, v4}, Lgnu/math/IntNum;->getAbsolute([I)V

    .line 982
    invoke-virtual {p1, v6}, Lgnu/math/IntNum;->getAbsolute([I)V

    .line 983
    invoke-static {v4, v6, v0}, Lgnu/math/MPN;->gcd([I[II)I

    move-result v0

    .line 984
    new-instance v2, Lgnu/math/IntNum;

    invoke-direct {v2, v9}, Lgnu/math/IntNum;-><init>(I)V

    .line 987
    .local v2, result:Lgnu/math/IntNum;
    const/4 v7, 0x1

    sub-int v7, v0, v7

    aget v7, v4, v7

    if-gez v7, :cond_7

    .line 988
    add-int/lit8 v1, v0, 0x1

    .end local v0           #len:I
    .local v1, len:I
    aput v9, v4, v0

    move v0, v1

    .line 989
    .end local v1           #len:I
    .restart local v0       #len:I
    :cond_7
    iput v0, v2, Lgnu/math/IntNum;->ival:I

    .line 990
    iput-object v4, v2, Lgnu/math/IntNum;->words:[I

    .line 991
    invoke-virtual {v2}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v7

    goto :goto_0

    .end local v0           #len:I
    .end local v2           #result:Lgnu/math/IntNum;
    .end local v4           #xwords:[I
    .end local v6           #ywords:[I
    :cond_8
    move v0, v5

    .line 978
    goto :goto_1
.end method

.method public static intValue(Ljava/lang/Object;)I
    .locals 4
    .parameter "obj"

    .prologue
    .line 1277
    move-object v0, p0

    check-cast v0, Lgnu/math/IntNum;

    move-object v1, v0

    .line 1278
    .local v1, inum:Lgnu/math/IntNum;
    iget-object v2, v1, Lgnu/math/IntNum;->words:[I

    if-eqz v2, :cond_0

    .line 1280
    new-instance v2, Ljava/lang/ClassCastException;

    const-string v3, "integer too large"

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1281
    :cond_0
    iget v2, v1, Lgnu/math/IntNum;->ival:I

    return v2
.end method

.method public static lcm(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 996
    invoke-virtual {p0}, Lgnu/math/IntNum;->isZero()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lgnu/math/IntNum;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 997
    :cond_0
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    .line 1002
    :goto_0
    return-object v1

    .line 998
    :cond_1
    invoke-static {p0}, Lgnu/math/IntNum;->abs(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    .line 999
    invoke-static {p1}, Lgnu/math/IntNum;->abs(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    .line 1000
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0}, Lgnu/math/IntNum;-><init>()V

    .line 1001
    .local v0, quotient:Lgnu/math/IntNum;
    invoke-static {p0, p1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {p0, p1}, Lgnu/math/IntNum;->gcd(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v1, v2, v0, v3, v4}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 1002
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0
.end method

.method public static make(I)Lgnu/math/IntNum;
    .locals 2
    .parameter "value"

    .prologue
    const/16 v1, -0x64

    .line 48
    if-lt p0, v1, :cond_0

    const/16 v0, 0x400

    if-gt p0, v0, :cond_0

    .line 49
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    sub-int v1, p0, v1

    aget-object v0, v0, v1

    .line 51
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0, p0}, Lgnu/math/IntNum;-><init>(I)V

    goto :goto_0
.end method

.method public static make(J)Lgnu/math/IntNum;
    .locals 6
    .parameter "value"

    .prologue
    const/4 v4, 0x2

    .line 78
    const-wide/16 v2, -0x64

    cmp-long v2, p0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x400

    cmp-long v2, p0, v2

    if-gtz v2, :cond_0

    .line 79
    sget-object v2, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    long-to-int v3, p0

    const/16 v4, -0x64

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    .line 87
    :goto_0
    return-object v2

    .line 80
    :cond_0
    long-to-int v0, p0

    .line 81
    .local v0, i:I
    int-to-long v2, v0

    cmp-long v2, v2, p0

    if-nez v2, :cond_1

    .line 82
    new-instance v2, Lgnu/math/IntNum;

    invoke-direct {v2, v0}, Lgnu/math/IntNum;-><init>(I)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {v4}, Lgnu/math/IntNum;->alloc(I)Lgnu/math/IntNum;

    move-result-object v1

    .line 84
    .local v1, result:Lgnu/math/IntNum;
    iput v4, v1, Lgnu/math/IntNum;->ival:I

    .line 85
    iget-object v2, v1, Lgnu/math/IntNum;->words:[I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 86
    iget-object v2, v1, Lgnu/math/IntNum;->words:[I

    const/4 v3, 0x1

    const/16 v4, 0x20

    shr-long v4, p0, v4

    long-to-int v4, v4

    aput v4, v2, v3

    move-object v2, v1

    .line 87
    goto :goto_0
.end method

.method public static make([I)Lgnu/math/IntNum;
    .locals 1
    .parameter "words"

    .prologue
    .line 133
    array-length v0, p0

    invoke-static {p0, v0}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static make([II)Lgnu/math/IntNum;
    .locals 2
    .parameter "words"
    .parameter "len"

    .prologue
    .line 120
    if-nez p0, :cond_0

    .line 121
    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    .line 128
    :goto_0
    return-object v1

    .line 122
    :cond_0
    invoke-static {p0, p1}, Lgnu/math/IntNum;->wordsNeeded([II)I

    move-result p1

    .line 123
    const/4 v1, 0x1

    if-gt p1, v1, :cond_2

    .line 124
    if-nez p1, :cond_1

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    aget v1, p0, v1

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0

    .line 125
    :cond_2
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0}, Lgnu/math/IntNum;-><init>()V

    .line 126
    .local v0, num:Lgnu/math/IntNum;
    iput-object p0, v0, Lgnu/math/IntNum;->words:[I

    .line 127
    iput p1, v0, Lgnu/math/IntNum;->ival:I

    move-object v1, v0

    .line 128
    goto :goto_0
.end method

.method public static makeU(J)Lgnu/math/IntNum;
    .locals 6
    .parameter "value"

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 106
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-ltz v1, :cond_0

    .line 107
    invoke-static {p0, p1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v1

    .line 113
    :goto_0
    return-object v1

    .line 108
    :cond_0
    invoke-static {v3}, Lgnu/math/IntNum;->alloc(I)Lgnu/math/IntNum;

    move-result-object v0

    .line 109
    .local v0, result:Lgnu/math/IntNum;
    iput v3, v0, Lgnu/math/IntNum;->ival:I

    .line 110
    iget-object v1, v0, Lgnu/math/IntNum;->words:[I

    long-to-int v2, p0

    aput v2, v1, v5

    .line 111
    iget-object v1, v0, Lgnu/math/IntNum;->words:[I

    const/4 v2, 0x1

    const/16 v3, 0x20

    shr-long v3, p0, v3

    long-to-int v3, v3

    aput v3, v1, v2

    .line 112
    iget-object v1, v0, Lgnu/math/IntNum;->words:[I

    const/4 v2, 0x2

    aput v5, v1, v2

    move-object v1, v0

    .line 113
    goto :goto_0
.end method

.method public static minusOne()Lgnu/math/IntNum;
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    const/16 v1, 0x63

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 863
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lgnu/math/IntNum;->remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 3
    .parameter "x"

    .prologue
    .line 1616
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_0

    iget v1, p0, Lgnu/math/IntNum;->ival:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_0

    .line 1617
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    neg-int v1, v1

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    .line 1620
    :goto_0
    return-object v1

    .line 1618
    :cond_0
    new-instance v0, Lgnu/math/IntNum;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/math/IntNum;-><init>(I)V

    .line 1619
    .local v0, result:Lgnu/math/IntNum;
    invoke-virtual {v0, p0}, Lgnu/math/IntNum;->setNegative(Lgnu/math/IntNum;)V

    .line 1620
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0
.end method

.method public static negate([I[II)Z
    .locals 10
    .parameter "dest"
    .parameter "src"
    .parameter "len"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1573
    const-wide/16 v0, 0x1

    .line 1574
    .local v0, carry:J
    sub-int v4, p2, v8

    aget v4, p1, v4

    if-gez v4, :cond_0

    move v3, v8

    .line 1575
    .local v3, negative:Z
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, p2, :cond_1

    .line 1577
    aget v4, p1, v2

    xor-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 1578
    long-to-int v4, v0

    aput v4, p0, v2

    .line 1579
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1575
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2           #i:I
    .end local v3           #negative:Z
    :cond_0
    move v3, v9

    .line 1574
    goto :goto_0

    .line 1581
    .restart local v2       #i:I
    .restart local v3       #negative:Z
    :cond_1
    if-eqz v3, :cond_2

    sub-int v4, p2, v8

    aget v4, p0, v4

    if-gez v4, :cond_2

    move v4, v8

    :goto_2
    return v4

    :cond_2
    move v4, v9

    goto :goto_2
.end method

.method public static final one()Lgnu/math/IntNum;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    const/16 v1, 0x65

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 885
    if-gtz p1, :cond_1

    .line 887
    if-nez p1, :cond_0

    .line 888
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v8

    .line 927
    :goto_0
    return-object v8

    .line 890
    :cond_0
    new-instance v8, Ljava/lang/Error;

    const-string v9, "negative exponent"

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 892
    :cond_1
    invoke-virtual {p0}, Lgnu/math/IntNum;->isZero()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, p0

    .line 893
    goto :goto_0

    .line 894
    :cond_2
    iget-object v8, p0, Lgnu/math/IntNum;->words:[I

    if-nez v8, :cond_4

    move v2, v10

    .line 895
    .local v2, plen:I
    :goto_1
    invoke-virtual {p0}, Lgnu/math/IntNum;->intLength()I

    move-result v8

    mul-int/2addr v8, p1

    shr-int/lit8 v8, v8, 0x5

    mul-int/lit8 v9, v2, 0x2

    add-int v0, v8, v9

    .line 896
    .local v0, blen:I
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v8

    if-eqz v8, :cond_5

    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_5

    move v1, v10

    .line 897
    .local v1, negative:Z
    :goto_2
    new-array v3, v0, [I

    .line 898
    .local v3, pow2:[I
    new-array v5, v0, [I

    .line 899
    .local v5, rwords:[I
    new-array v7, v0, [I

    .line 900
    .local v7, work:[I
    invoke-virtual {p0, v3}, Lgnu/math/IntNum;->getAbsolute([I)V

    .line 901
    const/4 v4, 0x1

    .line 902
    .local v4, rlen:I
    aput v10, v5, v11

    .line 907
    :cond_3
    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_6

    .line 909
    invoke-static {v7, v3, v2, v5, v4}, Lgnu/math/MPN;->mul([I[II[II)V

    .line 910
    move-object v6, v7

    .local v6, temp:[I
    move-object v7, v5

    move-object v5, v6

    .line 911
    add-int/2addr v4, v2

    .line 912
    :goto_3
    sub-int v8, v4, v10

    aget v8, v5, v8

    if-nez v8, :cond_6

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 894
    .end local v0           #blen:I
    .end local v1           #negative:Z
    .end local v2           #plen:I
    .end local v3           #pow2:[I
    .end local v4           #rlen:I
    .end local v5           #rwords:[I
    .end local v6           #temp:[I
    .end local v7           #work:[I
    :cond_4
    iget v8, p0, Lgnu/math/IntNum;->ival:I

    move v2, v8

    goto :goto_1

    .restart local v0       #blen:I
    .restart local v2       #plen:I
    :cond_5
    move v1, v11

    .line 896
    goto :goto_2

    .line 914
    .restart local v1       #negative:Z
    .restart local v3       #pow2:[I
    .restart local v4       #rlen:I
    .restart local v5       #rwords:[I
    .restart local v7       #work:[I
    :cond_6
    shr-int/lit8 p1, p1, 0x1

    .line 915
    if-nez p1, :cond_9

    .line 923
    sub-int v8, v4, v10

    aget v8, v5, v8

    if-gez v8, :cond_7

    .line 924
    add-int/lit8 v4, v4, 0x1

    .line 925
    :cond_7
    if-eqz v1, :cond_8

    .line 926
    invoke-static {v5, v5, v4}, Lgnu/math/IntNum;->negate([I[II)Z

    .line 927
    :cond_8
    invoke-static {v5, v4}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object v8

    goto :goto_0

    .line 918
    :cond_9
    invoke-static {v7, v3, v2, v3, v2}, Lgnu/math/MPN;->mul([I[II[II)V

    .line 919
    move-object v6, v7

    .restart local v6       #temp:[I
    move-object v7, v3

    move-object v3, v6

    .line 920
    mul-int/lit8 v2, v2, 0x2

    .line 921
    :goto_4
    sub-int v8, v2, v10

    aget v8, v3, v8

    if-nez v8, :cond_3

    add-int/lit8 v2, v2, -0x1

    goto :goto_4
.end method

.method public static quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 834
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "rounding_mode"

    .prologue
    .line 827
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0}, Lgnu/math/IntNum;-><init>()V

    .line 828
    .local v0, quotient:Lgnu/math/IntNum;
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 829
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v1

    return-object v1
.end method

.method public static remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 858
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lgnu/math/IntNum;->remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "rounding_mode"

    .prologue
    .line 849
    invoke-virtual {p1}, Lgnu/math/IntNum;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 853
    :goto_0
    return-object v1

    .line 851
    :cond_0
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0}, Lgnu/math/IntNum;-><init>()V

    .line 852
    .local v0, rem:Lgnu/math/IntNum;
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 853
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0
.end method

.method public static shift(II)I
    .locals 2
    .parameter "x"
    .parameter "count"

    .prologue
    const/16 v1, 0x20

    const/4 v0, 0x0

    .line 1110
    if-lt p1, v1, :cond_1

    .line 1117
    :cond_0
    :goto_0
    return v0

    .line 1112
    :cond_1
    if-ltz p1, :cond_2

    .line 1113
    shl-int v0, p0, p1

    goto :goto_0

    .line 1114
    :cond_2
    neg-int p1, p1

    .line 1115
    if-lt p1, v1, :cond_3

    .line 1116
    if-gez p0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1117
    :cond_3
    shr-int v0, p0, p1

    goto :goto_0
.end method

.method public static shift(JI)J
    .locals 3
    .parameter "x"
    .parameter "count"

    .prologue
    const/16 v0, 0x20

    const-wide/16 v1, 0x0

    .line 1122
    if-lt p2, v0, :cond_0

    move-wide v0, v1

    .line 1129
    :goto_0
    return-wide v0

    .line 1124
    :cond_0
    if-ltz p2, :cond_1

    .line 1125
    shl-long v0, p0, p2

    goto :goto_0

    .line 1126
    :cond_1
    neg-int p2, p2

    .line 1127
    if-lt p2, v0, :cond_3

    .line 1128
    cmp-long v0, p0, v1

    if-gez v0, :cond_2

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_2
    move-wide v0, v1

    goto :goto_0

    .line 1129
    :cond_3
    shr-long v0, p0, p2

    goto :goto_0
.end method

.method public static shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 3
    .parameter "x"
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 1094
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_3

    .line 1096
    if-gtz p1, :cond_2

    .line 1097
    const/16 v1, -0x20

    if-le p1, v1, :cond_0

    iget v1, p0, Lgnu/math/IntNum;->ival:I

    neg-int v2, p1

    shr-int/2addr v1, v2

    :goto_0
    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    .line 1105
    :goto_1
    return-object v1

    .line 1097
    :cond_0
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    if-gez v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 1098
    :cond_2
    const/16 v1, 0x20

    if-ge p1, v1, :cond_3

    .line 1099
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    int-to-long v1, v1

    shl-long/2addr v1, p1

    invoke-static {v1, v2}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_1

    .line 1101
    :cond_3
    if-nez p1, :cond_4

    move-object v1, p0

    .line 1102
    goto :goto_1

    .line 1103
    :cond_4
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0, v2}, Lgnu/math/IntNum;-><init>(I)V

    .line 1104
    .local v0, result:Lgnu/math/IntNum;
    invoke-virtual {v0, p0, p1}, Lgnu/math/IntNum;->setShift(Lgnu/math/IntNum;I)V

    .line 1105
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_1
.end method

.method public static sub(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 424
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static final ten()Lgnu/math/IntNum;
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    const/16 v1, 0x6e

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static final times(II)Lgnu/math/IntNum;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 469
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static final times(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    .line 474
    if-nez p1, :cond_0

    .line 475
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v4

    .line 501
    :goto_0
    return-object v4

    .line 476
    :cond_0
    if-ne p1, v5, :cond_1

    move-object v4, p0

    .line 477
    goto :goto_0

    .line 478
    :cond_1
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    .line 479
    .local v3, xwords:[I
    iget v2, p0, Lgnu/math/IntNum;->ival:I

    .line 480
    .local v2, xlen:I
    if-nez v3, :cond_2

    .line 481
    int-to-long v4, v2

    int-to-long v6, p1

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v4

    goto :goto_0

    .line 483
    :cond_2
    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Lgnu/math/IntNum;->alloc(I)Lgnu/math/IntNum;

    move-result-object v1

    .line 484
    .local v1, result:Lgnu/math/IntNum;
    sub-int v4, v2, v5

    aget v4, v3, v4

    if-gez v4, :cond_5

    .line 486
    const/4 v0, 0x1

    .line 487
    .local v0, negative:Z
    iget-object v4, v1, Lgnu/math/IntNum;->words:[I

    invoke-static {v4, v3, v2}, Lgnu/math/IntNum;->negate([I[II)Z

    .line 488
    iget-object v3, v1, Lgnu/math/IntNum;->words:[I

    .line 492
    :goto_1
    if-gez p1, :cond_3

    .line 494
    if-nez v0, :cond_6

    move v0, v5

    .line 495
    :goto_2
    neg-int p1, p1

    .line 497
    :cond_3
    iget-object v4, v1, Lgnu/math/IntNum;->words:[I

    iget-object v5, v1, Lgnu/math/IntNum;->words:[I

    invoke-static {v5, v3, v2, p1}, Lgnu/math/MPN;->mul_1([I[III)I

    move-result v5

    aput v5, v4, v2

    .line 498
    add-int/lit8 v4, v2, 0x1

    iput v4, v1, Lgnu/math/IntNum;->ival:I

    .line 499
    if-eqz v0, :cond_4

    .line 500
    invoke-virtual {v1}, Lgnu/math/IntNum;->setNegative()V

    .line 501
    :cond_4
    invoke-virtual {v1}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v4

    goto :goto_0

    .line 491
    .end local v0           #negative:Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #negative:Z
    goto :goto_1

    .line 494
    :cond_6
    const/4 v4, 0x0

    move v0, v4

    goto :goto_2
.end method

.method public static final times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 506
    iget-object v8, p1, Lgnu/math/IntNum;->words:[I

    if-nez v8, :cond_0

    .line 507
    iget v8, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {p0, v8}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v8

    .line 545
    :goto_0
    return-object v8

    .line 508
    :cond_0
    iget-object v8, p0, Lgnu/math/IntNum;->words:[I

    if-nez v8, :cond_1

    .line 509
    iget v8, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {p1, v8}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v8

    goto :goto_0

    .line 510
    :cond_1
    const/4 v0, 0x0

    .line 513
    .local v0, negative:Z
    iget v4, p0, Lgnu/math/IntNum;->ival:I

    .line 514
    .local v4, xlen:I
    iget v6, p1, Lgnu/math/IntNum;->ival:I

    .line 515
    .local v6, ylen:I
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 517
    const/4 v0, 0x1

    .line 518
    new-array v5, v4, [I

    .line 519
    .local v5, xwords:[I
    iget-object v8, p0, Lgnu/math/IntNum;->words:[I

    invoke-static {v5, v8, v4}, Lgnu/math/IntNum;->negate([I[II)Z

    .line 526
    :goto_1
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 528
    if-nez v0, :cond_5

    const/4 v8, 0x1

    move v0, v8

    .line 529
    :goto_2
    new-array v7, v6, [I

    .line 530
    .local v7, ywords:[I
    iget-object v8, p1, Lgnu/math/IntNum;->words:[I

    invoke-static {v7, v8, v6}, Lgnu/math/IntNum;->negate([I[II)Z

    .line 535
    :goto_3
    if-ge v4, v6, :cond_2

    .line 537
    move-object v3, v5

    .local v3, twords:[I
    move-object v5, v7

    move-object v7, v3

    .line 538
    move v2, v4

    .local v2, tlen:I
    move v4, v6

    move v6, v2

    .line 540
    .end local v2           #tlen:I
    .end local v3           #twords:[I
    :cond_2
    add-int v8, v4, v6

    invoke-static {v8}, Lgnu/math/IntNum;->alloc(I)Lgnu/math/IntNum;

    move-result-object v1

    .line 541
    .local v1, result:Lgnu/math/IntNum;
    iget-object v8, v1, Lgnu/math/IntNum;->words:[I

    invoke-static {v8, v5, v4, v7, v6}, Lgnu/math/MPN;->mul([I[II[II)V

    .line 542
    add-int v8, v4, v6

    iput v8, v1, Lgnu/math/IntNum;->ival:I

    .line 543
    if-eqz v0, :cond_3

    .line 544
    invoke-virtual {v1}, Lgnu/math/IntNum;->setNegative()V

    .line 545
    :cond_3
    invoke-virtual {v1}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v8

    goto :goto_0

    .line 523
    .end local v1           #result:Lgnu/math/IntNum;
    .end local v5           #xwords:[I
    .end local v7           #ywords:[I
    :cond_4
    const/4 v0, 0x0

    .line 524
    iget-object v5, p0, Lgnu/math/IntNum;->words:[I

    .restart local v5       #xwords:[I
    goto :goto_1

    .line 528
    :cond_5
    const/4 v8, 0x0

    move v0, v8

    goto :goto_2

    .line 533
    :cond_6
    iget-object v7, p1, Lgnu/math/IntNum;->words:[I

    .restart local v7       #ywords:[I
    goto :goto_3
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/math/IntNum;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 1401
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;
    .locals 12
    .parameter "s"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x2b

    const/4 v10, 0x1

    .line 1347
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1350
    .local v6, len:I
    add-int v8, v6, p1

    const/16 v9, 0x1c

    if-gt v8, v9, :cond_1

    .line 1353
    if-le v6, v10, :cond_0

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v11, :cond_0

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    if-ltz v8, :cond_0

    .line 1355
    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1357
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    invoke-static {v8, v9}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v8

    .line 1380
    :goto_0
    return-object v8

    .line 1360
    :cond_1
    const/4 v0, 0x0

    .line 1361
    .local v0, byte_len:I
    new-array v2, v6, [B

    .line 1362
    .local v2, bytes:[B
    const/4 v7, 0x0

    .line 1363
    .local v7, negative:Z
    const/4 v5, 0x0

    .local v5, i:I
    move v1, v0

    .end local v0           #byte_len:I
    .local v1, byte_len:I
    :goto_1
    if-ge v5, v6, :cond_6

    .line 1365
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1366
    .local v3, ch:C
    const/16 v8, 0x2d

    if-ne v3, v8, :cond_2

    if-nez v5, :cond_2

    .line 1367
    const/4 v7, 0x1

    move v0, v1

    .line 1363
    .end local v1           #byte_len:I
    .restart local v0       #byte_len:I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    .end local v0           #byte_len:I
    .restart local v1       #byte_len:I
    goto :goto_1

    .line 1368
    :cond_2
    if-ne v3, v11, :cond_3

    if-nez v5, :cond_3

    move v0, v1

    .line 1369
    .end local v1           #byte_len:I
    .restart local v0       #byte_len:I
    goto :goto_2

    .line 1370
    .end local v0           #byte_len:I
    .restart local v1       #byte_len:I
    :cond_3
    const/16 v8, 0x5f

    if-eq v3, v8, :cond_7

    if-nez v1, :cond_4

    const/16 v8, 0x20

    if-eq v3, v8, :cond_7

    const/16 v8, 0x9

    if-ne v3, v8, :cond_4

    move v0, v1

    .line 1371
    .end local v1           #byte_len:I
    .restart local v0       #byte_len:I
    goto :goto_2

    .line 1374
    .end local v0           #byte_len:I
    .restart local v1       #byte_len:I
    :cond_4
    invoke-static {v3, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 1375
    .local v4, digit:I
    if-gez v4, :cond_5

    .line 1376
    new-instance v8, Ljava/lang/NumberFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "For input string: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1377
    :cond_5
    add-int/lit8 v0, v1, 0x1

    .end local v1           #byte_len:I
    .restart local v0       #byte_len:I
    int-to-byte v8, v4

    aput-byte v8, v2, v1

    goto :goto_2

    .line 1380
    .end local v0           #byte_len:I
    .end local v3           #ch:C
    .end local v4           #digit:I
    .restart local v1       #byte_len:I
    :cond_6
    invoke-static {v2, v1, v7, p1}, Lgnu/math/IntNum;->valueOf([BIZI)Lgnu/math/IntNum;

    move-result-object v8

    goto :goto_0

    .restart local v3       #ch:C
    :cond_7
    move v0, v1

    .end local v1           #byte_len:I
    .restart local v0       #byte_len:I
    goto :goto_2
.end method

.method public static valueOf([BIZI)Lgnu/math/IntNum;
    .locals 5
    .parameter "digits"
    .parameter "byte_len"
    .parameter "negative"
    .parameter "radix"

    .prologue
    .line 1386
    invoke-static {p3}, Lgnu/math/MPN;->chars_per_word(I)I

    move-result v0

    .line 1387
    .local v0, chars_per_word:I
    div-int v4, p1, v0

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [I

    .line 1388
    .local v3, words:[I
    invoke-static {v3, p0, p1, p3}, Lgnu/math/MPN;->set_str([I[BII)I

    move-result v1

    .line 1389
    .local v1, size:I
    if-nez v1, :cond_0

    .line 1390
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v4

    .line 1395
    :goto_0
    return-object v4

    .line 1391
    :cond_0
    const/4 v4, 0x1

    sub-int v4, v1, v4

    aget v4, v3, v4

    if-gez v4, :cond_1

    .line 1392
    add-int/lit8 v2, v1, 0x1

    .end local v1           #size:I
    .local v2, size:I
    const/4 v4, 0x0

    aput v4, v3, v1

    move v1, v2

    .line 1393
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_1
    if-eqz p2, :cond_2

    .line 1394
    invoke-static {v3, v3, v1}, Lgnu/math/IntNum;->negate([I[II)Z

    .line 1395
    :cond_2
    invoke-static {v3, v1}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object v4

    goto :goto_0
.end method

.method public static valueOf([CIIIZ)Lgnu/math/IntNum;
    .locals 7
    .parameter "buf"
    .parameter "offset"
    .parameter "length"
    .parameter "radix"
    .parameter "negative"

    .prologue
    .line 1324
    const/4 v0, 0x0

    .line 1325
    .local v0, byte_len:I
    new-array v2, p2, [B

    .line 1326
    .local v2, bytes:[B
    const/4 v5, 0x0

    .local v5, i:I
    move v1, v0

    .end local v0           #byte_len:I
    .local v1, byte_len:I
    :goto_0
    if-ge v5, p2, :cond_2

    .line 1328
    add-int v6, p1, v5

    aget-char v3, p0, v6

    .line 1329
    .local v3, ch:C
    const/16 v6, 0x2d

    if-ne v3, v6, :cond_0

    .line 1330
    const/4 p4, 0x1

    move v0, v1

    .line 1326
    .end local v1           #byte_len:I
    .restart local v0       #byte_len:I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    .end local v0           #byte_len:I
    .restart local v1       #byte_len:I
    goto :goto_0

    .line 1331
    :cond_0
    const/16 v6, 0x5f

    if-eq v3, v6, :cond_4

    if-nez v1, :cond_1

    const/16 v6, 0x20

    if-eq v3, v6, :cond_4

    const/16 v6, 0x9

    if-ne v3, v6, :cond_1

    move v0, v1

    .line 1332
    .end local v1           #byte_len:I
    .restart local v0       #byte_len:I
    goto :goto_1

    .line 1335
    .end local v0           #byte_len:I
    .restart local v1       #byte_len:I
    :cond_1
    invoke-static {v3, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 1336
    .local v4, digit:I
    if-gez v4, :cond_3

    .line 1341
    .end local v3           #ch:C
    .end local v4           #digit:I
    :cond_2
    invoke-static {v2, v1, p4, p3}, Lgnu/math/IntNum;->valueOf([BIZI)Lgnu/math/IntNum;

    move-result-object v6

    return-object v6

    .line 1338
    .restart local v3       #ch:C
    .restart local v4       #digit:I
    :cond_3
    add-int/lit8 v0, v1, 0x1

    .end local v1           #byte_len:I
    .restart local v0       #byte_len:I
    int-to-byte v6, v4

    aput-byte v6, v2, v1

    goto :goto_1

    .end local v0           #byte_len:I
    .end local v4           #digit:I
    .restart local v1       #byte_len:I
    :cond_4
    move v0, v1

    .end local v1           #byte_len:I
    .restart local v0       #byte_len:I
    goto :goto_1
.end method

.method public static wordsNeeded([II)I
    .locals 5
    .parameter "words"
    .parameter "len"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 289
    move v0, p1

    .line 290
    .local v0, i:I
    if-lez v0, :cond_1

    .line 292
    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    .line 293
    .local v1, word:I
    if-ne v1, v3, :cond_2

    .line 295
    :cond_0
    if-lez v0, :cond_1

    sub-int v2, v0, v4

    aget v1, p0, v2

    if-gez v1, :cond_1

    .line 297
    add-int/lit8 v0, v0, -0x1

    .line 298
    if-eq v1, v3, :cond_0

    .line 306
    .end local v1           #word:I
    :cond_1
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 303
    .restart local v1       #word:I
    :cond_2
    :goto_0
    if-nez v1, :cond_1

    if-lez v0, :cond_1

    sub-int v2, v0, v4

    aget v1, p0, v2

    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final zero()Lgnu/math/IntNum;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    const/16 v1, 0x64

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 1
    .parameter "y"
    .parameter "k"

    .prologue
    .line 1514
    instance-of v0, p1, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 1515
    check-cast p1, Lgnu/math/IntNum;

    .end local p1
    invoke-static {p0, p1, p2}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    .line 1518
    :goto_0
    return-object v0

    .line 1516
    .restart local p1
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-nez v0, :cond_1

    .line 1517
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1518
    :cond_1
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0, p2}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_0
.end method

.method public asBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 1705
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1706
    new-instance v0, Ljava/math/BigDecimal;

    iget v1, p0, Lgnu/math/IntNum;->ival:I

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 1709
    :goto_0
    return-object v0

    .line 1707
    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 1708
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 1709
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lgnu/math/IntNum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public asBigInteger()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 1698
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 1699
    :cond_0
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 1700
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lgnu/math/IntNum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public canonicalize()Lgnu/math/IntNum;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, -0x64

    .line 311
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    iget v1, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v0, v1}, Lgnu/math/IntNum;->wordsNeeded([II)I

    move-result v0

    iput v0, p0, Lgnu/math/IntNum;->ival:I

    if-gt v0, v3, :cond_1

    .line 314
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    if-ne v0, v3, :cond_0

    .line 315
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lgnu/math/IntNum;->ival:I

    .line 316
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/math/IntNum;->words:[I

    .line 318
    :cond_1
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_2

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    if-lt v0, v2, :cond_2

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/16 v1, 0x400

    if-gt v0, v1, :cond_2

    .line 319
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    iget v1, p0, Lgnu/math/IntNum;->ival:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 320
    :goto_0
    return-object v0

    :cond_2
    move-object v0, p0

    goto :goto_0
.end method

.method checkBits(I)Z
    .locals 5
    .parameter "n"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1420
    if-gtz p1, :cond_0

    move v1, v4

    .line 1428
    :goto_0
    return v1

    .line 1422
    :cond_0
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_3

    .line 1423
    const/16 v1, 0x1f

    if-gt p1, v1, :cond_1

    iget v1, p0, Lgnu/math/IntNum;->ival:I

    shl-int v2, v3, p1

    sub-int/2addr v2, v3

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_0

    .line 1425
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    shr-int/lit8 v1, p1, 0x5

    if-ge v0, v1, :cond_5

    .line 1426
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    aget v1, v1, v0

    if-eqz v1, :cond_4

    move v1, v3

    .line 1427
    goto :goto_0

    .line 1425
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1428
    :cond_5
    and-int/lit8 v1, p1, 0x1f

    if-eqz v1, :cond_6

    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    aget v1, v1, v0

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v3, v2

    sub-int/2addr v2, v3

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_0

    :cond_6
    move v1, v4

    goto :goto_0
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 257
    instance-of v0, p1, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 258
    check-cast p1, Lgnu/math/IntNum;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v0

    .line 259
    :goto_0
    return v0

    .restart local p1
    :cond_0
    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/math/RealNum;->compareReversed(Lgnu/math/Numeric;)I

    move-result v0

    goto :goto_0
.end method

.method public final denominator()Lgnu/math/IntNum;
    .locals 1

    .prologue
    .line 188
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 4
    .parameter "y"

    .prologue
    .line 1532
    instance-of v2, p1, Lgnu/math/RatNum;

    if-eqz v2, :cond_0

    .line 1534
    move-object v0, p1

    check-cast v0, Lgnu/math/RatNum;

    move-object v1, v0

    .line 1535
    .local v1, r:Lgnu/math/RatNum;
    invoke-virtual {v1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {p0, v2}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    invoke-virtual {v1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v2

    .line 1540
    .end local v1           #r:Lgnu/math/RatNum;
    .end local p1
    :goto_0
    return-object v2

    .line 1538
    .restart local p1
    :cond_0
    instance-of v2, p1, Lgnu/math/Numeric;

    if-nez v2, :cond_1

    .line 1539
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1540
    :cond_1
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v2

    goto :goto_0
.end method

.method public doubleValue()D
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1406
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1407
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    int-to-double v0, v0

    .line 1413
    :goto_0
    return-wide v0

    .line 1408
    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 1409
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    goto :goto_0

    .line 1410
    :cond_1
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1411
    invoke-static {p0}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v2}, Lgnu/math/IntNum;->roundToDouble(IZZ)D

    move-result-wide v0

    goto :goto_0

    .line 1413
    :cond_2
    invoke-virtual {p0, v2, v2, v2}, Lgnu/math/IntNum;->roundToDouble(IZZ)D

    move-result-wide v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 1316
    if-eqz p1, :cond_0

    instance-of v0, p1, Lgnu/math/IntNum;

    if-nez v0, :cond_1

    .line 1317
    :cond_0
    const/4 v0, 0x0

    .line 1318
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    check-cast p1, Lgnu/math/IntNum;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/IntNum;->equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z

    move-result v0

    goto :goto_0
.end method

.method public format(ILjava/lang/StringBuffer;)V
    .locals 2
    .parameter "radix"
    .parameter "buffer"

    .prologue
    .line 1135
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 1137
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1139
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1149
    :goto_0
    return-void

    .line 1142
    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 1144
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1148
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public format(ILjava/lang/StringBuilder;)V
    .locals 25
    .parameter "radix"
    .parameter "buffer"

    .prologue
    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/math/IntNum;->words:[I

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    .line 1162
    const/16 v21, 0xa

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1163
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1167
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_4

    .line 1169
    invoke-virtual/range {p0 .. p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v13

    .line 1170
    .local v13, lval:J
    const/16 v21, 0xa

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 1171
    move-object/from16 v0, p2

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1173
    :cond_3
    move-wide v0, v13

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1177
    .end local v13           #lval:J
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v15

    .line 1179
    .local v15, neg:Z
    if-nez v15, :cond_5

    const/16 v21, 0x10

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    .line 1181
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 1182
    .local v19, work:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lgnu/math/IntNum;->getAbsolute([I)V

    .line 1186
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move v12, v0

    .line 1188
    .local v12, len:I
    const/16 v21, 0x10

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 1190
    if-eqz v15, :cond_6

    .line 1191
    const/16 v21, 0x2d

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1192
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 1193
    .local v4, buf_start:I
    move v8, v12

    .local v8, i:I
    :cond_7
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_0

    .line 1195
    aget v18, v19, v8

    .line 1196
    .local v18, word:I
    const/16 v9, 0x8

    .local v9, j:I
    :cond_8
    :goto_2
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_7

    .line 1198
    mul-int/lit8 v21, v9, 0x4

    shr-int v21, v18, v21

    and-int/lit8 v7, v21, 0xf

    .line 1200
    .local v7, hex_digit:I
    if-gtz v7, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    move/from16 v0, v21

    move v1, v4

    if-le v0, v1, :cond_8

    .line 1201
    :cond_9
    const/16 v21, 0x10

    move v0, v7

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1185
    .end local v4           #buf_start:I
    .end local v7           #hex_digit:I
    .end local v8           #i:I
    .end local v9           #j:I
    .end local v12           #len:I
    .end local v18           #word:I
    .end local v19           #work:[I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/math/IntNum;->words:[I

    move-object/from16 v19, v0

    .restart local v19       #work:[I
    goto :goto_1

    .line 1207
    .restart local v12       #len:I
    :cond_b
    invoke-static/range {p1 .. p1}, Lgnu/math/MPN;->chars_per_word(I)I

    move-result v5

    .line 1208
    .local v5, chars_per_word:I
    move/from16 v20, p1

    .line 1209
    .local v20, wradix:I
    move v9, v5

    .restart local v9       #j:I
    :goto_3
    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_c

    .line 1210
    mul-int v20, v20, p1

    goto :goto_3

    .line 1211
    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 1214
    .restart local v8       #i:I
    :cond_d
    move-object/from16 v0, v19

    move-object/from16 v1, v19

    move v2, v12

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lgnu/math/MPN;->divmod_1([I[III)I

    move-result v17

    .line 1215
    .local v17, wdigit:I
    :goto_4
    if-lez v12, :cond_e

    const/16 v21, 0x1

    sub-int v21, v12, v21

    aget v21, v19, v21

    if-nez v21, :cond_e

    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    .line 1216
    :cond_e
    move v9, v5

    :goto_5
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_f

    .line 1218
    if-nez v12, :cond_11

    if-nez v17, :cond_11

    .line 1233
    :cond_f
    if-nez v12, :cond_d

    .line 1236
    if-eqz v15, :cond_10

    .line 1237
    const/16 v21, 0x2d

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1239
    :cond_10
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    const/16 v22, 0x1

    sub-int v9, v21, v22

    .line 1240
    :goto_6
    if-ge v8, v9, :cond_0

    .line 1242
    move-object/from16 v0, p2

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v16

    .line 1243
    .local v16, tmp:C
    move-object/from16 v0, p2

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v21

    move-object/from16 v0, p2

    move v1, v8

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1244
    move-object/from16 v0, p2

    move v1, v9

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1245
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, -0x1

    .line 1246
    goto :goto_6

    .line 1220
    .end local v16           #tmp:C
    :cond_11
    if-gez v17, :cond_12

    .line 1222
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const-wide/16 v23, -0x1

    and-long v10, v21, v23

    .line 1223
    .local v10, ldigit:J
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v21, v0

    rem-long v21, v10, v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move v6, v0

    .line 1224
    .local v6, digit:I
    div-int v17, v17, p1

    .line 1231
    .end local v10           #ldigit:J
    :goto_7
    move v0, v6

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1228
    .end local v6           #digit:I
    :cond_12
    rem-int v6, v17, p1

    .line 1229
    .restart local v6       #digit:I
    div-int v17, v17, p1

    goto :goto_7
.end method

.method public getAbsolute([I)V
    .locals 4
    .parameter "words"

    .prologue
    const/4 v3, 0x0

    .line 1551
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_2

    .line 1553
    const/4 v1, 0x1

    .line 1554
    .local v1, len:I
    iget v2, p0, Lgnu/math/IntNum;->ival:I

    aput v2, p1, v3

    .line 1562
    :cond_0
    const/4 v2, 0x1

    sub-int v2, v1, v2

    aget v2, p1, v2

    if-gez v2, :cond_1

    .line 1563
    invoke-static {p1, p1, v1}, Lgnu/math/IntNum;->negate([I[II)Z

    .line 1564
    :cond_1
    array-length v0, p1

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-le v0, v1, :cond_3

    .line 1565
    aput v3, p1, v0

    goto :goto_0

    .line 1558
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_2
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    .line 1559
    .restart local v1       #len:I
    move v0, v1

    .restart local v0       #i:I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 1560
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    aget v2, v2, v0

    aput v2, p1, v0

    goto :goto_1

    .line 1566
    :cond_3
    return-void
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1295
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    iget v2, p0, Lgnu/math/IntNum;->ival:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public inIntRange()Z
    .locals 4

    .prologue
    .line 1721
    const-wide/32 v0, -0x80000000

    const-wide/32 v2, 0x7fffffff

    invoke-virtual {p0, v0, v1, v2, v3}, Lgnu/math/IntNum;->inRange(JJ)Z

    move-result v0

    return v0
.end method

.method public inLongRange()Z
    .locals 4

    .prologue
    .line 1727
    const-wide/high16 v0, -0x8000

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, v2, v3}, Lgnu/math/IntNum;->inRange(JJ)Z

    move-result v0

    return v0
.end method

.method public inRange(JJ)Z
    .locals 1
    .parameter "lo"
    .parameter "hi"

    .prologue
    .line 1715
    invoke-static {p0, p1, p2}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p0, p3, p4}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public intLength()I
    .locals 2

    .prologue
    .line 1633
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1634
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v0}, Lgnu/math/MPN;->intLength(I)I

    move-result v0

    .line 1636
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    iget v1, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v0, v1}, Lgnu/math/MPN;->intLength([II)I

    move-result v0

    goto :goto_0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 1269
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1270
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    .line 1271
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0
.end method

.method public final isMinusOne()Z
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isNegative()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 193
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    :goto_0
    if-gez v0, :cond_1

    move v0, v2

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    iget v1, p0, Lgnu/math/IntNum;->ival:I

    sub-int/2addr v1, v2

    aget v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final isOdd()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_0

    iget v1, p0, Lgnu/math/IntNum;->ival:I

    move v0, v1

    .line 265
    .local v0, low:I
    :goto_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 264
    .end local v0           #low:I
    :cond_0
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    aget v1, v1, v2

    move v0, v1

    goto :goto_0

    .restart local v0       #low:I
    :cond_1
    move v1, v2

    .line 265
    goto :goto_1
.end method

.method public final isOne()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 275
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isZero()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public longValue()J
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1286
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1287
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    int-to-long v0, v0

    .line 1290
    :goto_0
    return-wide v0

    .line 1288
    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    if-ne v0, v1, :cond_1

    .line 1289
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    aget v0, v0, v3

    int-to-long v0, v0

    goto :goto_0

    .line 1290
    :cond_1
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    aget v0, v0, v1

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    aget v2, v2, v3

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1
    .parameter "y"

    .prologue
    .line 1523
    instance-of v0, p1, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 1524
    check-cast p1, Lgnu/math/IntNum;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    .line 1527
    :goto_0
    return-object v0

    .line 1525
    .restart local p1
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-nez v0, :cond_1

    .line 1526
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1527
    :cond_1
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_0
.end method

.method public neg()Lgnu/math/Numeric;
    .locals 1

    .prologue
    .line 1625
    invoke-static {p0}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public final numerator()Lgnu/math/IntNum;
    .locals 0

    .prologue
    .line 183
    return-object p0
.end method

.method public power(Lgnu/math/IntNum;)Lgnu/math/Numeric;
    .locals 1
    .parameter "y"

    .prologue
    .line 868
    invoke-virtual {p0}, Lgnu/math/IntNum;->isOne()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 876
    :goto_0
    return-object v0

    .line 870
    :cond_0
    invoke-virtual {p0}, Lgnu/math/IntNum;->isMinusOne()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 871
    invoke-virtual {p1}, Lgnu/math/IntNum;->isOdd()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    .line 872
    :cond_2
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_3

    iget v0, p1, Lgnu/math/IntNum;->ival:I

    if-ltz v0, :cond_3

    .line 873
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {p0, v0}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    .line 874
    :cond_3
    invoke-virtual {p0}, Lgnu/math/IntNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 875
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    invoke-static {v0}, Lgnu/math/RatNum;->infinity(I)Lgnu/math/RatNum;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, p0

    goto :goto_0

    .line 876
    :cond_5
    invoke-super {p0, p1}, Lgnu/math/RatNum;->power(Lgnu/math/IntNum;)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1674
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 1675
    .local v0, i:I
    const/high16 v3, -0x4000

    if-gt v0, v3, :cond_0

    .line 1677
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    .line 1678
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1679
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 1688
    :cond_0
    :goto_0
    iput v0, p0, Lgnu/math/IntNum;->ival:I

    .line 1689
    return-void

    .line 1682
    :cond_1
    new-array v2, v0, [I

    .line 1683
    .local v2, w:[I
    move v1, v0

    .local v1, j:I
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 1684
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    aput v3, v2, v1

    goto :goto_1

    .line 1685
    :cond_2
    iput-object v2, p0, Lgnu/math/IntNum;->words:[I

    goto :goto_0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1693
    invoke-virtual {p0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public realloc(I)V
    .locals 4
    .parameter "nwords"

    .prologue
    const/4 v3, 0x0

    .line 152
    if-nez p1, :cond_2

    .line 154
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    if-eqz v1, :cond_1

    .line 156
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    if-lez v1, :cond_0

    .line 157
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    aget v1, v1, v3

    iput v1, p0, Lgnu/math/IntNum;->ival:I

    .line 158
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/math/IntNum;->words:[I

    .line 179
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    array-length v1, v1

    if-lt v1, p1, :cond_3

    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    array-length v1, v1

    add-int/lit8 v2, p1, 0x2

    if-le v1, v2, :cond_1

    .line 165
    :cond_3
    new-array v0, p1, [I

    .line 166
    .local v0, new_words:[I
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_4

    .line 168
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    aput v1, v0, v3

    .line 169
    const/4 v1, 0x1

    iput v1, p0, Lgnu/math/IntNum;->ival:I

    .line 177
    :goto_1
    iput-object v0, p0, Lgnu/math/IntNum;->words:[I

    goto :goto_0

    .line 173
    :cond_4
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    if-ge p1, v1, :cond_5

    .line 174
    iput p1, p0, Lgnu/math/IntNum;->ival:I

    .line 175
    :cond_5
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    iget v2, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public roundToDouble(IZZ)D
    .locals 17
    .parameter "exp"
    .parameter "neg"
    .parameter "remainder"

    .prologue
    .line 1442
    invoke-virtual/range {p0 .. p0}, Lgnu/math/IntNum;->intLength()I

    move-result v9

    .line 1446
    .local v9, il:I
    const/4 v13, 0x1

    sub-int v13, v9, v13

    add-int p1, p1, v13

    .line 1452
    const/16 v13, -0x433

    move/from16 v0, p1

    move v1, v13

    if-ge v0, v1, :cond_1

    .line 1453
    if-eqz p2, :cond_0

    const-wide/high16 v13, -0x8000

    .line 1508
    :goto_0
    return-wide v13

    .line 1453
    :cond_0
    const-wide/16 v13, 0x0

    goto :goto_0

    .line 1456
    :cond_1
    const/16 v13, 0x3ff

    move/from16 v0, p1

    move v1, v13

    if-le v0, v1, :cond_3

    .line 1457
    if-eqz p2, :cond_2

    const-wide/high16 v13, -0x10

    goto :goto_0

    :cond_2
    const-wide/high16 v13, 0x7ff0

    goto :goto_0

    .line 1461
    :cond_3
    const/16 v13, -0x3fe

    move/from16 v0, p1

    move v1, v13

    if-lt v0, v1, :cond_5

    const/16 v13, 0x35

    move v12, v13

    .line 1465
    .local v12, ml:I
    :goto_1
    add-int/lit8 v13, v12, 0x1

    sub-int v8, v9, v13

    .line 1466
    .local v8, excess_bits:I
    if-lez v8, :cond_7

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/math/IntNum;->words:[I

    move-object v13, v0

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move v13, v0

    shr-int/2addr v13, v8

    int-to-long v13, v13

    move-wide v10, v13

    .line 1474
    .local v10, m:J
    :goto_2
    const/16 v13, 0x3ff

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_b

    const/4 v13, 0x1

    shr-long v13, v10, v13

    const-wide v15, 0x1fffffffffffffL

    cmp-long v13, v13, v15

    if-nez v13, :cond_b

    .line 1476
    if-nez p3, :cond_4

    sub-int v13, v9, v12

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lgnu/math/IntNum;->checkBits(I)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1477
    :cond_4
    if-eqz p2, :cond_8

    const-wide/high16 v13, -0x10

    goto :goto_0

    .line 1461
    .end local v8           #excess_bits:I
    .end local v10           #m:J
    .end local v12           #ml:I
    :cond_5
    add-int/lit8 v13, p1, 0x35

    add-int/lit16 v13, v13, 0x3fe

    move v12, v13

    goto :goto_1

    .line 1467
    .restart local v8       #excess_bits:I
    .restart local v12       #ml:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/math/IntNum;->words:[I

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/math/IntNum;->ival:I

    move v14, v0

    invoke-static {v13, v14, v8}, Lgnu/math/MPN;->rshift_long([III)J

    move-result-wide v13

    move-wide v10, v13

    goto :goto_2

    .line 1470
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v13

    neg-int v15, v8

    shl-long v10, v13, v15

    .restart local v10       #m:J
    goto :goto_2

    .line 1477
    :cond_8
    const-wide/high16 v13, 0x7ff0

    goto :goto_0

    .line 1479
    :cond_9
    if-eqz p2, :cond_a

    const-wide v13, -0x10000000000001L

    goto :goto_0

    :cond_a
    const-wide v13, 0x7fefffffffffffffL

    goto/16 :goto_0

    .line 1484
    :cond_b
    const-wide/16 v13, 0x1

    and-long/2addr v13, v10

    const-wide/16 v15, 0x1

    cmp-long v13, v13, v15

    if-nez v13, :cond_d

    const-wide/16 v13, 0x2

    and-long/2addr v13, v10

    const-wide/16 v15, 0x2

    cmp-long v13, v13, v15

    if-eqz v13, :cond_c

    if-nez p3, :cond_c

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lgnu/math/IntNum;->checkBits(I)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1487
    :cond_c
    const-wide/16 v13, 0x2

    add-long/2addr v10, v13

    .line 1489
    const-wide/high16 v13, 0x40

    and-long/2addr v13, v10

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_e

    .line 1491
    add-int/lit8 p1, p1, 0x1

    .line 1493
    const/4 v13, 0x1

    shr-long/2addr v10, v13

    .line 1502
    :cond_d
    :goto_3
    const/4 v13, 0x1

    shr-long/2addr v10, v13

    .line 1504
    if-eqz p2, :cond_f

    const-wide/high16 v13, -0x8000

    move-wide v6, v13

    .line 1505
    .local v6, bits_sign:J
    :goto_4
    move/from16 v0, p1

    add-int/lit16 v0, v0, 0x3ff

    move/from16 p1, v0

    .line 1506
    if-gtz p1, :cond_10

    const-wide/16 v13, 0x0

    move-wide v2, v13

    .line 1507
    .local v2, bits_exp:J
    :goto_5
    const-wide v13, -0x10000000000001L

    and-long v4, v10, v13

    .line 1508
    .local v4, bits_mant:J
    or-long v13, v6, v2

    or-long/2addr v13, v4

    invoke-static {v13, v14}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v13

    goto/16 :goto_0

    .line 1497
    .end local v2           #bits_exp:J
    .end local v4           #bits_mant:J
    .end local v6           #bits_sign:J
    :cond_e
    const/16 v13, 0x34

    if-ne v12, v13, :cond_d

    const-wide/high16 v13, 0x20

    and-long/2addr v13, v10

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_d

    .line 1498
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 1504
    :cond_f
    const-wide/16 v13, 0x0

    move-wide v6, v13

    goto :goto_4

    .line 1506
    .restart local v6       #bits_sign:J
    :cond_10
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide v13, v0

    const/16 v15, 0x34

    shl-long/2addr v13, v15

    move-wide v2, v13

    goto :goto_5
.end method

.method public final set(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/math/IntNum;->words:[I

    .line 373
    iput p1, p0, Lgnu/math/IntNum;->ival:I

    .line 374
    return-void
.end method

.method public final set(J)V
    .locals 6
    .parameter "y"

    .prologue
    const/4 v5, 0x2

    .line 379
    long-to-int v0, p1

    .line 380
    .local v0, i:I
    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 382
    iput v0, p0, Lgnu/math/IntNum;->ival:I

    .line 383
    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/math/IntNum;->words:[I

    .line 392
    :goto_0
    return-void

    .line 387
    :cond_0
    invoke-virtual {p0, v5}, Lgnu/math/IntNum;->realloc(I)V

    .line 388
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 389
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    const/4 v2, 0x1

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    aput v3, v1, v2

    .line 390
    iput v5, p0, Lgnu/math/IntNum;->ival:I

    goto :goto_0
.end method

.method public final set(Lgnu/math/IntNum;)V
    .locals 4
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 405
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_1

    .line 406
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    invoke-virtual {p0, v0}, Lgnu/math/IntNum;->set(I)V

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    if-eq p0, p1, :cond_0

    .line 409
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    invoke-virtual {p0, v0}, Lgnu/math/IntNum;->realloc(I)V

    .line 410
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    iget v2, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    iput v0, p0, Lgnu/math/IntNum;->ival:I

    goto :goto_0
.end method

.method public final set([II)V
    .locals 0
    .parameter "words"
    .parameter "length"

    .prologue
    .line 398
    iput p2, p0, Lgnu/math/IntNum;->ival:I

    .line 399
    iput-object p1, p0, Lgnu/math/IntNum;->words:[I

    .line 400
    return-void
.end method

.method public final setAdd(I)V
    .locals 0
    .parameter "y"

    .prologue
    .line 366
    invoke-virtual {p0, p0, p1}, Lgnu/math/IntNum;->setAdd(Lgnu/math/IntNum;I)V

    .line 367
    return-void
.end method

.method public setAdd(Lgnu/math/IntNum;I)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 343
    iget-object v4, p1, Lgnu/math/IntNum;->words:[I

    if-nez v4, :cond_0

    .line 345
    iget v4, p1, Lgnu/math/IntNum;->ival:I

    int-to-long v4, v4

    int-to-long v6, p2

    add-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lgnu/math/IntNum;->set(J)V

    .line 361
    :goto_0
    return-void

    .line 348
    :cond_0
    iget v3, p1, Lgnu/math/IntNum;->ival:I

    .line 349
    .local v3, len:I
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Lgnu/math/IntNum;->realloc(I)V

    .line 350
    int-to-long v0, p2

    .line 351
    .local v0, carry:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 353
    iget-object v4, p1, Lgnu/math/IntNum;->words:[I

    aget v4, v4, v2

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 354
    iget-object v4, p0, Lgnu/math/IntNum;->words:[I

    long-to-int v5, v0

    aput v5, v4, v2

    .line 355
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 357
    :cond_1
    iget-object v4, p1, Lgnu/math/IntNum;->words:[I

    const/4 v5, 0x1

    sub-int v5, v3, v5

    aget v4, v4, v5

    if-gez v4, :cond_2

    .line 358
    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    .line 359
    :cond_2
    iget-object v4, p0, Lgnu/math/IntNum;->words:[I

    long-to-int v5, v0

    aput v5, v4, v3

    .line 360
    iget-object v4, p0, Lgnu/math/IntNum;->words:[I

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4, v5}, Lgnu/math/IntNum;->wordsNeeded([II)I

    move-result v4

    iput v4, p0, Lgnu/math/IntNum;->ival:I

    goto :goto_0
.end method

.method setInvert()V
    .locals 3

    .prologue
    .line 1007
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_1

    .line 1008
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    xor-int/lit8 v1, v1, -0x1

    iput v1, p0, Lgnu/math/IntNum;->ival:I

    .line 1014
    :cond_0
    return-void

    .line 1011
    :cond_1
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 1012
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    aget v2, v2, v0

    xor-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    goto :goto_0
.end method

.method public final setNegative()V
    .locals 0

    .prologue
    .line 1606
    invoke-virtual {p0, p0}, Lgnu/math/IntNum;->setNegative(Lgnu/math/IntNum;)V

    .line 1607
    return-void
.end method

.method public setNegative(Lgnu/math/IntNum;)V
    .locals 4
    .parameter "x"

    .prologue
    .line 1588
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    .line 1589
    .local v0, len:I
    iget-object v2, p1, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_1

    .line 1591
    const/high16 v2, -0x8000

    if-ne v0, v2, :cond_0

    .line 1592
    int-to-long v2, v0

    neg-long v2, v2

    invoke-virtual {p0, v2, v3}, Lgnu/math/IntNum;->set(J)V

    .line 1601
    :goto_0
    return-void

    .line 1594
    :cond_0
    neg-int v2, v0

    invoke-virtual {p0, v2}, Lgnu/math/IntNum;->set(I)V

    goto :goto_0

    .line 1597
    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lgnu/math/IntNum;->realloc(I)V

    .line 1598
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    iget-object v3, p1, Lgnu/math/IntNum;->words:[I

    invoke-static {v2, v3, v0}, Lgnu/math/IntNum;->negate([I[II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1599
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0           #len:I
    .local v1, len:I
    const/4 v3, 0x0

    aput v3, v2, v0

    move v0, v1

    .line 1600
    .end local v1           #len:I
    .restart local v0       #len:I
    :cond_2
    iput v0, p0, Lgnu/math/IntNum;->ival:I

    goto :goto_0
.end method

.method setShift(Lgnu/math/IntNum;I)V
    .locals 1
    .parameter "x"
    .parameter "count"

    .prologue
    .line 1086
    if-lez p2, :cond_0

    .line 1087
    invoke-virtual {p0, p1, p2}, Lgnu/math/IntNum;->setShiftLeft(Lgnu/math/IntNum;I)V

    .line 1090
    :goto_0
    return-void

    .line 1089
    :cond_0
    neg-int v0, p2

    invoke-virtual {p0, p1, v0}, Lgnu/math/IntNum;->setShiftRight(Lgnu/math/IntNum;I)V

    goto :goto_0
.end method

.method setShiftLeft(Lgnu/math/IntNum;I)V
    .locals 10
    .parameter "x"
    .parameter "count"

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 1020
    iget-object v6, p1, Lgnu/math/IntNum;->words:[I

    if-nez v6, :cond_2

    .line 1022
    if-ge p2, v8, :cond_1

    .line 1024
    iget v6, p1, Lgnu/math/IntNum;->ival:I

    int-to-long v6, v6

    shl-long/2addr v6, p2

    invoke-virtual {p0, v6, v7}, Lgnu/math/IntNum;->set(J)V

    .line 1056
    :cond_0
    return-void

    .line 1027
    :cond_1
    new-array v5, v7, [I

    .line 1028
    .local v5, xwords:[I
    iget v6, p1, Lgnu/math/IntNum;->ival:I

    aput v6, v5, v9

    .line 1029
    const/4 v4, 0x1

    .line 1036
    .local v4, xlen:I
    :goto_0
    shr-int/lit8 v3, p2, 0x5

    .line 1037
    .local v3, word_count:I
    and-int/lit8 p2, p2, 0x1f

    .line 1038
    add-int v1, v4, v3

    .line 1039
    .local v1, new_len:I
    if-nez p2, :cond_3

    .line 1041
    invoke-virtual {p0, v1}, Lgnu/math/IntNum;->realloc(I)V

    .line 1042
    move v0, v4

    .local v0, i:I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    .line 1043
    iget-object v6, p0, Lgnu/math/IntNum;->words:[I

    add-int v7, v0, v3

    aget v8, v5, v0

    aput v8, v6, v7

    goto :goto_1

    .line 1033
    .end local v0           #i:I
    .end local v1           #new_len:I
    .end local v3           #word_count:I
    .end local v4           #xlen:I
    .end local v5           #xwords:[I
    :cond_2
    iget-object v5, p1, Lgnu/math/IntNum;->words:[I

    .line 1034
    .restart local v5       #xwords:[I
    iget v4, p1, Lgnu/math/IntNum;->ival:I

    .restart local v4       #xlen:I
    goto :goto_0

    .line 1047
    .restart local v1       #new_len:I
    .restart local v3       #word_count:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 1048
    invoke-virtual {p0, v1}, Lgnu/math/IntNum;->realloc(I)V

    .line 1049
    iget-object v6, p0, Lgnu/math/IntNum;->words:[I

    invoke-static {v6, v3, v5, v4, p2}, Lgnu/math/MPN;->lshift([II[III)I

    move-result v2

    .line 1050
    .local v2, shift_out:I
    sub-int p2, v8, p2

    .line 1051
    iget-object v6, p0, Lgnu/math/IntNum;->words:[I

    sub-int v7, v1, v7

    shl-int v8, v2, p2

    shr-int/2addr v8, p2

    aput v8, v6, v7

    .line 1053
    .end local v2           #shift_out:I
    :cond_4
    iput v1, p0, Lgnu/math/IntNum;->ival:I

    .line 1054
    move v0, v3

    .restart local v0       #i:I
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 1055
    iget-object v6, p0, Lgnu/math/IntNum;->words:[I

    aput v9, v6, v0

    goto :goto_2
.end method

.method setShiftRight(Lgnu/math/IntNum;I)V
    .locals 8
    .parameter "x"
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1060
    iget-object v3, p1, Lgnu/math/IntNum;->words:[I

    if-nez v3, :cond_3

    .line 1061
    const/16 v3, 0x20

    if-ge p2, v3, :cond_1

    iget v3, p1, Lgnu/math/IntNum;->ival:I

    shr-int/2addr v3, p2

    :goto_0
    invoke-virtual {p0, v3}, Lgnu/math/IntNum;->set(I)V

    .line 1082
    :cond_0
    :goto_1
    return-void

    .line 1061
    :cond_1
    iget v3, p1, Lgnu/math/IntNum;->ival:I

    if-gez v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_0

    .line 1062
    :cond_3
    if-nez p2, :cond_4

    .line 1063
    invoke-virtual {p0, p1}, Lgnu/math/IntNum;->set(Lgnu/math/IntNum;)V

    goto :goto_1

    .line 1066
    :cond_4
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v1

    .line 1067
    .local v1, neg:Z
    shr-int/lit8 v2, p2, 0x5

    .line 1068
    .local v2, word_count:I
    and-int/lit8 p2, p2, 0x1f

    .line 1069
    iget v3, p1, Lgnu/math/IntNum;->ival:I

    sub-int v0, v3, v2

    .line 1070
    .local v0, d_len:I
    if-gtz v0, :cond_6

    .line 1071
    if-eqz v1, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lgnu/math/IntNum;->set(I)V

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_2

    .line 1074
    :cond_6
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    if-eqz v3, :cond_7

    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    array-length v3, v3

    if-ge v3, v0, :cond_8

    .line 1075
    :cond_7
    invoke-virtual {p0, v0}, Lgnu/math/IntNum;->realloc(I)V

    .line 1076
    :cond_8
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    iget-object v4, p1, Lgnu/math/IntNum;->words:[I

    invoke-static {v3, v4, v2, v0, p2}, Lgnu/math/MPN;->rshift0([I[IIII)V

    .line 1077
    iput v0, p0, Lgnu/math/IntNum;->ival:I

    .line 1078
    if-eqz v1, :cond_0

    .line 1079
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    const/4 v4, 0x1

    sub-int v4, v0, v4

    aget v5, v3, v4

    const/4 v6, -0x2

    const/16 v7, 0x1f

    sub-int/2addr v7, p2

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v3, v4

    goto :goto_1
.end method

.method public sign()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 198
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    .line 199
    .local v1, n:I
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    .line 200
    .local v2, w:[I
    if-nez v2, :cond_2

    .line 201
    if-lez v1, :cond_1

    move v3, v4

    .line 212
    :cond_0
    :goto_0
    return v3

    .line 201
    :cond_1
    if-ltz v1, :cond_0

    move v3, v5

    goto :goto_0

    .line 202
    :cond_2
    add-int/lit8 v1, v1, -0x1

    aget v0, v2, v1

    .line 203
    .local v0, i:I
    if-lez v0, :cond_3

    move v3, v4

    .line 204
    goto :goto_0

    .line 205
    :cond_3
    if-ltz v0, :cond_0

    .line 209
    :cond_4
    if-nez v1, :cond_5

    move v3, v5

    .line 210
    goto :goto_0

    .line 211
    :cond_5
    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    if-eqz v3, :cond_4

    move v3, v4

    .line 212
    goto :goto_0
.end method

.method public toExactInt(I)Lgnu/math/IntNum;
    .locals 0
    .parameter "rounding_mode"

    .prologue
    .line 839
    return-object p0
.end method

.method public toInt(I)Lgnu/math/RealNum;
    .locals 0
    .parameter "rounding_mode"

    .prologue
    .line 844
    return-object p0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4
    .parameter "radix"

    .prologue
    .line 1253
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_0

    .line 1254
    iget v2, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v2, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    .line 1264
    :goto_0
    return-object v2

    .line 1255
    :cond_0
    iget v2, p0, Lgnu/math/IntNum;->ival:I

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    .line 1256
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1257
    :cond_1
    iget v2, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {p1}, Lgnu/math/MPN;->chars_per_word(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int v0, v2, v3

    .line 1259
    .local v0, buf_size:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1263
    .local v1, buffer:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, v1}, Lgnu/math/IntNum;->format(ILjava/lang/StringBuilder;)V

    .line 1264
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1650
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_1

    move v1, v5

    .line 1651
    .local v1, nwords:I
    :goto_0
    if-gt v1, v5, :cond_5

    .line 1653
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_2

    iget v2, p0, Lgnu/math/IntNum;->ival:I

    move v0, v2

    .line 1654
    .local v0, i:I
    :goto_1
    const/high16 v2, -0x4000

    if-lt v0, v2, :cond_4

    .line 1655
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1669
    .end local v0           #i:I
    :cond_0
    :goto_2
    return-void

    .line 1650
    .end local v1           #nwords:I
    :cond_1
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    iget v3, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v2, v3}, Lgnu/math/IntNum;->wordsNeeded([II)I

    move-result v2

    move v1, v2

    goto :goto_0

    .line 1653
    .restart local v1       #nwords:I
    :cond_2
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    array-length v2, v2

    if-nez v2, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    aget v2, v2, v4

    move v0, v2

    goto :goto_1

    .line 1658
    .restart local v0       #i:I
    :cond_4
    const v2, -0x7fffffff

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1659
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_2

    .line 1664
    .end local v0           #i:I
    :cond_5
    const/high16 v2, -0x8000

    or-int/2addr v2, v1

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1665
    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 1666
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    aget v2, v2, v1

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_3
.end method
