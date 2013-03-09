.class public final Lcom/jme3/math/Matrix3f;
.super Ljava/lang/Object;
.source "Matrix3f.java"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final IDENTITY:Lcom/jme3/math/Matrix3f; = null

.field public static final ZERO:Lcom/jme3/math/Matrix3f; = null

.field private static final logger:Ljava/util/logging/Logger; = null

.field static final serialVersionUID:J = 0x1L


# instance fields
.field protected m00:F

.field protected m01:F

.field protected m02:F

.field protected m10:F

.field protected m11:F

.field protected m12:F

.field protected m20:F

.field protected m21:F

.field protected m22:F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 54
    const-class v0, Lcom/jme3/math/Matrix3f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/math/Matrix3f;->logger:Ljava/util/logging/Logger;

    .line 58
    new-instance v0, Lcom/jme3/math/Matrix3f;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, v1

    invoke-direct/range {v0 .. v9}, Lcom/jme3/math/Matrix3f;-><init>(FFFFFFFFF)V

    sput-object v0, Lcom/jme3/math/Matrix3f;->ZERO:Lcom/jme3/math/Matrix3f;

    .line 59
    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    sput-object v0, Lcom/jme3/math/Matrix3f;->IDENTITY:Lcom/jme3/math/Matrix3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p0}, Lcom/jme3/math/Matrix3f;->loadIdentity()V

    .line 68
    return-void
.end method

.method public constructor <init>(FFFFFFFFF)V
    .locals 0
    .parameter "m00"
    .parameter "m01"
    .parameter "m02"
    .parameter "m10"
    .parameter "m11"
    .parameter "m12"
    .parameter "m20"
    .parameter "m21"
    .parameter "m22"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lcom/jme3/math/Matrix3f;->m00:F

    .line 96
    iput p2, p0, Lcom/jme3/math/Matrix3f;->m01:F

    .line 97
    iput p3, p0, Lcom/jme3/math/Matrix3f;->m02:F

    .line 98
    iput p4, p0, Lcom/jme3/math/Matrix3f;->m10:F

    .line 99
    iput p5, p0, Lcom/jme3/math/Matrix3f;->m11:F

    .line 100
    iput p6, p0, Lcom/jme3/math/Matrix3f;->m12:F

    .line 101
    iput p7, p0, Lcom/jme3/math/Matrix3f;->m20:F

    .line 102
    iput p8, p0, Lcom/jme3/math/Matrix3f;->m21:F

    .line 103
    iput p9, p0, Lcom/jme3/math/Matrix3f;->m22:F

    .line 104
    return-void
.end method


# virtual methods
.method public absoluteLocal()V
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    .line 122
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    .line 123
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    .line 124
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    .line 125
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    .line 126
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    .line 127
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    .line 128
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    .line 129
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m22:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m22:F

    .line 130
    return-void
.end method

.method public clone()Lcom/jme3/math/Matrix3f;
    .locals 2

    .prologue
    .line 1382
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Matrix3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1383
    :catch_0
    move-exception v0

    .line 1384
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/jme3/math/Matrix3f;->clone()Lcom/jme3/math/Matrix3f;

    move-result-object v0

    return-object v0
.end method

.method public determinant()F
    .locals 7

    .prologue
    .line 1054
    iget v4, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iget v5, p0, Lcom/jme3/math/Matrix3f;->m22:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iget v6, p0, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float/2addr v5, v6

    sub-float v0, v4, v5

    .line 1055
    .local v0, fCo00:F
    iget v4, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iget v5, p0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iget v6, p0, Lcom/jme3/math/Matrix3f;->m22:F

    mul-float/2addr v5, v6

    sub-float v1, v4, v5

    .line 1056
    .local v1, fCo10:F
    iget v4, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iget v5, p0, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iget v6, p0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float/2addr v5, v6

    sub-float v2, v4, v5

    .line 1057
    .local v2, fCo20:F
    iget v4, p0, Lcom/jme3/math/Matrix3f;->m00:F

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/jme3/math/Matrix3f;->m01:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/math/Matrix3f;->m02:F

    mul-float/2addr v5, v2

    add-float v3, v4, v5

    .line 1058
    .local v3, fDet:F
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1166
    instance-of v3, p1, Lcom/jme3/math/Matrix3f;

    if-eqz v3, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v1, v2

    .line 1205
    :cond_1
    :goto_0
    return v1

    .line 1170
    :cond_2
    if-eq p0, p1, :cond_1

    move-object v0, p1

    .line 1174
    check-cast v0, Lcom/jme3/math/Matrix3f;

    .line 1175
    .local v0, comp:Lcom/jme3/math/Matrix3f;
    iget v3, p0, Lcom/jme3/math/Matrix3f;->m00:F

    iget v4, v0, Lcom/jme3/math/Matrix3f;->m00:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 1176
    goto :goto_0

    .line 1178
    :cond_3
    iget v3, p0, Lcom/jme3/math/Matrix3f;->m01:F

    iget v4, v0, Lcom/jme3/math/Matrix3f;->m01:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 1179
    goto :goto_0

    .line 1181
    :cond_4
    iget v3, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iget v4, v0, Lcom/jme3/math/Matrix3f;->m02:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 1182
    goto :goto_0

    .line 1185
    :cond_5
    iget v3, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iget v4, v0, Lcom/jme3/math/Matrix3f;->m10:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    .line 1186
    goto :goto_0

    .line 1188
    :cond_6
    iget v3, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iget v4, v0, Lcom/jme3/math/Matrix3f;->m11:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_7

    move v1, v2

    .line 1189
    goto :goto_0

    .line 1191
    :cond_7
    iget v3, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iget v4, v0, Lcom/jme3/math/Matrix3f;->m12:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_8

    move v1, v2

    .line 1192
    goto :goto_0

    .line 1195
    :cond_8
    iget v3, p0, Lcom/jme3/math/Matrix3f;->m20:F

    iget v4, v0, Lcom/jme3/math/Matrix3f;->m20:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_9

    move v1, v2

    .line 1196
    goto :goto_0

    .line 1198
    :cond_9
    iget v3, p0, Lcom/jme3/math/Matrix3f;->m21:F

    iget v4, v0, Lcom/jme3/math/Matrix3f;->m21:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_a

    move v1, v2

    .line 1199
    goto :goto_0

    .line 1201
    :cond_a
    iget v3, p0, Lcom/jme3/math/Matrix3f;->m22:F

    iget v4, v0, Lcom/jme3/math/Matrix3f;->m22:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 1202
    goto :goto_0
.end method

.method public fillFloatArray([FZ)V
    .locals 6
    .parameter "f"
    .parameter "columnMajor"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 414
    if-eqz p2, :cond_0

    .line 415
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    aput v0, p1, v1

    .line 416
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    aput v0, p1, v2

    .line 417
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    aput v0, p1, v3

    .line 418
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    aput v0, p1, v4

    .line 419
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    aput v0, p1, v5

    .line 420
    const/4 v0, 0x5

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m21:F

    aput v1, p1, v0

    .line 421
    const/4 v0, 0x6

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m02:F

    aput v1, p1, v0

    .line 422
    const/4 v0, 0x7

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m12:F

    aput v1, p1, v0

    .line 423
    const/16 v0, 0x8

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m22:F

    aput v1, p1, v0

    .line 435
    :goto_0
    return-void

    .line 425
    :cond_0
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    aput v0, p1, v1

    .line 426
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    aput v0, p1, v2

    .line 427
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    aput v0, p1, v3

    .line 428
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    aput v0, p1, v4

    .line 429
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    aput v0, p1, v5

    .line 430
    const/4 v0, 0x5

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m12:F

    aput v1, p1, v0

    .line 431
    const/4 v0, 0x6

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m20:F

    aput v1, p1, v0

    .line 432
    const/4 v0, 0x7

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m21:F

    aput v1, p1, v0

    .line 433
    const/16 v0, 0x8

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m22:F

    aput v1, p1, v0

    goto :goto_0
.end method

.method public fillFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;
    .locals 4
    .parameter "fb"
    .parameter "columnMajor"

    .prologue
    .line 402
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 405
    .local v0, vars:Lcom/jme3/util/TempVars;
    iget-object v1, v0, Lcom/jme3/util/TempVars;->matrixWrite:[F

    invoke-virtual {p0, v1, p2}, Lcom/jme3/math/Matrix3f;->fillFloatArray([FZ)V

    .line 406
    iget-object v1, v0, Lcom/jme3/util/TempVars;->matrixWrite:[F

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 408
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    .line 410
    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1141
    const/16 v0, 0x25

    .line 1142
    .local v0, hash:I
    iget v1, p0, Lcom/jme3/math/Matrix3f;->m00:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x559

    .line 1143
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m01:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1144
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m02:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1146
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m10:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1147
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m11:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1148
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m12:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1150
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m20:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1151
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m21:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1152
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m22:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1154
    return v0
.end method

.method public invertLocal()Lcom/jme3/math/Matrix3f;
    .locals 13

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/jme3/math/Matrix3f;->determinant()F

    move-result v0

    .line 986
    .local v0, det:F
    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_0

    .line 987
    invoke-virtual {p0}, Lcom/jme3/math/Matrix3f;->zero()Lcom/jme3/math/Matrix3f;

    move-result-object p0

    .line 1011
    .end local p0
    :goto_0
    return-object p0

    .line 990
    .restart local p0
    :cond_0
    iget v10, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iget v11, p0, Lcom/jme3/math/Matrix3f;->m22:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iget v12, p0, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float/2addr v11, v12

    sub-float v1, v10, v11

    .line 991
    .local v1, f00:F
    iget v10, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iget v11, p0, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/jme3/math/Matrix3f;->m01:F

    iget v12, p0, Lcom/jme3/math/Matrix3f;->m22:F

    mul-float/2addr v11, v12

    sub-float v2, v10, v11

    .line 992
    .local v2, f01:F
    iget v10, p0, Lcom/jme3/math/Matrix3f;->m01:F

    iget v11, p0, Lcom/jme3/math/Matrix3f;->m12:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iget v12, p0, Lcom/jme3/math/Matrix3f;->m11:F

    mul-float/2addr v11, v12

    sub-float v3, v10, v11

    .line 993
    .local v3, f02:F
    iget v10, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iget v11, p0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iget v12, p0, Lcom/jme3/math/Matrix3f;->m22:F

    mul-float/2addr v11, v12

    sub-float v4, v10, v11

    .line 994
    .local v4, f10:F
    iget v10, p0, Lcom/jme3/math/Matrix3f;->m00:F

    iget v11, p0, Lcom/jme3/math/Matrix3f;->m22:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iget v12, p0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float/2addr v11, v12

    sub-float v5, v10, v11

    .line 995
    .local v5, f11:F
    iget v10, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iget v11, p0, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/jme3/math/Matrix3f;->m00:F

    iget v12, p0, Lcom/jme3/math/Matrix3f;->m12:F

    mul-float/2addr v11, v12

    sub-float v6, v10, v11

    .line 996
    .local v6, f12:F
    iget v10, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iget v11, p0, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iget v12, p0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float/2addr v11, v12

    sub-float v7, v10, v11

    .line 997
    .local v7, f20:F
    iget v10, p0, Lcom/jme3/math/Matrix3f;->m01:F

    iget v11, p0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/jme3/math/Matrix3f;->m00:F

    iget v12, p0, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float/2addr v11, v12

    sub-float v8, v10, v11

    .line 998
    .local v8, f21:F
    iget v10, p0, Lcom/jme3/math/Matrix3f;->m00:F

    iget v11, p0, Lcom/jme3/math/Matrix3f;->m11:F

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/jme3/math/Matrix3f;->m01:F

    iget v12, p0, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float/2addr v11, v12

    sub-float v9, v10, v11

    .line 1000
    .local v9, f22:F
    iput v1, p0, Lcom/jme3/math/Matrix3f;->m00:F

    .line 1001
    iput v2, p0, Lcom/jme3/math/Matrix3f;->m01:F

    .line 1002
    iput v3, p0, Lcom/jme3/math/Matrix3f;->m02:F

    .line 1003
    iput v4, p0, Lcom/jme3/math/Matrix3f;->m10:F

    .line 1004
    iput v5, p0, Lcom/jme3/math/Matrix3f;->m11:F

    .line 1005
    iput v6, p0, Lcom/jme3/math/Matrix3f;->m12:F

    .line 1006
    iput v7, p0, Lcom/jme3/math/Matrix3f;->m20:F

    .line 1007
    iput v8, p0, Lcom/jme3/math/Matrix3f;->m21:F

    .line 1008
    iput v9, p0, Lcom/jme3/math/Matrix3f;->m22:F

    .line 1010
    const/high16 v10, 0x3f80

    div-float/2addr v10, v0

    invoke-virtual {p0, v10}, Lcom/jme3/math/Matrix3f;->multLocal(F)Lcom/jme3/math/Matrix3f;

    goto/16 :goto_0
.end method

.method public loadIdentity()V
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    .line 702
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m22:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    .line 703
    return-void
.end method

.method public mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 5
    .parameter "vec"
    .parameter "product"

    .prologue
    .line 845
    if-nez p2, :cond_0

    .line 846
    new-instance p2, Lcom/jme3/math/Vector3f;

    .end local p2
    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 849
    .restart local p2
    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    .line 850
    .local v0, x:F
    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    .line 851
    .local v1, y:F
    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    .line 853
    .local v2, z:F
    iget v3, p0, Lcom/jme3/math/Matrix3f;->m00:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix3f;->m01:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix3f;->m02:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 854
    iget v3, p0, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix3f;->m11:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix3f;->m12:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 855
    iget v3, p0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Matrix3f;->m22:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector3f;->z:F

    .line 856
    return-object p2
.end method

.method public multLocal(F)Lcom/jme3/math/Matrix3f;
    .locals 1
    .parameter "scale"

    .prologue
    .line 868
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    .line 869
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    .line 870
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    .line 871
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    .line 872
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    .line 873
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    .line 874
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    .line 875
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    .line 876
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m22:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m22:F

    .line 877
    return-object p0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 1222
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 1223
    .local v0, cap:Lcom/jme3/export/InputCapsule;
    const-string v1, "m00"

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix3f;->m00:F

    .line 1224
    const-string v1, "m01"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix3f;->m01:F

    .line 1225
    const-string v1, "m02"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix3f;->m02:F

    .line 1226
    const-string v1, "m10"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix3f;->m10:F

    .line 1227
    const-string v1, "m11"

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix3f;->m11:F

    .line 1228
    const-string v1, "m12"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix3f;->m12:F

    .line 1229
    const-string v1, "m20"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix3f;->m20:F

    .line 1230
    const-string v1, "m21"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix3f;->m21:F

    .line 1231
    const-string v1, "m22"

    invoke-interface {v0, v1, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Matrix3f;->m22:F

    .line 1232
    return-void
.end method

.method public set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Matrix3f;
    .locals 1
    .parameter "quaternion"

    .prologue
    .line 692
    invoke-virtual {p1, p0}, Lcom/jme3/math/Quaternion;->toRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Matrix3f\n[\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1106
    .local v0, result:Ljava/lang/StringBuilder;
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    iget v1, p0, Lcom/jme3/math/Matrix3f;->m00:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1108
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    iget v1, p0, Lcom/jme3/math/Matrix3f;->m01:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1110
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    iget v1, p0, Lcom/jme3/math/Matrix3f;->m02:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1112
    const-string v1, " \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    iget v1, p0, Lcom/jme3/math/Matrix3f;->m10:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1115
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    iget v1, p0, Lcom/jme3/math/Matrix3f;->m11:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1117
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    iget v1, p0, Lcom/jme3/math/Matrix3f;->m12:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1119
    const-string v1, " \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    iget v1, p0, Lcom/jme3/math/Matrix3f;->m20:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1122
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    iget v1, p0, Lcom/jme3/math/Matrix3f;->m21:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1124
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    iget v1, p0, Lcom/jme3/math/Matrix3f;->m22:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1126
    const-string v1, " \n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public transposeLocal()Lcom/jme3/math/Matrix3f;
    .locals 2

    .prologue
    .line 926
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    .line 927
    .local v0, tmp:F
    iget v1, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iput v1, p0, Lcom/jme3/math/Matrix3f;->m01:F

    .line 928
    iput v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    .line 930
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    .line 931
    iget v1, p0, Lcom/jme3/math/Matrix3f;->m20:F

    iput v1, p0, Lcom/jme3/math/Matrix3f;->m02:F

    .line 932
    iput v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    .line 934
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    .line 935
    iget v1, p0, Lcom/jme3/math/Matrix3f;->m21:F

    iput v1, p0, Lcom/jme3/math/Matrix3f;->m12:F

    .line 936
    iput v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    .line 938
    return-object p0
.end method

.method public zero()Lcom/jme3/math/Matrix3f;
    .locals 1

    .prologue
    .line 1067
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m22:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    .line 1068
    return-object p0
.end method
