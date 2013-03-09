.class public final Lcom/jme3/math/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DIRECTION_Z:Lcom/jme3/math/Quaternion; = null

.field public static final IDENTITY:Lcom/jme3/math/Quaternion; = null

.field public static final ZERO:Lcom/jme3/math/Quaternion; = null

.field private static final logger:Ljava/util/logging/Logger; = null

.field static final serialVersionUID:J = 0x1L


# instance fields
.field protected w:F

.field protected x:F

.field protected y:F

.field protected z:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 58
    const-class v0, Lcom/jme3/math/Quaternion;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/math/Quaternion;->logger:Ljava/util/logging/Logger;

    .line 62
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    sput-object v0, Lcom/jme3/math/Quaternion;->IDENTITY:Lcom/jme3/math/Quaternion;

    .line 63
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    sput-object v0, Lcom/jme3/math/Quaternion;->DIRECTION_Z:Lcom/jme3/math/Quaternion;

    .line 64
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/jme3/math/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/Quaternion;->ZERO:Lcom/jme3/math/Quaternion;

    .line 67
    sget-object v0, Lcom/jme3/math/Quaternion;->DIRECTION_Z:Lcom/jme3/math/Quaternion;

    sget-object v1, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    sget-object v2, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    sget-object v3, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput v0, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 78
    iput v0, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 79
    iput v0, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 80
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/jme3/math/Quaternion;->w:F

    .line 81
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "w"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 98
    iput p2, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 99
    iput p3, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 100
    iput p4, p0, Lcom/jme3/math/Quaternion;->w:F

    .line 101
    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/math/Quaternion;
    .locals 2

    .prologue
    .line 1340
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Quaternion;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1341
    :catch_0
    move-exception v0

    .line 1342
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
    .line 54
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->clone()Lcom/jme3/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public dot(Lcom/jme3/math/Quaternion;)F
    .locals 3
    .parameter "q"

    .prologue
    .line 1070
    iget v0, p0, Lcom/jme3/math/Quaternion;->w:F

    iget v1, p1, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v2, p1, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v2, p1, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v2, p1, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1182
    instance-of v3, p1, Lcom/jme3/math/Quaternion;

    if-nez v3, :cond_1

    .line 1203
    :cond_0
    :goto_0
    return v1

    .line 1186
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    .line 1187
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1190
    check-cast v0, Lcom/jme3/math/Quaternion;

    .line 1191
    .local v0, comp:Lcom/jme3/math/Quaternion;
    iget v3, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v4, v0, Lcom/jme3/math/Quaternion;->x:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 1194
    iget v3, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v4, v0, Lcom/jme3/math/Quaternion;->y:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 1197
    iget v3, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v4, v0, Lcom/jme3/math/Quaternion;->z:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 1200
    iget v3, p0, Lcom/jme3/math/Quaternion;->w:F

    iget v4, v0, Lcom/jme3/math/Quaternion;->w:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1203
    goto :goto_0
.end method

.method public fromAngleAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;
    .locals 1
    .parameter "angle"
    .parameter "axis"

    .prologue
    .line 557
    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 558
    .local v0, normAxis:Lcom/jme3/math/Vector3f;
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Quaternion;->fromAngleNormalAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    .line 559
    return-object p0
.end method

.method public fromAngleNormalAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;
    .locals 4
    .parameter "angle"
    .parameter "axis"

    .prologue
    const/4 v3, 0x0

    .line 572
    iget v2, p2, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p2, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p2, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->loadIdentity()V

    .line 582
    :goto_0
    return-object p0

    .line 575
    :cond_0
    const/high16 v2, 0x3f00

    mul-float v0, v2, p1

    .line 576
    .local v0, halfAngle:F
    invoke-static {v0}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v1

    .line 577
    .local v1, sin:F
    invoke-static {v0}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v2

    iput v2, p0, Lcom/jme3/math/Quaternion;->w:F

    .line 578
    iget v2, p2, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 579
    iget v2, p2, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 580
    iget v2, p2, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/jme3/math/Quaternion;->z:F

    goto :goto_0
.end method

.method public fromAngles(FFF)Lcom/jme3/math/Quaternion;
    .locals 13
    .parameter "yaw"
    .parameter "roll"
    .parameter "pitch"

    .prologue
    .line 253
    const/high16 v11, 0x3f00

    mul-float v0, p3, v11

    .line 254
    .local v0, angle:F
    invoke-static {v0}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v6

    .line 255
    .local v6, sinPitch:F
    invoke-static {v0}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v1

    .line 256
    .local v1, cosPitch:F
    const/high16 v11, 0x3f00

    mul-float v0, p2, v11

    .line 257
    invoke-static {v0}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v7

    .line 258
    .local v7, sinRoll:F
    invoke-static {v0}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v2

    .line 259
    .local v2, cosRoll:F
    const/high16 v11, 0x3f00

    mul-float v0, p1, v11

    .line 260
    invoke-static {v0}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v10

    .line 261
    .local v10, sinYaw:F
    invoke-static {v0}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v5

    .line 264
    .local v5, cosYaw:F
    mul-float v3, v2, v1

    .line 265
    .local v3, cosRollXcosPitch:F
    mul-float v9, v7, v6

    .line 266
    .local v9, sinRollXsinPitch:F
    mul-float v4, v2, v6

    .line 267
    .local v4, cosRollXsinPitch:F
    mul-float v8, v7, v1

    .line 269
    .local v8, sinRollXcosPitch:F
    mul-float v11, v3, v5

    mul-float v12, v9, v10

    sub-float/2addr v11, v12

    iput v11, p0, Lcom/jme3/math/Quaternion;->w:F

    .line 270
    mul-float v11, v3, v10

    mul-float v12, v9, v5

    add-float/2addr v11, v12

    iput v11, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 271
    mul-float v11, v8, v5

    mul-float v12, v4, v10

    add-float/2addr v11, v12

    iput v11, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 272
    mul-float v11, v4, v5

    mul-float v12, v8, v10

    sub-float/2addr v11, v12

    iput v11, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 274
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->normalize()V

    .line 275
    return-object p0
.end method

.method public fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;
    .locals 10
    .parameter "xAxis"
    .parameter "yAxis"
    .parameter "zAxis"

    .prologue
    .line 900
    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v3, p3, Lcom/jme3/math/Vector3f;->x:F

    iget v4, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v5, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v6, p3, Lcom/jme3/math/Vector3f;->y:F

    iget v7, p1, Lcom/jme3/math/Vector3f;->z:F

    iget v8, p2, Lcom/jme3/math/Vector3f;->z:F

    iget v9, p3, Lcom/jme3/math/Vector3f;->z:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/jme3/math/Quaternion;->fromRotationMatrix(FFFFFFFFF)Lcom/jme3/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public fromRotationMatrix(FFFFFFFFF)Lcom/jme3/math/Quaternion;
    .locals 5
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
    const/high16 v4, 0x3f80

    const/high16 v3, 0x3f00

    .line 340
    add-float v2, p1, p5

    add-float v1, v2, p9

    .line 343
    .local v1, t:F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 344
    add-float v2, v1, v4

    invoke-static {v2}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    .line 345
    .local v0, s:F
    mul-float v2, v3, v0

    iput v2, p0, Lcom/jme3/math/Quaternion;->w:F

    .line 346
    div-float v0, v3, v0

    .line 347
    sub-float v2, p8, p6

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 348
    sub-float v2, p3, p7

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 349
    sub-float v2, p4, p2

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 373
    :goto_0
    return-object p0

    .line 350
    .end local v0           #s:F
    :cond_0
    cmpl-float v2, p1, p5

    if-lez v2, :cond_1

    cmpl-float v2, p1, p9

    if-lez v2, :cond_1

    .line 351
    add-float v2, v4, p1

    sub-float/2addr v2, p5

    sub-float/2addr v2, p9

    invoke-static {v2}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    .line 352
    .restart local v0       #s:F
    mul-float v2, v0, v3

    iput v2, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 353
    div-float v0, v3, v0

    .line 354
    add-float v2, p4, p2

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 355
    add-float v2, p3, p7

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 356
    sub-float v2, p8, p6

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/jme3/math/Quaternion;->w:F

    goto :goto_0

    .line 357
    .end local v0           #s:F
    :cond_1
    cmpl-float v2, p5, p9

    if-lez v2, :cond_2

    .line 358
    add-float v2, v4, p5

    sub-float/2addr v2, p1

    sub-float/2addr v2, p9

    invoke-static {v2}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    .line 359
    .restart local v0       #s:F
    mul-float v2, v0, v3

    iput v2, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 360
    div-float v0, v3, v0

    .line 361
    add-float v2, p4, p2

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 362
    add-float v2, p8, p6

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 363
    sub-float v2, p3, p7

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/jme3/math/Quaternion;->w:F

    goto :goto_0

    .line 365
    .end local v0           #s:F
    :cond_2
    add-float v2, v4, p9

    sub-float/2addr v2, p1

    sub-float/2addr v2, p5

    invoke-static {v2}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    .line 366
    .restart local v0       #s:F
    mul-float v2, v0, v3

    iput v2, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 367
    div-float v0, v3, v0

    .line 368
    add-float v2, p3, p7

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 369
    add-float v2, p8, p6

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 370
    sub-float v2, p4, p2

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/jme3/math/Quaternion;->w:F

    goto :goto_0
.end method

.method public getRotationColumn(I)Lcom/jme3/math/Vector3f;
    .locals 1
    .parameter "i"

    .prologue
    .line 486
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Quaternion;->getRotationColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getRotationColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 13
    .parameter "i"
    .parameter "store"

    .prologue
    .line 502
    if-nez p2, :cond_0

    .line 503
    new-instance p2, Lcom/jme3/math/Vector3f;

    .end local p2
    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 506
    .restart local p2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->norm()F

    move-result v0

    .line 507
    .local v0, norm:F
    const/high16 v10, 0x3f80

    cmpl-float v10, v0, v10

    if-eqz v10, :cond_1

    .line 508
    invoke-static {v0}, Lcom/jme3/math/FastMath;->invSqrt(F)F

    move-result v0

    .line 511
    :cond_1
    iget v10, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v11, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v10, v11

    mul-float v2, v10, v0

    .line 512
    .local v2, xx:F
    iget v10, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v11, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v10, v11

    mul-float v3, v10, v0

    .line 513
    .local v3, xy:F
    iget v10, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v11, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v10, v11

    mul-float v4, v10, v0

    .line 514
    .local v4, xz:F
    iget v10, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v11, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v10, v11

    mul-float v1, v10, v0

    .line 515
    .local v1, xw:F
    iget v10, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v11, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v10, v11

    mul-float v6, v10, v0

    .line 516
    .local v6, yy:F
    iget v10, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v11, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v10, v11

    mul-float v7, v10, v0

    .line 517
    .local v7, yz:F
    iget v10, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v11, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v10, v11

    mul-float v5, v10, v0

    .line 518
    .local v5, yw:F
    iget v10, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v11, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v10, v11

    mul-float v9, v10, v0

    .line 519
    .local v9, zz:F
    iget v10, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v11, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v10, v11

    mul-float v8, v10, v0

    .line 521
    .local v8, zw:F
    packed-switch p1, :pswitch_data_0

    .line 538
    sget-object v10, Lcom/jme3/math/Quaternion;->logger:Ljava/util/logging/Logger;

    const-string v11, "Invalid column index."

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 539
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid column index. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 523
    :pswitch_0
    const/high16 v10, 0x3f80

    const/high16 v11, 0x4000

    add-float v12, v6, v9

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    iput v10, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 524
    const/high16 v10, 0x4000

    add-float v11, v3, v8

    mul-float/2addr v10, v11

    iput v10, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 525
    const/high16 v10, 0x4000

    sub-float v11, v4, v5

    mul-float/2addr v10, v11

    iput v10, p2, Lcom/jme3/math/Vector3f;->z:F

    .line 542
    :goto_0
    return-object p2

    .line 528
    :pswitch_1
    const/high16 v10, 0x4000

    sub-float v11, v3, v8

    mul-float/2addr v10, v11

    iput v10, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 529
    const/high16 v10, 0x3f80

    const/high16 v11, 0x4000

    add-float v12, v2, v9

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    iput v10, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 530
    const/high16 v10, 0x4000

    add-float v11, v7, v1

    mul-float/2addr v10, v11

    iput v10, p2, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0

    .line 533
    :pswitch_2
    const/high16 v10, 0x4000

    add-float v11, v4, v5

    mul-float/2addr v10, v11

    iput v10, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 534
    const/high16 v10, 0x4000

    sub-float v11, v7, v1

    mul-float/2addr v10, v11

    iput v10, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 535
    const/high16 v10, 0x3f80

    const/high16 v11, 0x4000

    add-float v12, v2, v6

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    iput v10, p2, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0

    .line 521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getW()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/jme3/math/Quaternion;->w:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/jme3/math/Quaternion;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/jme3/math/Quaternion;->z:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1217
    const/16 v0, 0x25

    .line 1218
    .local v0, hash:I
    iget v1, p0, Lcom/jme3/math/Quaternion;->x:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x559

    .line 1219
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Quaternion;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1220
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Quaternion;->z:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1221
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Quaternion;->w:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1222
    return v0
.end method

.method public inverse()Lcom/jme3/math/Quaternion;
    .locals 7

    .prologue
    .line 1117
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->norm()F

    move-result v1

    .line 1118
    .local v1, norm:F
    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 1119
    const/high16 v2, 0x3f80

    div-float v0, v2, v1

    .line 1120
    .local v0, invNorm:F
    new-instance v2, Lcom/jme3/math/Quaternion;

    iget v3, p0, Lcom/jme3/math/Quaternion;->x:F

    neg-float v3, v3

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    neg-float v4, v4

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/jme3/math/Quaternion;->z:F

    neg-float v5, v5

    mul-float/2addr v5, v0

    iget v6, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v6, v0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/jme3/math/Quaternion;-><init>(FFFF)V

    .line 1124
    .end local v0           #invNorm:F
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public inverseLocal()Lcom/jme3/math/Quaternion;
    .locals 6

    .prologue
    .line 1135
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->norm()F

    move-result v1

    .line 1136
    .local v1, norm:F
    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 1137
    const/high16 v2, 0x3f80

    div-float v0, v2, v1

    .line 1138
    .local v0, invNorm:F
    iget v2, p0, Lcom/jme3/math/Quaternion;->x:F

    neg-float v3, v0

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 1139
    iget v2, p0, Lcom/jme3/math/Quaternion;->y:F

    neg-float v3, v0

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 1140
    iget v2, p0, Lcom/jme3/math/Quaternion;->z:F

    neg-float v3, v0

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 1141
    iget v2, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/jme3/math/Quaternion;->w:F

    .line 1143
    .end local v0           #invNorm:F
    :cond_0
    return-object p0
.end method

.method public loadIdentity()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/math/Quaternion;->z:F

    iput v0, p0, Lcom/jme3/math/Quaternion;->y:F

    iput v0, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 204
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/jme3/math/Quaternion;->w:F

    .line 205
    return-void
.end method

.method public mult(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 6
    .parameter "q"
    .parameter "res"

    .prologue
    .line 838
    if-nez p2, :cond_0

    .line 839
    new-instance p2, Lcom/jme3/math/Quaternion;

    .end local p2
    invoke-direct {p2}, Lcom/jme3/math/Quaternion;-><init>()V

    .line 841
    .restart local p2
    :cond_0
    iget v0, p1, Lcom/jme3/math/Quaternion;->w:F

    .local v0, qw:F
    iget v1, p1, Lcom/jme3/math/Quaternion;->x:F

    .local v1, qx:F
    iget v2, p1, Lcom/jme3/math/Quaternion;->y:F

    .local v2, qy:F
    iget v3, p1, Lcom/jme3/math/Quaternion;->z:F

    .line 842
    .local v3, qz:F
    iget v4, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iput v4, p2, Lcom/jme3/math/Quaternion;->x:F

    .line 843
    iget v4, p0, Lcom/jme3/math/Quaternion;->x:F

    neg-float v4, v4

    mul-float/2addr v4, v3

    iget v5, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, p2, Lcom/jme3/math/Quaternion;->y:F

    .line 844
    iget v4, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v4, v2

    iget v5, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p2, Lcom/jme3/math/Quaternion;->z:F

    .line 845
    iget v4, p0, Lcom/jme3/math/Quaternion;->x:F

    neg-float v4, v4

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p2, Lcom/jme3/math/Quaternion;->w:F

    .line 846
    return-object p2
.end method

.method public mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 7
    .parameter "v"
    .parameter "store"

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x4000

    .line 1013
    if-nez p2, :cond_0

    .line 1014
    new-instance p2, Lcom/jme3/math/Vector3f;

    .end local p2
    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 1016
    .restart local p2
    :cond_0
    iget v3, p1, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p1, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget v3, p1, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 1017
    invoke-virtual {p2, v4, v4, v4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 1030
    :goto_0
    return-object p2

    .line 1019
    :cond_1
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    .local v0, vx:F
    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    .local v1, vy:F
    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    .line 1020
    .local v2, vz:F
    iget v3, p0, Lcom/jme3/math/Quaternion;->w:F

    iget v4, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v5, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v5, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v5, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 1023
    iget v3, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v5, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v5, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->w:F

    iget v5, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v5, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 1026
    iget v3, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v5, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v5, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v5, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->w:F

    iget v5, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p2, Lcom/jme3/math/Vector3f;->z:F

    goto/16 :goto_0
.end method

.method public multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 6
    .parameter "q"

    .prologue
    .line 964
    iget v3, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v4, p1, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v5, p1, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v5, p1, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->w:F

    iget v5, p1, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    add-float v0, v3, v4

    .line 965
    .local v0, x1:F
    iget v3, p0, Lcom/jme3/math/Quaternion;->x:F

    neg-float v3, v3

    iget v4, p1, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v5, p1, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v5, p1, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->w:F

    iget v5, p1, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    add-float v1, v3, v4

    .line 966
    .local v1, y1:F
    iget v3, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v4, p1, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v5, p1, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v5, p1, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->w:F

    iget v5, p1, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 967
    .local v2, z1:F
    iget v3, p0, Lcom/jme3/math/Quaternion;->x:F

    neg-float v3, v3

    iget v4, p1, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v5, p1, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v5, p1, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->w:F

    iget v5, p1, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/jme3/math/Quaternion;->w:F

    .line 968
    iput v0, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 969
    iput v1, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 970
    iput v2, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 971
    return-object p0
.end method

.method public multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 6
    .parameter "v"

    .prologue
    const/high16 v5, 0x4000

    .line 942
    iget v2, p0, Lcom/jme3/math/Quaternion;->w:F

    iget v3, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v4, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v4, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 944
    .local v0, tempX:F
    iget v2, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v2, v5

    iget v3, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v4, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->w:F

    iget v4, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v4, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 947
    .local v1, tempY:F
    iget v2, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v2, v5

    iget v3, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v4, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v3, v5

    iget v4, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v4, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->w:F

    iget v4, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p1, Lcom/jme3/math/Vector3f;->z:F

    .line 949
    iput v0, p1, Lcom/jme3/math/Vector3f;->x:F

    .line 950
    iput v1, p1, Lcom/jme3/math/Vector3f;->y:F

    .line 951
    return-object p1
.end method

.method public nlerp(Lcom/jme3/math/Quaternion;F)V
    .locals 4
    .parameter "q2"
    .parameter "blend"

    .prologue
    .line 737
    invoke-virtual {p0, p1}, Lcom/jme3/math/Quaternion;->dot(Lcom/jme3/math/Quaternion;)F

    move-result v1

    .line 738
    .local v1, dot:F
    const/high16 v2, 0x3f80

    sub-float v0, v2, p2

    .line 739
    .local v0, blendI:F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 740
    iget v2, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v2, v0

    iget v3, p1, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 741
    iget v2, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v2, v0

    iget v3, p1, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 742
    iget v2, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v2, v0

    iget v3, p1, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 743
    iget v2, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v2, v0

    iget v3, p1, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/jme3/math/Quaternion;->w:F

    .line 750
    :goto_0
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->normalizeLocal()V

    .line 751
    return-void

    .line 745
    :cond_0
    iget v2, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v2, v0

    iget v3, p1, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 746
    iget v2, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v2, v0

    iget v3, p1, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 747
    iget v2, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v2, v0

    iget v3, p1, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 748
    iget v2, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v2, v0

    iget v3, p1, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, p0, Lcom/jme3/math/Quaternion;->w:F

    goto :goto_0
.end method

.method public norm()F
    .locals 3

    .prologue
    .line 1080
    iget v0, p0, Lcom/jme3/math/Quaternion;->w:F

    iget v1, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v2, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v2, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v2, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public normalize()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1090
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->norm()F

    move-result v1

    invoke-static {v1}, Lcom/jme3/math/FastMath;->invSqrt(F)F

    move-result v0

    .line 1091
    .local v0, n:F
    iget v1, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 1092
    iget v1, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 1093
    iget v1, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 1094
    iget v1, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jme3/math/Quaternion;->w:F

    .line 1095
    return-void
.end method

.method public normalizeLocal()V
    .locals 2

    .prologue
    .line 1101
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->norm()F

    move-result v1

    invoke-static {v1}, Lcom/jme3/math/FastMath;->invSqrt(F)F

    move-result v0

    .line 1102
    .local v0, n:F
    iget v1, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 1103
    iget v1, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 1104
    iget v1, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 1105
    iget v1, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jme3/math/Quaternion;->w:F

    .line 1106
    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1292
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 1293
    .local v0, cap:Lcom/jme3/export/InputCapsule;
    const-string v1, "x"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 1294
    const-string v1, "y"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 1295
    const-string v1, "z"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 1296
    const-string v1, "w"

    const/high16 v2, 0x3f80

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Quaternion;->w:F

    .line 1297
    return-void
.end method

.method public set(FFFF)Lcom/jme3/math/Quaternion;
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "w"

    .prologue
    .line 134
    iput p1, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 135
    iput p2, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 136
    iput p3, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 137
    iput p4, p0, Lcom/jme3/math/Quaternion;->w:F

    .line 138
    return-object p0
.end method

.method public set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 1
    .parameter "q"

    .prologue
    .line 151
    iget v0, p1, Lcom/jme3/math/Quaternion;->x:F

    iput v0, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 152
    iget v0, p1, Lcom/jme3/math/Quaternion;->y:F

    iput v0, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 153
    iget v0, p1, Lcom/jme3/math/Quaternion;->z:F

    iput v0, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 154
    iget v0, p1, Lcom/jme3/math/Quaternion;->w:F

    iput v0, p0, Lcom/jme3/math/Quaternion;->w:F

    .line 155
    return-object p0
.end method

.method public toRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 17
    .parameter "result"

    .prologue
    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/math/Quaternion;->norm()F

    move-result v1

    .line 400
    .local v1, norm:F
    const/high16 v15, 0x3f80

    cmpl-float v15, v1, v15

    if-nez v15, :cond_0

    const/high16 v2, 0x4000

    .line 404
    .local v2, s:F
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->x:F

    mul-float v3, v15, v2

    .line 405
    .local v3, xs:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->y:F

    mul-float v8, v15, v2

    .line 406
    .local v8, ys:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->z:F

    mul-float v12, v15, v2

    .line 407
    .local v12, zs:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->x:F

    mul-float v5, v15, v3

    .line 408
    .local v5, xx:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->x:F

    mul-float v6, v15, v8

    .line 409
    .local v6, xy:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->x:F

    mul-float v7, v15, v12

    .line 410
    .local v7, xz:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->w:F

    mul-float v4, v15, v3

    .line 411
    .local v4, xw:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->y:F

    mul-float v10, v15, v8

    .line 412
    .local v10, yy:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->y:F

    mul-float v11, v15, v12

    .line 413
    .local v11, yz:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->w:F

    mul-float v9, v15, v8

    .line 414
    .local v9, yw:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->z:F

    mul-float v14, v15, v12

    .line 415
    .local v14, zz:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->w:F

    mul-float v13, v15, v12

    .line 418
    .local v13, zw:F
    const/high16 v15, 0x3f80

    add-float v16, v10, v14

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix3f;->m00:F

    .line 419
    sub-float v15, v6, v13

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix3f;->m01:F

    .line 420
    add-float v15, v7, v9

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix3f;->m02:F

    .line 421
    add-float v15, v6, v13

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix3f;->m10:F

    .line 422
    const/high16 v15, 0x3f80

    add-float v16, v5, v14

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix3f;->m11:F

    .line 423
    sub-float v15, v11, v4

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix3f;->m12:F

    .line 424
    sub-float v15, v7, v9

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix3f;->m20:F

    .line 425
    add-float v15, v11, v4

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix3f;->m21:F

    .line 426
    const/high16 v15, 0x3f80

    add-float v16, v5, v10

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix3f;->m22:F

    .line 428
    return-object p1

    .line 400
    .end local v2           #s:F
    .end local v3           #xs:F
    .end local v4           #xw:F
    .end local v5           #xx:F
    .end local v6           #xy:F
    .end local v7           #xz:F
    .end local v8           #ys:F
    .end local v9           #yw:F
    .end local v10           #yy:F
    .end local v11           #yz:F
    .end local v12           #zs:F
    .end local v13           #zw:F
    .end local v14           #zz:F
    :cond_0
    const/4 v15, 0x0

    cmpl-float v15, v1, v15

    if-lez v15, :cond_1

    const/high16 v15, 0x4000

    div-float v2, v15, v1

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public toRotationMatrix(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;
    .locals 17
    .parameter "result"

    .prologue
    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/math/Quaternion;->norm()F

    move-result v1

    .line 445
    .local v1, norm:F
    const/high16 v15, 0x3f80

    cmpl-float v15, v1, v15

    if-nez v15, :cond_0

    const/high16 v2, 0x4000

    .line 449
    .local v2, s:F
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->x:F

    mul-float v3, v15, v2

    .line 450
    .local v3, xs:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->y:F

    mul-float v8, v15, v2

    .line 451
    .local v8, ys:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->z:F

    mul-float v12, v15, v2

    .line 452
    .local v12, zs:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->x:F

    mul-float v5, v15, v3

    .line 453
    .local v5, xx:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->x:F

    mul-float v6, v15, v8

    .line 454
    .local v6, xy:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->x:F

    mul-float v7, v15, v12

    .line 455
    .local v7, xz:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->w:F

    mul-float v4, v15, v3

    .line 456
    .local v4, xw:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->y:F

    mul-float v10, v15, v8

    .line 457
    .local v10, yy:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->y:F

    mul-float v11, v15, v12

    .line 458
    .local v11, yz:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->w:F

    mul-float v9, v15, v8

    .line 459
    .local v9, yw:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->z:F

    mul-float v14, v15, v12

    .line 460
    .local v14, zz:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jme3/math/Quaternion;->w:F

    mul-float v13, v15, v12

    .line 463
    .local v13, zw:F
    const/high16 v15, 0x3f80

    add-float v16, v10, v14

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m00:F

    .line 464
    sub-float v15, v6, v13

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m01:F

    .line 465
    add-float v15, v7, v9

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m02:F

    .line 466
    add-float v15, v6, v13

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m10:F

    .line 467
    const/high16 v15, 0x3f80

    add-float v16, v5, v14

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m11:F

    .line 468
    sub-float v15, v11, v4

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m12:F

    .line 469
    sub-float v15, v7, v9

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m20:F

    .line 470
    add-float v15, v11, v4

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m21:F

    .line 471
    const/high16 v15, 0x3f80

    add-float v16, v5, v10

    sub-float v15, v15, v16

    move-object/from16 v0, p1

    iput v15, v0, Lcom/jme3/math/Matrix4f;->m22:F

    .line 473
    return-object p1

    .line 445
    .end local v2           #s:F
    .end local v3           #xs:F
    .end local v4           #xw:F
    .end local v5           #xx:F
    .end local v6           #xy:F
    .end local v7           #xz:F
    .end local v8           #ys:F
    .end local v9           #yw:F
    .end local v10           #yy:F
    .end local v11           #yz:F
    .end local v12           #zs:F
    .end local v13           #zw:F
    .end local v14           #zz:F
    :cond_0
    const/4 v15, 0x0

    cmpl-float v15, v1, v15

    if-lez v15, :cond_1

    const/high16 v15, 0x4000

    div-float v2, v15, v1

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/math/Quaternion;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/math/Quaternion;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/math/Quaternion;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/math/Quaternion;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
