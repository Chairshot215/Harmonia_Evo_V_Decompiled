.class public Lgnu/math/Duration;
.super Lgnu/math/Quantity;
.source "Duration.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field months:I

.field nanos:I

.field seconds:J

.field public unit:Lgnu/math/Unit;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lgnu/math/Quantity;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/Duration;Lgnu/math/Duration;I)Lgnu/math/Duration;
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "k"

    .prologue
    .line 252
    iget v0, p0, Lgnu/math/Duration;->months:I

    int-to-long v0, v0

    int-to-long v2, p2

    iget v4, p1, Lgnu/math/Duration;->months:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 255
    .local v0, months:J
    iget-wide v2, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v4, 0x3b9aca00

    mul-long/2addr v2, v4

    iget v4, p0, Lgnu/math/Duration;->nanos:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    int-to-long v4, p2

    iget-wide v6, p1, Lgnu/math/Duration;->seconds:J

    const-wide/32 v8, 0x3b9aca00

    mul-long/2addr v6, v8

    iget p2, p1, Lgnu/math/Duration;->nanos:I

    .end local p2
    int-to-long v8, p2

    add-long/2addr v6, v8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 259
    .local v2, nanos:J
    new-instance p2, Lgnu/math/Duration;

    invoke-direct {p2}, Lgnu/math/Duration;-><init>()V

    .line 260
    .local p2, d:Lgnu/math/Duration;
    long-to-int v0, v0

    iput v0, p2, Lgnu/math/Duration;->months:I

    .line 261
    .end local v0           #months:J
    const-wide/32 v0, 0x3b9aca00

    div-long v0, v2, v0

    long-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p2, Lgnu/math/Duration;->seconds:J

    .line 262
    const-wide/32 v0, 0x3b9aca00

    rem-long v0, v2, v0

    long-to-int v0, v0

    iput v0, p2, Lgnu/math/Duration;->nanos:I

    .line 263
    iget-object v0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    iget-object p1, p1, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .end local p1
    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v0, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    if-ne p1, v0, :cond_1

    .line 264
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    .end local p0
    const-string p1, "cannot add these duration types"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 265
    .restart local p0
    :cond_1
    iget-object p0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .end local p0
    iput-object p0, p2, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 266
    return-object p2
.end method

.method static appendNanoSeconds(ILjava/lang/StringBuffer;)V
    .locals 5
    .parameter "nanoSeconds"
    .parameter "sbuf"

    .prologue
    const/16 v4, 0x30

    .line 372
    if-nez p0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 374
    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 375
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 376
    .local v2, pos:I
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 377
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 378
    .local v0, len:I
    add-int/lit8 v3, v2, 0x9

    sub-int v1, v3, v0

    .line 379
    .local v1, pad:I
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 380
    invoke-virtual {p1, v2, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 381
    :cond_1
    add-int/lit8 v0, v2, 0x9

    .line 382
    :cond_2
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_2

    .line 383
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0
.end method

.method public static compare(Lgnu/math/Duration;Lgnu/math/Duration;)I
    .locals 14
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/32 v8, 0x3b9aca00

    const/4 v13, 0x1

    const/4 v12, -0x1

    const-wide/16 v10, 0x0

    .line 287
    iget v4, p0, Lgnu/math/Duration;->months:I

    int-to-long v4, v4

    iget v6, p1, Lgnu/math/Duration;->months:I

    int-to-long v6, v6

    sub-long v0, v4, v6

    .line 288
    .local v0, months:J
    iget-wide v4, p0, Lgnu/math/Duration;->seconds:J

    mul-long/2addr v4, v8

    iget v6, p0, Lgnu/math/Duration;->nanos:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-wide v6, p1, Lgnu/math/Duration;->seconds:J

    mul-long/2addr v6, v8

    iget v8, p1, Lgnu/math/Duration;->nanos:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    sub-long v2, v4, v6

    .line 290
    .local v2, nanos:J
    cmp-long v4, v0, v10

    if-gez v4, :cond_0

    cmp-long v4, v2, v10

    if-gtz v4, :cond_0

    move v4, v12

    .line 296
    :goto_0
    return v4

    .line 292
    :cond_0
    cmp-long v4, v0, v10

    if-lez v4, :cond_1

    cmp-long v4, v2, v10

    if-ltz v4, :cond_1

    move v4, v13

    .line 293
    goto :goto_0

    .line 294
    :cond_1
    cmp-long v4, v0, v10

    if-nez v4, :cond_4

    .line 295
    cmp-long v4, v2, v10

    if-gez v4, :cond_2

    move v4, v12

    goto :goto_0

    :cond_2
    cmp-long v4, v2, v10

    if-lez v4, :cond_3

    move v4, v13

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 296
    :cond_4
    const/4 v4, -0x2

    goto :goto_0
.end method

.method public static div(Lgnu/math/Duration;Lgnu/math/Duration;)D
    .locals 14
    .parameter "dur1"
    .parameter "dur2"

    .prologue
    const-wide v12, 0x3e112e0be826d695L

    const-wide/16 v10, 0x0

    .line 217
    iget v0, p0, Lgnu/math/Duration;->months:I

    .line 218
    .local v0, months1:I
    iget v1, p1, Lgnu/math/Duration;->months:I

    .line 219
    .local v1, months2:I
    iget-wide v6, p0, Lgnu/math/Duration;->seconds:J

    long-to-double v6, v6

    iget v8, p0, Lgnu/math/Duration;->nanos:I

    int-to-double v8, v8

    mul-double/2addr v8, v12

    add-double v2, v6, v8

    .line 220
    .local v2, sec1:D
    iget-wide v6, p1, Lgnu/math/Duration;->seconds:J

    long-to-double v6, v6

    iget v8, p0, Lgnu/math/Duration;->nanos:I

    int-to-double v8, v8

    mul-double/2addr v8, v12

    add-double v4, v6, v8

    .line 221
    .local v4, sec2:D
    if-nez v1, :cond_0

    cmpl-double v6, v4, v10

    if-nez v6, :cond_0

    .line 222
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "divide duration by zero"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 223
    :cond_0
    if-nez v1, :cond_1

    .line 225
    if-nez v0, :cond_2

    .line 226
    div-double v6, v2, v4

    .line 231
    :goto_0
    return-wide v6

    .line 228
    :cond_1
    cmpl-double v6, v4, v10

    if-nez v6, :cond_2

    .line 230
    cmpl-double v6, v2, v10

    if-nez v6, :cond_2

    .line 231
    int-to-double v6, v0

    int-to-double v8, v1

    div-double/2addr v6, v8

    goto :goto_0

    .line 233
    :cond_2
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "divide of incompatible durations"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static equals(Lgnu/math/Duration;Lgnu/math/Duration;)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 512
    iget v0, p0, Lgnu/math/Duration;->months:I

    iget v1, p1, Lgnu/math/Duration;->months:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    iget-wide v2, p1, Lgnu/math/Duration;->seconds:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/Duration;->nanos:I

    iget v1, p1, Lgnu/math/Duration;->nanos:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static make(IJILgnu/math/Unit;)Lgnu/math/Duration;
    .locals 1
    .parameter "months"
    .parameter "seconds"
    .parameter "nanos"
    .parameter "unit"

    .prologue
    .line 24
    new-instance v0, Lgnu/math/Duration;

    invoke-direct {v0}, Lgnu/math/Duration;-><init>()V

    .line 25
    .local v0, d:Lgnu/math/Duration;
    iput p0, v0, Lgnu/math/Duration;->months:I

    .line 26
    iput-wide p1, v0, Lgnu/math/Duration;->seconds:J

    .line 27
    iput p3, v0, Lgnu/math/Duration;->nanos:I

    .line 28
    iput-object p4, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 29
    return-object v0
.end method

.method public static makeMinutes(I)Lgnu/math/Duration;
    .locals 3
    .parameter "minutes"

    .prologue
    .line 42
    new-instance v0, Lgnu/math/Duration;

    invoke-direct {v0}, Lgnu/math/Duration;-><init>()V

    .line 43
    .local v0, d:Lgnu/math/Duration;
    sget-object v1, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    iput-object v1, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 44
    mul-int/lit8 v1, p0, 0x3c

    int-to-long v1, v1

    iput-wide v1, v0, Lgnu/math/Duration;->seconds:J

    .line 45
    return-object v0
.end method

.method public static makeMonths(I)Lgnu/math/Duration;
    .locals 2
    .parameter "months"

    .prologue
    .line 34
    new-instance v0, Lgnu/math/Duration;

    invoke-direct {v0}, Lgnu/math/Duration;-><init>()V

    .line 35
    .local v0, d:Lgnu/math/Duration;
    sget-object v1, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    iput-object v1, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 36
    iput p0, v0, Lgnu/math/Duration;->months:I

    .line 37
    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;
    .locals 4
    .parameter "str"
    .parameter "unit"

    .prologue
    .line 50
    invoke-static {p0, p1}, Lgnu/math/Duration;->valueOf(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v0

    .line 51
    .local v0, d:Lgnu/math/Duration;
    if-nez v0, :cond_0

    .line 52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a valid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/math/Unit;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " duration: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_0
    return-object v0
.end method

.method public static parseDayTimeDuration(Ljava/lang/String;)Lgnu/math/Duration;
    .locals 1
    .parameter "str"

    .prologue
    .line 69
    sget-object v0, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    invoke-static {p0, v0}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static parseDuration(Ljava/lang/String;)Lgnu/math/Duration;
    .locals 1
    .parameter "str"

    .prologue
    .line 58
    sget-object v0, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    invoke-static {p0, v0}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static parseYearMonthDuration(Ljava/lang/String;)Lgnu/math/Duration;
    .locals 1
    .parameter "str"

    .prologue
    .line 63
    sget-object v0, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    invoke-static {p0, v0}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v0

    return-object v0
.end method

.method private static scanPart(Ljava/lang/String;I)J
    .locals 14
    .parameter "str"
    .parameter "start"

    .prologue
    const-wide/16 v12, -0x1

    const-wide/16 v10, 0x0

    .line 393
    move v2, p1

    .line 394
    .local v2, i:I
    const-wide/16 v4, -0x1

    .line 395
    .local v4, val:J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 396
    .local v3, len:I
    :cond_0
    if-ge v2, v3, :cond_4

    .line 398
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 399
    .local v0, ch:C
    add-int/lit8 v2, v2, 0x1

    .line 400
    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 401
    .local v1, dig:I
    if-gez v1, :cond_2

    .line 403
    cmp-long v6, v4, v10

    if-gez v6, :cond_1

    shl-int/lit8 v6, p1, 0x10

    int-to-long v6, v6

    .line 410
    .end local v0           #ch:C
    .end local v1           #dig:I
    :goto_0
    return-wide v6

    .line 404
    .restart local v0       #ch:C
    .restart local v1       #dig:I
    :cond_1
    const/16 v6, 0x20

    shl-long v6, v4, v6

    shl-int/lit8 v8, v2, 0x10

    int-to-long v8, v8

    or-long/2addr v6, v8

    int-to-long v8, v0

    or-long/2addr v6, v8

    goto :goto_0

    .line 406
    :cond_2
    cmp-long v6, v4, v10

    if-gez v6, :cond_3

    int-to-long v6, v1

    move-wide v4, v6

    .line 407
    :goto_1
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    move-wide v6, v12

    .line 408
    goto :goto_0

    .line 406
    :cond_3
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    int-to-long v8, v1

    add-long/2addr v6, v8

    move-wide v4, v6

    goto :goto_1

    .line 410
    .end local v0           #ch:C
    .end local v1           #dig:I
    :cond_4
    cmp-long v6, v4, v10

    if-gez v6, :cond_5

    shl-int/lit8 v6, p1, 0x10

    int-to-long v6, v6

    goto :goto_0

    :cond_5
    move-wide v6, v12

    goto :goto_0
.end method

.method public static times(Lgnu/math/Duration;D)Lgnu/math/Duration;
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide v9, 0x41cdcd6500000000L

    .line 271
    iget-object v5, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v6, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    if-ne v5, v6, :cond_0

    .line 272
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "cannot multiply general duration"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 273
    :cond_0
    iget v5, p0, Lgnu/math/Duration;->months:I

    int-to-double v5, v5

    mul-double v1, v5, p1

    .line 274
    .local v1, months:D
    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 275
    :cond_1
    new-instance v5, Ljava/lang/ArithmeticException;

    const-string v6, "overflow/NaN when multiplying a duration"

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 276
    :cond_2
    iget-wide v5, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v7, 0x3b9aca00

    mul-long/2addr v5, v7

    iget v7, p0, Lgnu/math/Duration;->nanos:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    long-to-double v5, v5

    mul-double v3, v5, p1

    .line 277
    .local v3, nanos:D
    new-instance v0, Lgnu/math/Duration;

    invoke-direct {v0}, Lgnu/math/Duration;-><init>()V

    .line 278
    .local v0, d:Lgnu/math/Duration;
    const-wide/high16 v5, 0x3fe0

    add-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, v0, Lgnu/math/Duration;->months:I

    .line 279
    div-double v5, v3, v9

    double-to-int v5, v5

    int-to-long v5, v5

    iput-wide v5, v0, Lgnu/math/Duration;->seconds:J

    .line 280
    rem-double v5, v3, v9

    double-to-int v5, v5

    iput v5, v0, Lgnu/math/Duration;->nanos:I

    .line 281
    iget-object v5, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    iput-object v5, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 282
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;
    .locals 20
    .parameter "str"
    .parameter "unit"

    .prologue
    .line 77
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 78
    const/4 v4, 0x0

    .line 79
    .local v4, pos:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 81
    .local v5, len:I
    if-ge v4, v5, :cond_1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x2d

    if-ne v3, v6, :cond_1

    .line 83
    const/4 v3, 0x1

    .line 84
    .local v3, negative:Z
    add-int/lit8 v4, v4, 0x1

    move v8, v3

    .end local v3           #negative:Z
    .local v8, negative:Z
    move v3, v4

    .line 88
    .end local v4           #pos:I
    .local v3, pos:I
    :goto_0
    add-int/lit8 v4, v3, 0x1

    if-ge v4, v5, :cond_0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x50

    if-eq v4, v6, :cond_2

    .line 89
    :cond_0
    const/16 p0, 0x0

    move-object/from16 p1, p0

    move/from16 p0, v3

    .line 189
    .end local v3           #pos:I
    .end local v5           #len:I
    .end local p1
    .local p0, pos:I
    :goto_1
    return-object p1

    .line 87
    .end local v8           #negative:Z
    .restart local v4       #pos:I
    .restart local v5       #len:I
    .local p0, str:Ljava/lang/String;
    .restart local p1
    :cond_1
    const/4 v3, 0x0

    .local v3, negative:Z
    move v8, v3

    .end local v3           #negative:Z
    .restart local v8       #negative:Z
    move v3, v4

    .end local v4           #pos:I
    .local v3, pos:I
    goto :goto_0

    .line 90
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 91
    const/4 v4, 0x0

    .local v4, months:I
    const/4 v7, 0x0

    .line 92
    .local v7, nanos:I
    const-wide/16 v11, 0x0

    .line 93
    .local v11, seconds:J
    move-object/from16 v0, p0

    move v1, v3

    invoke-static {v0, v1}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v9

    .line 94
    .local v9, part:J
    long-to-int v3, v9

    shr-int/lit8 v6, v3, 0x10

    .line 95
    .end local v3           #pos:I
    .local v6, pos:I
    long-to-int v3, v9

    int-to-char v3, v3

    .line 96
    .local v3, ch:C
    sget-object v13, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    move-object/from16 v0, p1

    move-object v1, v13

    if-ne v0, v1, :cond_4

    const/16 v13, 0x59

    if-eq v3, v13, :cond_3

    const/16 v13, 0x4d

    if-ne v3, v13, :cond_4

    .line 97
    :cond_3
    const/16 p0, 0x0

    move-object/from16 p1, p0

    move/from16 p0, v6

    .end local v6           #pos:I
    .local p0, pos:I
    goto :goto_1

    .line 98
    .restart local v6       #pos:I
    .local p0, str:Ljava/lang/String;
    :cond_4
    const/16 v13, 0x59

    if-ne v3, v13, :cond_5

    .line 100
    const/16 v3, 0x20

    shr-long v3, v9, v3

    long-to-int v3, v3

    mul-int/lit8 v4, v3, 0xc

    .line 101
    long-to-int v3, v9

    shr-int/lit8 v6, v3, 0x10

    .line 102
    move-object/from16 v0, p0

    move v1, v6

    invoke-static {v0, v1}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    .end local v3           #ch:C
    move-result-wide v9

    .line 103
    long-to-int v3, v9

    int-to-char v3, v3

    .line 105
    .restart local v3       #ch:C
    :cond_5
    const/16 v13, 0x4d

    if-ne v3, v13, :cond_1b

    .line 107
    int-to-long v3, v4

    const/16 v6, 0x20

    shr-long v13, v9, v6

    add-long/2addr v3, v13

    long-to-int v4, v3

    .line 108
    long-to-int v3, v9

    shr-int/lit8 v6, v3, 0x10

    .line 109
    move-object/from16 v0, p0

    move v1, v6

    invoke-static {v0, v1}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    .end local v3           #ch:C
    move-result-wide v9

    .line 110
    long-to-int v3, v9

    int-to-char v3, v3

    .restart local v3       #ch:C
    move/from16 v16, v4

    .end local v4           #months:I
    .local v16, months:I
    move v4, v6

    .end local v6           #pos:I
    .local v4, pos:I
    move/from16 v6, v16

    .line 112
    .end local v16           #months:I
    .local v6, months:I
    :goto_2
    sget-object v13, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    move-object/from16 v0, p1

    move-object v1, v13

    if-ne v0, v1, :cond_6

    if-eq v4, v5, :cond_6

    .line 113
    const/16 p0, 0x0

    move-object/from16 p1, p0

    move/from16 p0, v4

    .end local v4           #pos:I
    .local p0, pos:I
    goto :goto_1

    .line 114
    .restart local v4       #pos:I
    .local p0, str:Ljava/lang/String;
    :cond_6
    const/16 v13, 0x44

    if-ne v3, v13, :cond_8

    .line 116
    sget-object v11, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    .end local v11           #seconds:J
    move-object/from16 v0, p1

    move-object v1, v11

    if-ne v0, v1, :cond_7

    .line 117
    const/16 p0, 0x0

    move-object/from16 p1, p0

    move/from16 p0, v4

    .end local v4           #pos:I
    .local p0, pos:I
    goto/16 :goto_1

    .line 118
    .restart local v4       #pos:I
    .local p0, str:Ljava/lang/String;
    :cond_7
    const-wide/32 v11, 0x15180

    const/16 v4, 0x20

    shr-long v13, v9, v4

    long-to-int v4, v13

    int-to-long v13, v4

    mul-long/2addr v11, v13

    .line 119
    .restart local v11       #seconds:J
    long-to-int v4, v9

    shr-int/lit8 v4, v4, 0x10

    .line 120
    move-object/from16 v0, p0

    move v1, v4

    invoke-static {v0, v1}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v9

    .line 122
    :cond_8
    shl-int/lit8 v13, v4, 0x10

    int-to-long v13, v13

    cmp-long v13, v9, v13

    if-eqz v13, :cond_9

    .line 123
    const/16 p0, 0x0

    move-object/from16 p1, p0

    move/from16 p0, v4

    .end local v4           #pos:I
    .local p0, pos:I
    goto/16 :goto_1

    .line 124
    .restart local v4       #pos:I
    .local p0, str:Ljava/lang/String;
    :cond_9
    if-ne v4, v5, :cond_a

    move/from16 p0, v3

    .end local v3           #ch:C
    .local p0, ch:C
    move/from16 v16, v7

    .end local v7           #nanos:I
    .local v16, nanos:I
    move v7, v4

    .end local v4           #pos:I
    .local v7, pos:I
    move/from16 v4, v16

    .line 176
    .end local v16           #nanos:I
    .local v4, nanos:I
    :goto_3
    if-eq v7, v5, :cond_13

    .line 177
    const/16 p0, 0x0

    move-object/from16 p1, p0

    move/from16 p0, v7

    .end local v7           #pos:I
    .local p0, pos:I
    goto/16 :goto_1

    .line 128
    .restart local v3       #ch:C
    .local v4, pos:I
    .local v7, nanos:I
    .local p0, str:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .end local v3           #ch:C
    const/16 v9, 0x54

    if-ne v3, v9, :cond_b

    .end local v9           #part:J
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_c

    :cond_b
    move/from16 p0, v4

    .line 129
    .end local v4           #pos:I
    .local p0, pos:I
    const/16 p1, 0x0

    goto/16 :goto_1

    .line 132
    .restart local v4       #pos:I
    .local p0, str:Ljava/lang/String;
    :cond_c
    sget-object v3, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    move-object/from16 v0, p1

    move-object v1, v3

    if-ne v0, v1, :cond_d

    .line 133
    const/16 p0, 0x0

    move-object/from16 p1, p0

    move/from16 p0, v4

    .end local v4           #pos:I
    .local p0, pos:I
    goto/16 :goto_1

    .line 134
    .restart local v4       #pos:I
    .local p0, str:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    move v1, v4

    invoke-static {v0, v1}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v9

    .line 135
    .restart local v9       #part:J
    long-to-int v3, v9

    int-to-char v3, v3

    .line 136
    .restart local v3       #ch:C
    const/16 v13, 0x48

    if-ne v3, v13, :cond_e

    .line 138
    const/16 v3, 0x20

    shr-long v3, v9, v3

    long-to-int v3, v3

    mul-int/lit16 v3, v3, 0xe10

    int-to-long v3, v3

    add-long/2addr v11, v3

    .line 139
    long-to-int v3, v9

    shr-int/lit8 v4, v3, 0x10

    .line 140
    move-object/from16 v0, p0

    move v1, v4

    invoke-static {v0, v1}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    .end local v3           #ch:C
    move-result-wide v9

    .line 141
    long-to-int v3, v9

    int-to-char v3, v3

    .line 143
    .restart local v3       #ch:C
    :cond_e
    const/16 v13, 0x4d

    if-ne v3, v13, :cond_1a

    .line 145
    const/16 v3, 0x20

    shr-long v3, v9, v3

    long-to-int v3, v3

    mul-int/lit8 v3, v3, 0x3c

    int-to-long v3, v3

    add-long/2addr v11, v3

    .line 146
    long-to-int v3, v9

    shr-int/lit8 v4, v3, 0x10

    .line 147
    move-object/from16 v0, p0

    move v1, v4

    invoke-static {v0, v1}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    .end local v3           #ch:C
    move-result-wide v9

    .line 148
    long-to-int v3, v9

    int-to-char v3, v3

    .restart local v3       #ch:C
    move-wide/from16 v16, v9

    .end local v9           #part:J
    .local v16, part:J
    move-wide/from16 v18, v11

    .end local v11           #seconds:J
    .local v18, seconds:J
    move-wide/from16 v12, v18

    .end local v18           #seconds:J
    .local v12, seconds:J
    move-wide/from16 v10, v16

    .line 150
    .end local v16           #part:J
    .local v10, part:J
    :goto_4
    const/16 v9, 0x53

    if-eq v3, v9, :cond_f

    const/16 v9, 0x2e

    if-ne v3, v9, :cond_19

    .line 152
    :cond_f
    const/16 v4, 0x20

    shr-long v14, v10, v4

    long-to-int v4, v14

    int-to-long v14, v4

    add-long/2addr v12, v14

    .line 153
    long-to-int v4, v10

    shr-int/lit8 v4, v4, 0x10

    move v9, v4

    .end local v4           #pos:I
    .local v9, pos:I
    move-wide/from16 v16, v12

    .end local v12           #seconds:J
    .local v16, seconds:J
    move-wide/from16 v13, v16

    .line 155
    .end local v16           #seconds:J
    .local v13, seconds:J
    :goto_5
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_18

    add-int/lit8 v4, v9, 0x1

    if-ge v4, v5, :cond_18

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v12, 0xa

    invoke-static {v4, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-ltz v4, :cond_18

    .line 158
    const/4 v4, 0x0

    .local v4, nfrac:I
    move/from16 v16, v4

    .end local v4           #nfrac:I
    .local v16, nfrac:I
    move v4, v9

    .end local v9           #pos:I
    .local v4, pos:I
    move/from16 v9, v16

    .line 159
    .end local v16           #nfrac:I
    .local v9, nfrac:I
    :goto_6
    if-ge v4, v5, :cond_17

    .line 161
    add-int/lit8 v12, v4, 0x1

    .end local v4           #pos:I
    .local v12, pos:I
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 162
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 163
    .local v4, dig:I
    if-gez v4, :cond_10

    move/from16 p0, v3

    .end local v3           #ch:C
    .local p0, ch:C
    move v3, v7

    .end local v7           #nanos:I
    .local v3, nanos:I
    move v7, v9

    .end local v9           #nfrac:I
    .local v7, nfrac:I
    move v9, v12

    .line 170
    .end local v4           #dig:I
    .end local v12           #pos:I
    .local v9, pos:I
    :goto_7
    add-int/lit8 v4, v7, 0x1

    .end local v7           #nfrac:I
    .local v4, nfrac:I
    const/16 v12, 0x9

    if-ge v7, v12, :cond_12

    .line 171
    mul-int/lit8 v3, v3, 0xa

    move v7, v4

    .end local v4           #nfrac:I
    .restart local v7       #nfrac:I
    goto :goto_7

    .line 165
    .local v3, ch:C
    .local v4, dig:I
    .local v7, nanos:I
    .local v9, nfrac:I
    .restart local v12       #pos:I
    .local p0, str:Ljava/lang/String;
    :cond_10
    const/16 v15, 0x9

    if-ge v9, v15, :cond_11

    .line 166
    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v4, v7

    .line 159
    .end local v7           #nanos:I
    .local v4, nanos:I
    :goto_8
    add-int/lit8 v7, v9, 0x1

    .end local v9           #nfrac:I
    .local v7, nfrac:I
    move v9, v7

    .end local v7           #nfrac:I
    .restart local v9       #nfrac:I
    move v7, v4

    .end local v4           #nanos:I
    .local v7, nanos:I
    move v4, v12

    .end local v12           #pos:I
    .local v4, pos:I
    goto :goto_6

    .line 167
    .local v4, dig:I
    .restart local v12       #pos:I
    :cond_11
    const/16 v15, 0x9

    if-ne v9, v15, :cond_16

    const/4 v15, 0x5

    if-lt v4, v15, :cond_16

    .line 168
    add-int/lit8 v4, v7, 0x1

    .end local v7           #nanos:I
    .local v4, nanos:I
    goto :goto_8

    .line 172
    .end local v12           #pos:I
    .local v3, nanos:I
    .local v4, nfrac:I
    .local v9, pos:I
    .local p0, ch:C
    :cond_12
    const/16 v4, 0x53

    move/from16 v0, p0

    move v1, v4

    if-eq v0, v1, :cond_15

    .line 173
    .end local v4           #nfrac:I
    const/16 p0, 0x0

    move-object/from16 p1, p0

    move/from16 p0, v9

    .end local v9           #pos:I
    .local p0, pos:I
    goto/16 :goto_1

    .line 178
    .end local v3           #nanos:I
    .end local v10           #part:J
    .end local v13           #seconds:J
    .local v4, nanos:I
    .local v7, pos:I
    .local v9, part:J
    .restart local v11       #seconds:J
    .local p0, ch:C
    :cond_13
    new-instance p0, Lgnu/math/Duration;

    .end local p0           #ch:C
    invoke-direct/range {p0 .. p0}, Lgnu/math/Duration;-><init>()V

    .line 179
    .local p0, d:Lgnu/math/Duration;
    if-eqz v8, :cond_14

    .line 181
    neg-int v3, v6

    .line 182
    .end local v6           #months:I
    .local v3, months:I
    neg-long v5, v11

    .line 183
    .end local v11           #seconds:J
    .local v5, seconds:J
    neg-int v4, v4

    .line 185
    :goto_9
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/math/Duration;->months:I

    .line 186
    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lgnu/math/Duration;->seconds:J

    .line 187
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/math/Duration;->nanos:I

    .line 188
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    move-object/from16 p1, p0

    move/from16 p0, v7

    .line 189
    .end local v7           #pos:I
    .local p0, pos:I
    goto/16 :goto_1

    .end local v3           #months:I
    .local v5, len:I
    .restart local v6       #months:I
    .restart local v7       #pos:I
    .restart local v11       #seconds:J
    .local p0, d:Lgnu/math/Duration;
    :cond_14
    move v3, v6

    .end local v6           #months:I
    .restart local v3       #months:I
    move-wide v5, v11

    .end local v11           #seconds:J
    .local v5, seconds:J
    goto :goto_9

    .end local v4           #nanos:I
    .end local v7           #pos:I
    .local v3, nanos:I
    .local v5, len:I
    .restart local v6       #months:I
    .local v9, pos:I
    .restart local v10       #part:J
    .restart local v13       #seconds:J
    .local p0, ch:C
    :cond_15
    move v4, v3

    .end local v3           #nanos:I
    .restart local v4       #nanos:I
    move v7, v9

    .end local v9           #pos:I
    .restart local v7       #pos:I
    move-wide/from16 v16, v10

    .end local v10           #part:J
    .local v16, part:J
    move-wide/from16 v9, v16

    .end local v16           #part:J
    .local v9, part:J
    move-wide v11, v13

    .end local v13           #seconds:J
    .restart local v11       #seconds:J
    goto/16 :goto_3

    .end local v11           #seconds:J
    .local v3, ch:C
    .local v4, dig:I
    .local v7, nanos:I
    .local v9, nfrac:I
    .restart local v10       #part:J
    .restart local v12       #pos:I
    .restart local v13       #seconds:J
    .local p0, str:Ljava/lang/String;
    :cond_16
    move v4, v7

    .end local v7           #nanos:I
    .local v4, nanos:I
    goto :goto_8

    .end local v12           #pos:I
    .local v4, pos:I
    .restart local v7       #nanos:I
    :cond_17
    move/from16 p0, v3

    .end local v3           #ch:C
    .local p0, ch:C
    move v3, v7

    .end local v7           #nanos:I
    .local v3, nanos:I
    move v7, v9

    .end local v9           #nfrac:I
    .local v7, nfrac:I
    move v9, v4

    .end local v4           #pos:I
    .local v9, pos:I
    goto :goto_7

    .local v3, ch:C
    .local v7, nanos:I
    .local p0, str:Ljava/lang/String;
    :cond_18
    move/from16 p0, v3

    .end local v3           #ch:C
    .local p0, ch:C
    move v4, v7

    .end local v7           #nanos:I
    .local v4, nanos:I
    move v7, v9

    .end local v9           #pos:I
    .local v7, pos:I
    move-wide/from16 v16, v10

    .end local v10           #part:J
    .restart local v16       #part:J
    move-wide/from16 v9, v16

    .end local v16           #part:J
    .local v9, part:J
    move-wide v11, v13

    .end local v13           #seconds:J
    .restart local v11       #seconds:J
    goto/16 :goto_3

    .end local v9           #part:J
    .end local v11           #seconds:J
    .restart local v3       #ch:C
    .local v4, pos:I
    .local v7, nanos:I
    .restart local v10       #part:J
    .local v12, seconds:J
    .local p0, str:Ljava/lang/String;
    :cond_19
    move v9, v4

    .end local v4           #pos:I
    .local v9, pos:I
    move-wide/from16 v16, v12

    .end local v12           #seconds:J
    .local v16, seconds:J
    move-wide/from16 v13, v16

    .end local v16           #seconds:J
    .restart local v13       #seconds:J
    goto/16 :goto_5

    .end local v10           #part:J
    .end local v13           #seconds:J
    .restart local v4       #pos:I
    .local v9, part:J
    .restart local v11       #seconds:J
    :cond_1a
    move-wide/from16 v16, v9

    .end local v9           #part:J
    .local v16, part:J
    move-wide/from16 v18, v11

    .end local v11           #seconds:J
    .restart local v18       #seconds:J
    move-wide/from16 v12, v18

    .end local v18           #seconds:J
    .restart local v12       #seconds:J
    move-wide/from16 v10, v16

    .end local v16           #part:J
    .restart local v10       #part:J
    goto/16 :goto_4

    .end local v10           #part:J
    .end local v12           #seconds:J
    .local v4, months:I
    .local v6, pos:I
    .restart local v9       #part:J
    .restart local v11       #seconds:J
    :cond_1b
    move/from16 v16, v4

    .end local v4           #months:I
    .local v16, months:I
    move v4, v6

    .end local v6           #pos:I
    .local v4, pos:I
    move/from16 v6, v16

    .end local v16           #months:I
    .local v6, months:I
    goto/16 :goto_2
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 2
    .parameter "y"
    .parameter "k"

    .prologue
    const/4 v1, 0x1

    .line 194
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_0

    .line 195
    check-cast p1, Lgnu/math/Duration;

    .end local p1
    invoke-static {p0, p1, p2}, Lgnu/math/Duration;->add(Lgnu/math/Duration;Lgnu/math/Duration;I)Lgnu/math/Duration;

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 196
    .restart local p1
    :cond_0
    instance-of v0, p1, Lgnu/math/DateTime;

    if-eqz v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 197
    check-cast p1, Lgnu/math/DateTime;

    .end local p1
    invoke-static {p1, p0, v1}, Lgnu/math/DateTime;->add(Lgnu/math/DateTime;Lgnu/math/Duration;I)Lgnu/math/DateTime;

    move-result-object v0

    goto :goto_0

    .line 198
    .restart local p1
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 301
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_0

    .line 302
    check-cast p1, Lgnu/math/Duration;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/Duration;->compare(Lgnu/math/Duration;Lgnu/math/Duration;)I

    move-result v0

    return v0

    .line 304
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 5
    .parameter "y"

    .prologue
    .line 238
    instance-of v2, p1, Lgnu/math/RealNum;

    if-eqz v2, :cond_2

    .line 240
    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    .line 241
    .local v0, dy:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    :cond_0
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "divide of duration by 0 or NaN"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 243
    :cond_1
    const-wide/high16 v2, 0x3ff0

    div-double/2addr v2, v0

    invoke-static {p0, v2, v3}, Lgnu/math/Duration;->times(Lgnu/math/Duration;D)Lgnu/math/Duration;

    move-result-object v2

    .line 247
    .end local v0           #dy:D
    :goto_0
    return-object v2

    .line 245
    .restart local p1
    :cond_2
    instance-of v2, p1, Lgnu/math/Duration;

    if-eqz v2, :cond_3

    .line 246
    new-instance v2, Lgnu/math/DFloNum;

    check-cast p1, Lgnu/math/Duration;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/Duration;->div(Lgnu/math/Duration;Lgnu/math/Duration;)D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lgnu/math/DFloNum;-><init>(D)V

    goto :goto_0

    .line 247
    .restart local p1
    :cond_3
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 522
    if-eqz p1, :cond_0

    instance-of v0, p1, Lgnu/math/Duration;

    if-nez v0, :cond_1

    .line 523
    :cond_0
    const/4 v0, 0x0

    .line 524
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    check-cast p1, Lgnu/math/Duration;

    .end local p1
    invoke-static {p0, p1}, Lgnu/math/Duration;->equals(Lgnu/math/Duration;Lgnu/math/Duration;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDays()I
    .locals 4

    .prologue
    .line 426
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getHours()I
    .locals 4

    .prologue
    .line 431
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getMinutes()I
    .locals 4

    .prologue
    const-wide/16 v2, 0x3c

    .line 436
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    div-long/2addr v0, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getMonths()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lgnu/math/Duration;->months:I

    rem-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getNanoSeconds()J
    .locals 4

    .prologue
    .line 466
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget v2, p0, Lgnu/math/Duration;->nanos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getNanoSecondsOnly()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lgnu/math/Duration;->nanos:I

    return v0
.end method

.method public getSecondsOnly()I
    .locals 4

    .prologue
    .line 441
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getTotalMinutes()J
    .locals 4

    .prologue
    .line 461
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalMonths()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lgnu/math/Duration;->months:I

    return v0
.end method

.method public getTotalSeconds()J
    .locals 2

    .prologue
    .line 456
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    return-wide v0
.end method

.method public getYears()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lgnu/math/Duration;->months:I

    div-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 504
    iget v0, p0, Lgnu/math/Duration;->months:I

    iget-wide v1, p0, Lgnu/math/Duration;->seconds:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    iget v1, p0, Lgnu/math/Duration;->nanos:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isExact()Z
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public isZero()Z
    .locals 4

    .prologue
    .line 471
    iget v0, p0, Lgnu/math/Duration;->months:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/Duration;->nanos:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 2
    .parameter "y"

    .prologue
    .line 203
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 204
    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lgnu/math/Duration;->times(Lgnu/math/Duration;D)Lgnu/math/Duration;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    check-cast p1, Lgnu/math/Numeric;

    .end local p1
    invoke-virtual {p1, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_0
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 2
    .parameter "x"

    .prologue
    .line 210
    instance-of v0, p1, Lgnu/math/RealNum;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 212
    :cond_0
    check-cast p1, Lgnu/math/RealNum;

    .end local p1
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lgnu/math/Duration;->times(Lgnu/math/Duration;D)Lgnu/math/Duration;

    move-result-object v0

    return-object v0
.end method

.method public number()Lgnu/math/Complex;
    .locals 2

    .prologue
    .line 499
    new-instance v0, Ljava/lang/Error;

    const-string v1, "number needs to be implemented!"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 490
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/math/Duration;->months:I

    .line 491
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/Duration;->seconds:J

    .line 492
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/math/Duration;->nanos:I

    .line 493
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/Unit;

    iput-object v0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 494
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .prologue
    .line 309
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 310
    .local v11, sbuf:Ljava/lang/StringBuffer;
    iget v4, p0, Lgnu/math/Duration;->months:I

    .line 311
    .local v4, m:I
    iget-wide v9, p0, Lgnu/math/Duration;->seconds:J

    .line 312
    .local v9, s:J
    iget v7, p0, Lgnu/math/Duration;->nanos:I

    .line 313
    .local v7, n:I
    if-ltz v4, :cond_0

    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-ltz v13, :cond_0

    if-gez v7, :cond_a

    :cond_0
    const/4 v13, 0x1

    move v8, v13

    .line 314
    .local v8, neg:Z
    :goto_0
    if-eqz v8, :cond_1

    .line 316
    neg-int v4, v4

    .line 317
    neg-long v9, v9

    .line 318
    neg-int v7, v7

    .line 319
    const/16 v13, 0x2d

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 321
    :cond_1
    const/16 v13, 0x50

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 322
    div-int/lit8 v12, v4, 0xc

    .line 323
    .local v12, y:I
    if-eqz v12, :cond_2

    .line 325
    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 326
    const/16 v13, 0x59

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 327
    mul-int/lit8 v13, v12, 0xc

    sub-int/2addr v4, v13

    .line 329
    :cond_2
    if-eqz v4, :cond_3

    .line 331
    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 332
    const/16 v13, 0x4d

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 334
    :cond_3
    const-wide/32 v13, 0x15180

    div-long v0, v9, v13

    .line 335
    .local v0, d:J
    const-wide/16 v13, 0x0

    cmp-long v13, v0, v13

    if-eqz v13, :cond_4

    .line 337
    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 338
    const/16 v13, 0x44

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 339
    const-wide/32 v13, 0x15180

    mul-long/2addr v13, v0

    sub-long/2addr v9, v13

    .line 341
    :cond_4
    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-nez v13, :cond_5

    if-eqz v7, :cond_b

    .line 343
    :cond_5
    const/16 v13, 0x54

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    const-wide/16 v13, 0xe10

    div-long v2, v9, v13

    .line 345
    .local v2, hr:J
    const-wide/16 v13, 0x0

    cmp-long v13, v2, v13

    if-eqz v13, :cond_6

    .line 347
    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 348
    const/16 v13, 0x48

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 349
    const-wide/16 v13, 0xe10

    mul-long/2addr v13, v2

    sub-long/2addr v9, v13

    .line 351
    :cond_6
    const-wide/16 v13, 0x3c

    div-long v5, v9, v13

    .line 352
    .local v5, mn:J
    const-wide/16 v13, 0x0

    cmp-long v13, v5, v13

    if-eqz v13, :cond_7

    .line 354
    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 355
    const/16 v13, 0x4d

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 356
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v5

    sub-long/2addr v9, v13

    .line 358
    :cond_7
    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-nez v13, :cond_8

    if-eqz v7, :cond_9

    .line 360
    :cond_8
    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 361
    invoke-static {v7, v11}, Lgnu/math/Duration;->appendNanoSeconds(ILjava/lang/StringBuffer;)V

    .line 362
    const/16 v13, 0x53

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 367
    .end local v2           #hr:J
    .end local v5           #mn:J
    :cond_9
    :goto_1
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 313
    .end local v0           #d:J
    .end local v8           #neg:Z
    .end local v12           #y:I
    :cond_a
    const/4 v13, 0x0

    move v8, v13

    goto/16 :goto_0

    .line 365
    .restart local v0       #d:J
    .restart local v8       #neg:Z
    .restart local v12       #y:I
    :cond_b
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 366
    iget-object v13, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v14, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v13, v14, :cond_c

    const-string v13, "0M"

    :goto_2
    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_c
    const-string v13, "T0S"

    goto :goto_2
.end method

.method public unit()Lgnu/math/Unit;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    iget v0, p0, Lgnu/math/Duration;->months:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 482
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 483
    iget v0, p0, Lgnu/math/Duration;->nanos:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 484
    iget-object v0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 485
    return-void
.end method
