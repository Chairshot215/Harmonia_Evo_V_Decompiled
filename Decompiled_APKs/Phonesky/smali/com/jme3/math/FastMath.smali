.class public final Lcom/jme3/math/FastMath;
.super Ljava/lang/Object;
.source "FastMath.java"


# static fields
.field public static final rand:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/jme3/math/FastMath;->rand:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static abs(F)F
    .locals 1
    .parameter "fValue"

    .prologue
    .line 562
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 563
    neg-float p0, p0

    .line 565
    .end local p0
    :cond_0
    return p0
.end method

.method public static acos(F)F
    .locals 2
    .parameter "fValue"

    .prologue
    .line 422
    const/high16 v0, -0x4080

    cmpg-float v0, v0, p0

    if-gez v0, :cond_1

    .line 423
    const/high16 v0, 0x3f80

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 424
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 430
    :goto_0
    return v0

    .line 427
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 430
    :cond_1
    const v0, 0x40490fdb

    goto :goto_0
.end method

.method public static ceil(F)F
    .locals 2
    .parameter "fValue"

    .prologue
    .line 482
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static clamp(FFF)F
    .locals 1
    .parameter "input"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 919
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static convertFloatToHalf(F)S
    .locals 4
    .parameter "flt"

    .prologue
    const/4 v2, 0x0

    .line 961
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 962
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "NaN to half conversion not supported!"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 963
    :cond_0
    const/high16 v1, 0x7f80

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    .line 964
    const/16 v1, 0x7c00

    .line 983
    :goto_0
    return v1

    .line 965
    :cond_1
    const/high16 v1, -0x80

    cmpl-float v1, p0, v1

    if-nez v1, :cond_2

    .line 966
    const/16 v1, -0x400

    goto :goto_0

    .line 967
    :cond_2
    cmpl-float v1, p0, v2

    if-nez v1, :cond_3

    .line 968
    const/4 v1, 0x0

    goto :goto_0

    .line 969
    :cond_3
    const/high16 v1, -0x8000

    cmpl-float v1, p0, v1

    if-nez v1, :cond_4

    .line 970
    const/16 v1, -0x8000

    goto :goto_0

    .line 971
    :cond_4
    const v1, 0x477fe000

    cmpl-float v1, p0, v1

    if-lez v1, :cond_5

    .line 973
    const/16 v1, 0x7bff

    goto :goto_0

    .line 974
    :cond_5
    const v1, -0x38802000

    cmpg-float v1, p0, v1

    if-gez v1, :cond_6

    .line 975
    const/16 v1, -0x401

    goto :goto_0

    .line 976
    :cond_6
    cmpl-float v1, p0, v2

    if-lez v1, :cond_7

    const v1, 0x337ffff3

    cmpg-float v1, p0, v1

    if-gez v1, :cond_7

    .line 977
    const/4 v1, 0x1

    goto :goto_0

    .line 978
    :cond_7
    cmpg-float v1, p0, v2

    if-gez v1, :cond_8

    const v1, -0x4c80000d

    cmpl-float v1, p0, v1

    if-lez v1, :cond_8

    .line 979
    const/16 v1, -0x7fff

    goto :goto_0

    .line 982
    :cond_8
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 983
    .local v0, f:I
    shr-int/lit8 v1, v0, 0x10

    const v2, 0x8000

    and-int/2addr v1, v2

    const/high16 v2, 0x7f80

    and-int/2addr v2, v0

    const/high16 v3, 0x3800

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0xd

    and-int/lit16 v2, v2, 0x7c00

    or-int/2addr v1, v2

    shr-int/lit8 v2, v0, 0xd

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v1, v2

    int-to-short v1, v1

    goto :goto_0
.end method

.method public static cos(F)F
    .locals 2
    .parameter "v"

    .prologue
    .line 538
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static invSqrt(F)F
    .locals 4
    .parameter "fValue"

    .prologue
    .line 585
    const-wide/high16 v0, 0x3ff0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static isPowerOfTwo(I)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 87
    if-lez p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static log(FF)F
    .locals 4
    .parameter "value"
    .parameter "base"

    .prologue
    .line 615
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static nearestPowerOfTwo(I)I
    .locals 6
    .parameter "number"

    .prologue
    const-wide/high16 v4, 0x4000

    .line 91
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static pow(FF)F
    .locals 4
    .parameter "fBase"
    .parameter "fExponent"

    .prologue
    .line 626
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static sin(F)F
    .locals 2
    .parameter "v"

    .prologue
    .line 542
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static sqrt(F)F
    .locals 2
    .parameter "fValue"

    .prologue
    .line 645
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static tan(F)F
    .locals 2
    .parameter "fValue"

    .prologue
    .line 656
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
