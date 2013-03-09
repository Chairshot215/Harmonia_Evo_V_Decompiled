.class public abstract Lgnu/math/RealNum;
.super Lgnu/math/Complex;
.source "RealNum.java"

# interfaces
.implements Ljava/lang/Comparable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lgnu/math/Complex;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "k"

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lgnu/math/RealNum;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/math/RealNum;

    check-cast p0, Lgnu/math/RealNum;

    return-object p0
.end method

.method public static asRealNumOrNull(Ljava/lang/Object;)Lgnu/math/RealNum;
    .locals 3
    .parameter "value"

    .prologue
    .line 17
    instance-of v0, p0, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 18
    check-cast p0, Lgnu/math/RealNum;

    .end local p0
    move-object v0, p0

    .line 21
    :goto_0
    return-object v0

    .line 19
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 20
    :cond_1
    new-instance v0, Lgnu/math/DFloNum;

    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    goto :goto_0

    .line 21
    .restart local p0
    :cond_2
    invoke-static {p0}, Lgnu/math/RatNum;->asRatNumOrNull(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v0

    goto :goto_0
.end method

.method public static divide(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/math/RealNum;

    check-cast p0, Lgnu/math/RealNum;

    return-object p0
.end method

.method public static times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/math/RealNum;

    check-cast p0, Lgnu/math/RealNum;

    return-object p0
.end method

.method public static toExactInt(D)Lgnu/math/IntNum;
    .locals 9
    .parameter "value"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x433

    .line 138
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    :cond_0
    new-instance v5, Ljava/lang/ArithmeticException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot convert "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to exact integer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 140
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 141
    .local v0, bits:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gez v5, :cond_2

    move v3, v8

    .line 142
    .local v3, neg:Z
    :goto_0
    const/16 v5, 0x34

    shr-long v5, v0, v5

    long-to-int v5, v5

    and-int/lit16 v2, v5, 0x7ff

    .line 143
    .local v2, exp:I
    const-wide v5, 0xfffffffffffffL

    and-long/2addr v0, v5

    .line 144
    if-nez v2, :cond_3

    .line 145
    shl-long/2addr v0, v8

    .line 148
    :goto_1
    if-gt v2, v7, :cond_6

    .line 150
    sub-int v4, v7, v2

    .line 151
    .local v4, rshift:I
    const/16 v5, 0x35

    if-le v4, v5, :cond_4

    .line 152
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v5

    .line 156
    .end local v4           #rshift:I
    :goto_2
    return-object v5

    .line 141
    .end local v2           #exp:I
    .end local v3           #neg:Z
    :cond_2
    const/4 v5, 0x0

    move v3, v5

    goto :goto_0

    .line 147
    .restart local v2       #exp:I
    .restart local v3       #neg:Z
    :cond_3
    const-wide/high16 v5, 0x10

    or-long/2addr v0, v5

    goto :goto_1

    .line 153
    .restart local v4       #rshift:I
    :cond_4
    shr-long/2addr v0, v4

    .line 154
    if-eqz v3, :cond_5

    neg-long v5, v0

    :goto_3
    invoke-static {v5, v6}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v5

    goto :goto_2

    :cond_5
    move-wide v5, v0

    goto :goto_3

    .line 156
    .end local v4           #rshift:I
    :cond_6
    if-eqz v3, :cond_7

    neg-long v5, v0

    :goto_4
    invoke-static {v5, v6}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v5

    sub-int v6, v2, v7

    invoke-static {v5, v6}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v5

    goto :goto_2

    :cond_7
    move-wide v5, v0

    goto :goto_4
.end method

.method public static toExactInt(DI)Lgnu/math/IntNum;
    .locals 2
    .parameter "value"
    .parameter "rounding_mode"

    .prologue
    .line 132
    invoke-static {p0, p1, p2}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/RealNum;->toExactInt(D)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static toInt(DI)D
    .locals 2
    .parameter "d"
    .parameter "rounding_mode"

    .prologue
    .line 100
    packed-switch p2, :pswitch_data_0

    move-wide v0, p0

    .line 111
    :goto_0
    return-wide v0

    .line 103
    :pswitch_0
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    .line 107
    :pswitch_2
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    goto :goto_0

    .line 109
    :pswitch_3
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static toScaledInt(DI)Lgnu/math/IntNum;
    .locals 1
    .parameter "f"
    .parameter "k"

    .prologue
    .line 186
    invoke-static {p0, p1}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v0

    invoke-static {v0, p2}, Lgnu/math/RealNum;->toScaledInt(Lgnu/math/RatNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledInt(Lgnu/math/RatNum;I)Lgnu/math/IntNum;
    .locals 5
    .parameter "r"
    .parameter "k"

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 194
    invoke-static {}, Lgnu/math/IntNum;->ten()Lgnu/math/IntNum;

    move-result-object v3

    if-gez p1, :cond_1

    neg-int v4, p1

    :goto_0
    invoke-static {v3, v4}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v2

    .line 195
    .local v2, power:Lgnu/math/IntNum;
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    .line 196
    .local v1, num:Lgnu/math/IntNum;
    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v0

    .line 197
    .local v0, den:Lgnu/math/IntNum;
    if-ltz p1, :cond_2

    .line 198
    invoke-static {v1, v2}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    .line 201
    :goto_1
    invoke-static {v1, v0}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object p0

    .line 203
    .end local v0           #den:Lgnu/math/IntNum;
    .end local v1           #num:Lgnu/math/IntNum;
    .end local v2           #power:Lgnu/math/IntNum;
    :cond_0
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lgnu/math/RatNum;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object v3

    return-object v3

    :cond_1
    move v4, p1

    .line 194
    goto :goto_0

    .line 200
    .restart local v0       #den:Lgnu/math/IntNum;
    .restart local v1       #num:Lgnu/math/IntNum;
    .restart local v2       #power:Lgnu/math/IntNum;
    :cond_2
    invoke-static {v0, v2}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_1
.end method

.method public static toStringDecimal(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "dstr"

    .prologue
    const/16 v14, 0x45

    const/16 v13, 0x30

    const/16 v12, 0x2d

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 349
    invoke-virtual {p0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 350
    .local v2, indexE:I
    if-gez v2, :cond_0

    move-object v8, p0

    .line 379
    :goto_0
    return-object v8

    .line 352
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 354
    .local v3, len:I
    sub-int v8, v3, v11

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 355
    .local v0, ch:C
    const/16 v8, 0x79

    if-eq v0, v8, :cond_1

    const/16 v8, 0x4e

    if-ne v0, v8, :cond_2

    :cond_1
    move-object v8, p0

    .line 356
    goto :goto_0

    .line 357
    :cond_2
    new-instance v7, Ljava/lang/StringBuffer;

    add-int/lit8 v8, v3, 0xa

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 358
    .local v7, sbuf:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v12, :cond_3

    move v4, v11

    .line 359
    .local v4, neg:Z
    :goto_1
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v12, :cond_4

    .line 361
    new-instance v8, Ljava/lang/Error;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "not implemented: toStringDecimal given non-negative exponent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v4           #neg:Z
    :cond_3
    move v4, v10

    .line 358
    goto :goto_1

    .line 365
    .restart local v4       #neg:Z
    :cond_4
    add-int/lit8 v5, v2, 0x2

    .line 366
    .local v5, pos:I
    const/4 v1, 0x0

    .local v1, exp:I
    move v6, v5

    .line 367
    .end local v5           #pos:I
    .local v6, pos:I
    :goto_2
    if-ge v6, v3, :cond_5

    .line 368
    mul-int/lit8 v8, v1, 0xa

    add-int/lit8 v5, v6, 0x1

    .end local v6           #pos:I
    .restart local v5       #pos:I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int/2addr v9, v13

    add-int v1, v8, v9

    move v6, v5

    .end local v5           #pos:I
    .restart local v6       #pos:I
    goto :goto_2

    .line 369
    :cond_5
    if-eqz v4, :cond_6

    .line 370
    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 371
    :cond_6
    const-string v8, "0."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 373
    :cond_7
    const/4 v5, 0x0

    .end local v6           #pos:I
    .restart local v5       #pos:I
    :goto_4
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pos:I
    .restart local v6       #pos:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v14, :cond_b

    .line 375
    if-eq v0, v12, :cond_9

    move v8, v11

    :goto_5
    const/16 v9, 0x2e

    if-eq v0, v9, :cond_a

    move v9, v11

    :goto_6
    and-int/2addr v8, v9

    if-eqz v8, :cond_c

    if-ne v0, v13, :cond_8

    if-ge v6, v2, :cond_c

    .line 377
    :cond_8
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v5, v6

    .end local v6           #pos:I
    .restart local v5       #pos:I
    goto :goto_4

    .end local v5           #pos:I
    .restart local v6       #pos:I
    :cond_9
    move v8, v10

    .line 375
    goto :goto_5

    :cond_a
    move v9, v10

    goto :goto_6

    .line 379
    :cond_b
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_c
    move v5, v6

    .end local v6           #pos:I
    .restart local v5       #pos:I
    goto :goto_4
.end method

.method public static toStringScientific(Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 6
    .parameter "dstr"
    .parameter "sbuf"

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 275
    .local v0, neg:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 276
    const/16 v1, 0x2d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 277
    :cond_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    move v3, v1

    .line 279
    .local v3, pos:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 280
    .local v2, len:I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x30

    if-ne v1, v4, :cond_7

    .line 282
    move v4, v3

    .local v4, start:I
    move v0, v3

    .line 285
    .end local v3           #pos:I
    .local v0, pos:I
    :goto_2
    if-ne v0, v2, :cond_3

    .line 287
    const-string p0, "0"

    .end local p0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    const/4 p0, 0x0

    .local p0, exp:I
    :goto_3
    move v5, p0

    .end local p0           #exp:I
    .local v5, exp:I
    move p0, v0

    .end local v0           #pos:I
    .local p0, pos:I
    move v0, v5

    .line 328
    .end local v4           #start:I
    .end local v5           #exp:I
    .local v0, exp:I
    :goto_4
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    .line 329
    const/4 v1, -0x1

    .local v1, slen:I
    move v2, v1

    .line 332
    .end local v1           #slen:I
    .local v2, slen:I
    :goto_5
    add-int/lit8 v1, p0, -0x1

    .end local p0           #pos:I
    .local v1, pos:I
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    .line 333
    .local p0, ch:C
    const/16 v3, 0x30

    if-ne p0, v3, :cond_a

    .line 334
    move p0, v1

    .end local v2           #slen:I
    .local p0, slen:I
    move v2, p0

    .end local p0           #slen:I
    .restart local v2       #slen:I
    move p0, v1

    .line 341
    .end local v1           #pos:I
    .local p0, pos:I
    goto :goto_5

    .line 274
    .end local v0           #exp:I
    .end local v2           #slen:I
    .local p0, dstr:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    .local v0, neg:Z
    :cond_2
    const/4 v1, 0x0

    move v3, v1

    goto :goto_1

    .line 291
    .local v0, pos:I
    .local v2, len:I
    .restart local v4       #start:I
    :cond_3
    add-int/lit8 v1, v0, 0x1

    .end local v0           #pos:I
    .restart local v1       #pos:I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 292
    .local v0, ch:C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_6

    const/16 v3, 0x39

    if-gt v0, v3, :cond_6

    const/16 v3, 0x30

    if-ne v0, v3, :cond_4

    if-ne v1, v2, :cond_6

    .line 294
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 295
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 296
    const/16 v3, 0x30

    if-ne v0, v3, :cond_5

    const/4 v0, 0x0

    .line 297
    .local v0, exp:I
    :goto_6
    if-ne v1, v2, :cond_f

    .line 298
    const/16 p0, 0x30

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .end local p0           #dstr:Ljava/lang/String;
    move p0, v0

    .end local v0           #exp:I
    .local p0, exp:I
    move v0, v1

    .end local v1           #pos:I
    .local v0, pos:I
    goto :goto_3

    .line 296
    .local v0, ch:C
    .restart local v1       #pos:I
    .local p0, dstr:Ljava/lang/String;
    :cond_5
    sub-int v0, v4, v1

    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 301
    .end local v1           #pos:I
    .local v0, exp:I
    .restart local v3       #pos:I
    :goto_7
    if-ge v3, v2, :cond_e

    .line 302
    add-int/lit8 v1, v3, 0x1

    .end local v3           #pos:I
    .restart local v1       #pos:I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v1

    .end local v1           #pos:I
    .restart local v3       #pos:I
    goto :goto_7

    .end local v3           #pos:I
    .local v0, ch:C
    .restart local v1       #pos:I
    :cond_6
    move v0, v1

    .line 306
    .end local v1           #pos:I
    .local v0, pos:I
    goto :goto_2

    .line 311
    .end local v4           #start:I
    .local v0, neg:Z
    .restart local v3       #pos:I
    :cond_7
    if-eqz v0, :cond_9

    const/4 v0, 0x2

    .end local v0           #neg:Z
    :goto_8
    sub-int v1, v2, v0

    .line 312
    .local v1, ndigits:I
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 317
    .local v0, dot:I
    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 318
    .local v1, exp:I
    add-int/lit8 v0, v3, 0x1

    .end local v3           #pos:I
    .local v0, pos:I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 319
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 320
    :goto_9
    if-ge v0, v2, :cond_d

    .line 322
    add-int/lit8 v3, v0, 0x1

    .end local v0           #pos:I
    .restart local v3       #pos:I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 323
    .local v0, ch:C
    const/16 v4, 0x2e

    if-eq v0, v4, :cond_8

    .line 324
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    move v0, v3

    .line 325
    .end local v3           #pos:I
    .local v0, pos:I
    goto :goto_9

    .line 311
    .end local v1           #exp:I
    .local v0, neg:Z
    .restart local v3       #pos:I
    :cond_9
    const/4 v0, 0x1

    goto :goto_8

    .line 337
    .end local v3           #pos:I
    .local v0, exp:I
    .local v1, pos:I
    .local v2, slen:I
    .local p0, ch:C
    :cond_a
    const/16 v3, 0x2e

    if-ne p0, v3, :cond_c

    .line 338
    add-int/lit8 p0, v1, 0x2

    .line 342
    .end local v2           #slen:I
    .local p0, slen:I
    :goto_a
    if-ltz p0, :cond_b

    .line 343
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 344
    :cond_b
    return v0

    .restart local v2       #slen:I
    .local p0, ch:C
    :cond_c
    move p0, v2

    .end local v2           #slen:I
    .local p0, slen:I
    goto :goto_a

    .local v0, pos:I
    .local v1, exp:I
    .local v2, len:I
    .local p0, dstr:Ljava/lang/String;
    :cond_d
    move p0, v0

    .end local v0           #pos:I
    .local p0, pos:I
    move v0, v1

    .end local v1           #exp:I
    .local v0, exp:I
    goto/16 :goto_4

    .restart local v3       #pos:I
    .restart local v4       #start:I
    .local p0, dstr:Ljava/lang/String;
    :cond_e
    move p0, v0

    .end local v0           #exp:I
    .local p0, exp:I
    move v0, v3

    .end local v3           #pos:I
    .local v0, pos:I
    goto/16 :goto_3

    .local v0, exp:I
    .local v1, pos:I
    .local p0, dstr:Ljava/lang/String;
    :cond_f
    move v3, v1

    .end local v1           #pos:I
    .restart local v3       #pos:I
    goto :goto_7
.end method

.method public static toStringScientific(D)Ljava/lang/String;
    .locals 1
    .parameter "d"

    .prologue
    .line 248
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringScientific(F)Ljava/lang/String;
    .locals 1
    .parameter "d"

    .prologue
    .line 243
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringScientific(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "dstr"

    .prologue
    const/16 v6, 0x45

    .line 257
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 258
    .local v2, indexE:I
    if-ltz v2, :cond_0

    move-object v5, p0

    .line 269
    :goto_0
    return-object v5

    .line 260
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 262
    .local v3, len:I
    const/4 v5, 0x1

    sub-int v5, v3, v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 263
    .local v0, ch:C
    const/16 v5, 0x79

    if-eq v0, v5, :cond_1

    const/16 v5, 0x4e

    if-ne v0, v5, :cond_2

    :cond_1
    move-object v5, p0

    .line 264
    goto :goto_0

    .line 265
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    add-int/lit8 v5, v3, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 266
    .local v4, sbuf:Ljava/lang/StringBuffer;
    invoke-static {p0, v4}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v1

    .line 267
    .local v1, exp:I
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 268
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 269
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public abs()Lgnu/math/Numeric;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lgnu/math/RealNum;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public abstract add(Ljava/lang/Object;I)Lgnu/math/Numeric;
.end method

.method public asBigDecimal()Ljava/math/BigDecimal;
    .locals 3

    .prologue
    .line 238
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "o"

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->compare(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public abstract div(Ljava/lang/Object;)Lgnu/math/Numeric;
.end method

.method public exp()Lgnu/math/Complex;
    .locals 3

    .prologue
    .line 161
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public final im()Lgnu/math/RealNum;
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public abstract isNegative()Z
.end method

.method public isZero()Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lgnu/math/RealNum;->sign()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public log()Lgnu/math/Complex;
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 166
    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    .line 167
    .local v0, x:D
    cmpg-double v2, v0, v3

    if-gez v2, :cond_0

    .line 168
    invoke-static {v0, v1, v3, v4}, Lgnu/math/DComplex;->log(DD)Lgnu/math/Complex;

    move-result-object v2

    .line 169
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lgnu/math/DFloNum;

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lgnu/math/DFloNum;-><init>(D)V

    goto :goto_0
.end method

.method public max(Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 5
    .parameter "x"

    .prologue
    .line 31
    invoke-virtual {p0}, Lgnu/math/RealNum;->isExact()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lgnu/math/RealNum;->isExact()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 32
    .local v0, exact:Z
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, p0

    .line 33
    .local v1, result:Lgnu/math/RealNum;
    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {v1}, Lgnu/math/RealNum;->isExact()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    new-instance v2, Lgnu/math/DFloNum;

    invoke-virtual {v1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lgnu/math/DFloNum;-><init>(D)V

    .end local v1           #result:Lgnu/math/RealNum;
    .local v2, result:Lgnu/math/RealNum;
    move-object v1, v2

    .line 35
    .end local v2           #result:Lgnu/math/RealNum;
    :cond_0
    return-object v1

    .line 31
    .end local v0           #exact:Z
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .restart local v0       #exact:Z
    :cond_2
    move-object v1, p1

    .line 32
    goto :goto_1
.end method

.method public min(Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 5
    .parameter "x"

    .prologue
    .line 40
    invoke-virtual {p0}, Lgnu/math/RealNum;->isExact()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lgnu/math/RealNum;->isExact()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 41
    .local v0, exact:Z
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 42
    .local v1, result:Lgnu/math/RealNum;
    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {v1}, Lgnu/math/RealNum;->isExact()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    new-instance v2, Lgnu/math/DFloNum;

    invoke-virtual {v1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lgnu/math/DFloNum;-><init>(D)V

    .end local v1           #result:Lgnu/math/RealNum;
    .local v2, result:Lgnu/math/RealNum;
    move-object v1, v2

    .line 44
    .end local v2           #result:Lgnu/math/RealNum;
    :cond_0
    return-object v1

    .line 40
    .end local v0           #exact:Z
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .restart local v0       #exact:Z
    :cond_2
    move-object v1, p0

    .line 41
    goto :goto_1
.end method

.method public abstract mul(Ljava/lang/Object;)Lgnu/math/Numeric;
.end method

.method public final re()Lgnu/math/RealNum;
    .locals 0

    .prologue
    .line 12
    return-object p0
.end method

.method public rneg()Lgnu/math/RealNum;
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/math/RealNum;

    return-object p0
.end method

.method public abstract sign()I
.end method

.method public final sin()Lgnu/math/Complex;
    .locals 3

    .prologue
    .line 172
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public final sqrt()Lgnu/math/Complex;
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 176
    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    .line 177
    .local v0, d:D
    cmpl-double v2, v0, v3

    if-ltz v2, :cond_0

    .line 178
    new-instance v2, Lgnu/math/DFloNum;

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lgnu/math/DFloNum;-><init>(D)V

    .line 180
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0, v1, v3, v4}, Lgnu/math/DComplex;->sqrt(DD)Lgnu/math/Complex;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic toExact()Lgnu/math/Complex;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toExact()Lgnu/math/Numeric;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public toExact()Lgnu/math/RatNum;
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public toExactInt(I)Lgnu/math/IntNum;
    .locals 2
    .parameter "rounding_mode"

    .prologue
    .line 126
    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toInexact()Lgnu/math/Complex;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lgnu/math/RealNum;->toInexact()Lgnu/math/RealNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toInexact()Lgnu/math/Numeric;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lgnu/math/RealNum;->toInexact()Lgnu/math/RealNum;

    move-result-object v0

    return-object v0
.end method

.method public toInexact()Lgnu/math/RealNum;
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    .line 92
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public toInt(I)Lgnu/math/RealNum;
    .locals 3
    .parameter "rounding_mode"

    .prologue
    .line 120
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public toScaledInt(I)Lgnu/math/IntNum;
    .locals 1
    .parameter "k"

    .prologue
    .line 209
    invoke-virtual {p0}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/math/RealNum;->toScaledInt(Lgnu/math/RatNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method
