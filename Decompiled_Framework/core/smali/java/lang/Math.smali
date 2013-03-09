.class public final Ljava/lang/Math;
.super Ljava/lang/Object;
.source "Math.java"


# static fields
.field public static final E:D = 2.718281828459045

.field public static final PI:D = 3.141592653589793

.field private static random:Ljava/util/Random;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native IEEEremainder(DD)D
.end method

.method public static native abs(D)D
.end method

.method public static native abs(F)F
.end method

.method public static native abs(I)I
.end method

.method public static native abs(J)J
.end method

.method public static native acos(D)D
.end method

.method public static native asin(D)D
.end method

.method public static native atan(D)D
.end method

.method public static native atan2(DD)D
.end method

.method public static native cbrt(D)D
.end method

.method public static native ceil(D)D
.end method

.method public static copySign(DD)D
    .locals 8

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v4, v0

    const-wide/high16 v6, -0x8000

    and-long/2addr v6, v2

    or-long v0, v4, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    return-wide v4
.end method

.method public static copySign(FF)F
    .locals 4

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v2, v0

    const/high16 v3, -0x8000

    and-int/2addr v3, v1

    or-int v0, v2, v3

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2
.end method

.method public static native cos(D)D
.end method

.method public static native cosh(D)D
.end method

.method public static native exp(D)D
.end method

.method public static native expm1(D)D
.end method

.method public static native floor(D)D
.end method

.method public static getExponent(D)I
    .locals 5

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, 0x7ff0

    and-long/2addr v2, v0

    const/16 v4, 0x34

    shr-long v0, v2, v4

    long-to-int v2, v0

    add-int/lit16 v2, v2, -0x3ff

    return v2
.end method

.method public static getExponent(F)I
    .locals 2

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/high16 v1, 0x7f80

    and-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x17

    add-int/lit8 v1, v0, -0x7f

    return v1
.end method

.method public static native hypot(DD)D
.end method

.method public static native log(D)D
.end method

.method public static native log10(D)D
.end method

.method public static native log1p(D)D
.end method

.method public static max(DD)D
    .locals 4

    cmpl-double v0, p0, p2

    if-lez v0, :cond_1

    move-wide p2, p0

    :cond_0
    :goto_0
    return-wide p2

    :cond_1
    cmpg-double v0, p0, p2

    if-ltz v0, :cond_0

    cmpl-double v0, p0, p2

    if-eqz v0, :cond_2

    const-wide/high16 p2, 0x7ff8

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 p2, 0x0

    goto :goto_0
.end method

.method public static max(FF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    move p1, p0

    :cond_0
    :goto_0
    return p1

    :cond_1
    cmpg-float v0, p0, p1

    if-ltz v0, :cond_0

    cmpl-float v0, p0, p1

    if-eqz v0, :cond_2

    const/high16 p1, 0x7fc0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static native max(II)I
.end method

.method public static max(JJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    :goto_0
    return-wide p0

    :cond_0
    move-wide p0, p2

    goto :goto_0
.end method

.method public static min(DD)D
    .locals 4

    cmpl-double v0, p0, p2

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return-wide p2

    :cond_1
    cmpg-double v0, p0, p2

    if-gez v0, :cond_2

    move-wide p2, p0

    goto :goto_0

    :cond_2
    cmpl-double v0, p0, p2

    if-eqz v0, :cond_3

    const-wide/high16 p2, 0x7ff8

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/high16 p2, -0x8000

    goto :goto_0
.end method

.method public static min(FF)F
    .locals 2

    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    cmpg-float v0, p0, p1

    if-gez v0, :cond_2

    move p1, p0

    goto :goto_0

    :cond_2
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_3

    const/high16 p1, 0x7fc0

    goto :goto_0

    :cond_3
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    const/high16 p1, -0x8000

    goto :goto_0
.end method

.method public static native min(II)I
.end method

.method public static min(JJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    :goto_0
    return-wide p0

    :cond_0
    move-wide p0, p2

    goto :goto_0
.end method

.method public static nextAfter(DD)D
    .locals 3

    const-wide/16 v1, 0x0

    cmpl-double v0, p0, v1

    if-nez v0, :cond_0

    cmpl-double v0, p2, v1

    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->nextafter(DD)D

    move-result-wide p2

    goto :goto_0
.end method

.method public static nextAfter(FD)F
    .locals 7

    const v1, 0x7f7fffff

    const/4 v3, 0x1

    const v2, -0x800001

    const v4, -0x7fffffff

    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/high16 v0, 0x7fc0

    :cond_1
    :goto_0
    return v0

    :cond_2
    cmpl-float v5, p0, v0

    if-nez v5, :cond_3

    const-wide/16 v5, 0x0

    cmpl-double v5, p1, v5

    if-nez v5, :cond_3

    double-to-float v0, p1

    goto :goto_0

    :cond_3
    cmpl-float v5, p0, v3

    if-nez v5, :cond_4

    float-to-double v5, p0

    cmpg-double v5, p1, v5

    if-ltz v5, :cond_5

    :cond_4
    cmpl-float v5, p0, v4

    if-nez v5, :cond_6

    float-to-double v5, p0

    cmpl-double v5, p1, v5

    if-lez v5, :cond_6

    :cond_5
    cmpl-float v1, p0, v0

    if-gtz v1, :cond_1

    const/high16 v0, -0x8000

    goto :goto_0

    :cond_6
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-eqz v5, :cond_8

    float-to-double v5, p0

    cmpl-double v5, p1, v5

    if-eqz v5, :cond_8

    cmpl-float v0, p0, v0

    if-lez v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0

    :cond_8
    cmpl-float v1, p0, v1

    if-nez v1, :cond_9

    float-to-double v5, p0

    cmpl-double v1, p1, v5

    if-gtz v1, :cond_a

    :cond_9
    cmpl-float v1, p0, v2

    if-nez v1, :cond_c

    float-to-double v1, p0

    cmpg-double v1, p1, v1

    if-gez v1, :cond_c

    :cond_a
    cmpl-float v0, p0, v0

    if-lez v0, :cond_b

    const/high16 v0, 0x7f80

    goto :goto_0

    :cond_b
    const/high16 v0, -0x80

    goto :goto_0

    :cond_c
    float-to-double v1, p0

    cmpl-double v1, p1, v1

    if-lez v1, :cond_f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_d

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_0

    :cond_d
    cmpg-float v0, p0, v0

    if-gez v0, :cond_e

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_0

    :cond_e
    move v0, v3

    goto :goto_0

    :cond_f
    float-to-double v1, p0

    cmpg-double v1, p1, v1

    if-gez v1, :cond_12

    cmpl-float v1, p0, v0

    if-lez v1, :cond_10

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto/16 :goto_0

    :cond_10
    cmpg-float v0, p0, v0

    if-gez v0, :cond_11

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto/16 :goto_0

    :cond_11
    move v0, v4

    goto/16 :goto_0

    :cond_12
    double-to-float v0, p1

    goto/16 :goto_0
.end method

.method public static nextUp(D)D
    .locals 7

    const-wide/16 v5, 0x1

    const-wide/high16 v0, 0x7ff0

    const-wide/16 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/high16 v0, 0x7ff8

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    cmpl-double v2, p0, v0

    if-eqz v2, :cond_0

    cmpl-double v0, p0, v3

    if-nez v0, :cond_2

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_2
    cmpl-double v0, p0, v3

    if-lez v0, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    add-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    sub-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static nextUp(F)F
    .locals 3

    const/high16 v0, 0x7f80

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v0, 0x7fc0

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmpl-float v1, p0, v0

    if-eqz v1, :cond_0

    cmpl-float v0, p0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    cmpl-float v0, p0, v2

    if-lez v0, :cond_3

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_0
.end method

.method private static native nextafter(DD)D
.end method

.method public static native pow(DD)D
.end method

.method public static declared-synchronized random()D
    .locals 4

    const-class v1, Ljava/lang/Math;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/lang/Math;->random:Ljava/util/Random;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ljava/lang/Math;->random:Ljava/util/Random;

    :cond_0
    sget-object v0, Ljava/lang/Math;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static native rint(D)D
.end method

.method public static round(F)I
    .locals 2

    cmpl-float v0, p0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f00

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public static round(D)J
    .locals 2

    cmpl-double v0, p0, p0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3fe0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    goto :goto_0
.end method

.method public static scalb(DI)D
    .locals 18

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v12

    if-nez v12, :cond_0

    const-wide/16 v12, 0x0

    cmpl-double v12, p0, v12

    if-nez v12, :cond_1

    :cond_0
    move-wide/from16 v12, p0

    :goto_0
    return-wide v12

    :cond_1
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    const-wide/high16 v12, -0x8000

    and-long v9, v1, v12

    const-wide/high16 v12, 0x7ff0

    and-long/2addr v12, v1

    const/16 v14, 0x34

    shr-long/2addr v12, v14

    const-wide/16 v14, 0x3ff

    sub-long/2addr v12, v14

    move/from16 v0, p2

    int-to-long v14, v0

    add-long v5, v12, v14

    const-wide v12, 0x7fffffffffffffffL

    and-long/2addr v12, v1

    invoke-static {v12, v13}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v12

    add-int/lit8 v11, v12, -0xc

    if-gez v11, :cond_2

    const/4 v11, 0x0

    :goto_1
    const-wide/16 v12, 0x3ff

    cmp-long v12, v5, v12

    if-lez v12, :cond_4

    const-wide/16 v12, 0x0

    cmpl-double v12, p0, v12

    if-lez v12, :cond_3

    const-wide/high16 v12, 0x7ff0

    goto :goto_0

    :cond_2
    int-to-long v12, v11

    sub-long/2addr v5, v12

    goto :goto_1

    :cond_3
    const-wide/high16 v12, -0x10

    goto :goto_0

    :cond_4
    const-wide/16 v12, -0x3ff

    cmp-long v12, v5, v12

    if-gtz v12, :cond_6

    const-wide/16 v12, 0x3ff

    add-long/2addr v12, v5

    int-to-long v14, v11

    add-long v3, v12, v14

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x10

    cmpg-double v12, v12, v14

    if-gez v12, :cond_5

    const-wide v12, 0xfffffffffffffL

    and-long/2addr v12, v1

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->shiftLongBits(JJ)J

    move-result-wide v7

    :goto_2
    or-long v12, v7, v9

    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    goto :goto_0

    :cond_5
    const-wide v12, 0xfffffffffffffL

    and-long/2addr v12, v1

    const-wide/high16 v14, 0x10

    or-long/2addr v12, v14

    const-wide/16 v14, 0x1

    sub-long v14, v3, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->shiftLongBits(JJ)J

    move-result-wide v7

    goto :goto_2

    :cond_6
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x10

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_7

    const-wide/16 v12, 0x3ff

    add-long/2addr v12, v5

    const/16 v14, 0x34

    shl-long/2addr v12, v14

    const-wide v14, 0xfffffffffffffL

    and-long/2addr v14, v1

    or-long v7, v12, v14

    goto :goto_2

    :cond_7
    const-wide/16 v12, 0x3ff

    add-long/2addr v12, v5

    const/16 v14, 0x34

    shl-long/2addr v12, v14

    add-int/lit8 v14, v11, 0x1

    shl-long v14, v1, v14

    const-wide v16, 0xfffffffffffffL

    and-long v14, v14, v16

    or-long v7, v12, v14

    goto :goto_2
.end method

.method public static scalb(FI)F
    .locals 10

    const/high16 v9, 0x80

    const/4 v7, 0x0

    const v8, 0x7fffff

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-nez v6, :cond_0

    cmpl-float v6, p0, v7

    if-nez v6, :cond_1

    :cond_0
    move v6, p0

    :goto_0
    return v6

    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/high16 v6, -0x8000

    and-int v4, v0, v6

    const/high16 v6, 0x7f80

    and-int/2addr v6, v0

    shr-int/lit8 v6, v6, 0x17

    add-int/lit8 v6, v6, -0x7f

    add-int v2, v6, p1

    const v6, 0x7fffffff

    and-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v6

    add-int/lit8 v5, v6, -0x9

    if-gez v5, :cond_2

    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x7f

    if-le v2, v6, :cond_4

    cmpl-float v6, p0, v7

    if-lez v6, :cond_3

    const/high16 v6, 0x7f80

    goto :goto_0

    :cond_2
    sub-int/2addr v2, v5

    goto :goto_1

    :cond_3
    const/high16 v6, -0x80

    goto :goto_0

    :cond_4
    const/16 v6, -0x7f

    if-gt v2, v6, :cond_6

    add-int/lit8 v6, v2, 0x7f

    add-int v1, v6, v5

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v9

    if-gez v6, :cond_5

    and-int v6, v0, v8

    invoke-static {v6, v1}, Ljava/lang/Math;->shiftIntBits(II)I

    move-result v3

    :goto_2
    or-int v6, v3, v4

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    goto :goto_0

    :cond_5
    and-int v6, v0, v8

    const/high16 v7, 0x80

    or-int/2addr v6, v7

    add-int/lit8 v7, v1, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->shiftIntBits(II)I

    move-result v3

    goto :goto_2

    :cond_6
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_7

    add-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0x17

    and-int v7, v0, v8

    or-int v3, v6, v7

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v2, 0x7f

    shl-int/lit8 v6, v6, 0x17

    add-int/lit8 v7, v5, 0x1

    shl-int v7, v0, v7

    and-int/2addr v7, v8

    or-int v3, v6, v7

    goto :goto_2
.end method

.method private static shiftIntBits(II)I
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez p1, :cond_1

    shl-int v2, p0, p1

    :cond_0
    :goto_0
    return v2

    :cond_1
    neg-int v0, p1

    const v5, 0x7fffffff

    and-int/2addr v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v5

    rsub-int/lit8 v6, v0, 0x20

    if-le v5, v6, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    shr-int v2, p0, v0

    add-int/lit8 v5, v0, -0x1

    shr-int v5, p0, v5

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v4, :cond_4

    move v1, v4

    :goto_1
    if-eqz v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    add-int/lit8 v5, v0, -0x1

    if-ne v3, v5, :cond_0

    and-int/lit8 v3, v2, 0x1

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method private static shiftLongBits(JJ)J
    .locals 11

    const-wide/16 v3, 0x0

    const-wide/16 v9, 0x1

    cmp-long v5, p2, v3

    if-lez v5, :cond_1

    long-to-int v5, p2

    shl-long v3, p0, v5

    :cond_0
    :goto_0
    return-wide v3

    :cond_1
    neg-long v0, p2

    const-wide v5, 0x7fffffffffffffffL

    and-long/2addr v5, p0

    invoke-static {v5, v6}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x40

    sub-long/2addr v7, v0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    long-to-int v5, v0

    shr-long v3, p0, v5

    sub-long v5, v0, v9

    long-to-int v5, v5

    shr-long v5, p0, v5

    and-long/2addr v5, v9

    cmp-long v5, v5, v9

    if-nez v5, :cond_3

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v5

    int-to-long v5, v5

    sub-long v7, v0, v9

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    add-long/2addr v3, v9

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v5

    int-to-long v5, v5

    sub-long v7, v0, v9

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    and-long v5, v3, v9

    cmp-long v5, v5, v9

    if-nez v5, :cond_0

    add-long/2addr v3, v9

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static signum(D)D
    .locals 5

    const-wide/16 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/high16 v0, 0x7ff8

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    move-wide v0, p0

    cmpl-double v2, p0, v3

    if-lez v2, :cond_2

    const-wide/high16 v0, 0x3ff0

    goto :goto_0

    :cond_2
    cmpg-double v2, p0, v3

    if-gez v2, :cond_0

    const-wide/high16 v0, -0x4010

    goto :goto_0
.end method

.method public static signum(F)F
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v0, 0x7fc0

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, p0

    cmpl-float v1, p0, v2

    if-lez v1, :cond_2

    const/high16 v0, 0x3f80

    goto :goto_0

    :cond_2
    cmpg-float v1, p0, v2

    if-gez v1, :cond_0

    const/high16 v0, -0x4080

    goto :goto_0
.end method

.method public static native sin(D)D
.end method

.method public static native sinh(D)D
.end method

.method public static native sqrt(D)D
.end method

.method public static native tan(D)D
.end method

.method public static native tanh(D)D
.end method

.method public static toDegrees(D)D
    .locals 4

    const-wide v0, 0x4066800000000000L

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static toRadians(D)D
    .locals 4

    const-wide v0, 0x4066800000000000L

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static ulp(D)D
    .locals 4

    const-wide v2, 0x7fefffffffffffffL

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x7ff0

    :goto_0
    return-wide v0

    :cond_0
    cmpl-double v0, p0, v2

    if-eqz v0, :cond_1

    const-wide v0, -0x10000000000001L

    cmpl-double v0, p0, v0

    if-nez v0, :cond_2

    :cond_1
    const-wide/high16 v0, 0x4000

    const-wide v2, 0x408e580000000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->nextafter(DD)D

    move-result-wide v0

    sub-double/2addr v0, p0

    goto :goto_0
.end method

.method public static ulp(F)F
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v5, 0x7f7fffff

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 v2, 0x7fc0

    :goto_0
    return v2

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_1

    const/high16 v2, 0x7f80

    goto :goto_0

    :cond_1
    cmpl-float v4, p0, v5

    if-eqz v4, :cond_2

    const v4, -0x800001

    cmpl-float v4, p0, v4

    if-nez v4, :cond_3

    :cond_2
    const-wide/high16 v2, 0x4000

    const-wide/high16 v4, 0x405a

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0

    :cond_3
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    const v4, 0x7fffffff

    and-int/2addr v4, v0

    if-nez v4, :cond_4

    const/high16 v2, -0x8000

    and-int/2addr v2, v1

    or-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    goto :goto_0

    :cond_4
    if-lez v0, :cond_5

    move v4, v2

    :goto_1
    if-le v0, v1, :cond_6

    :goto_2
    xor-int/2addr v2, v4

    if-eqz v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    sub-float/2addr v2, p0

    goto :goto_0

    :cond_5
    move v4, v3

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method
