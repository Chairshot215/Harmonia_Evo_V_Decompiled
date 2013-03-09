.class public final Lcom/jme3/math/Vector3f;
.super Ljava/lang/Object;
.source "Vector3f.java"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final NAN:Lcom/jme3/math/Vector3f; = null

.field public static final NEGATIVE_INFINITY:Lcom/jme3/math/Vector3f; = null

.field public static final POSITIVE_INFINITY:Lcom/jme3/math/Vector3f; = null

.field public static final UNIT_X:Lcom/jme3/math/Vector3f; = null

.field public static final UNIT_XYZ:Lcom/jme3/math/Vector3f; = null

.field public static final UNIT_Y:Lcom/jme3/math/Vector3f; = null

.field public static final UNIT_Z:Lcom/jme3/math/Vector3f; = null

.field public static final ZERO:Lcom/jme3/math/Vector3f; = null

.field private static final logger:Ljava/util/logging/Logger; = null

.field static final serialVersionUID:J = 0x1L


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v5, 0x7fc0

    const/high16 v4, 0x7f80

    const/high16 v3, -0x80

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 56
    const-class v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/math/Vector3f;->logger:Ljava/util/logging/Logger;

    .line 58
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    .line 59
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v5, v5, v5}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/math/Vector3f;->NAN:Lcom/jme3/math/Vector3f;

    .line 60
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v2, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    .line 61
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v2, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    .line 62
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    .line 63
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/math/Vector3f;->UNIT_XYZ:Lcom/jme3/math/Vector3f;

    .line 64
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v4, v4, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/math/Vector3f;->POSITIVE_INFINITY:Lcom/jme3/math/Vector3f;

    .line 68
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v3, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/math/Vector3f;->NEGATIVE_INFINITY:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/math/Vector3f;->z:F

    iput v0, p0, Lcom/jme3/math/Vector3f;->y:F

    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 96
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 111
    iput p2, p0, Lcom/jme3/math/Vector3f;->y:F

    .line 112
    iput p3, p0, Lcom/jme3/math/Vector3f;->z:F

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;)V
    .locals 0
    .parameter "copy"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 122
    return-void
.end method

.method public static isValidVector(Lcom/jme3/math/Vector3f;)Z
    .locals 2
    .parameter "vector"

    .prologue
    const/4 v0, 0x0

    .line 865
    if-nez p0, :cond_1

    .line 872
    :cond_0
    :goto_0
    return v0

    .line 866
    :cond_1
    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 869
    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 872
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 5
    .parameter "vec"

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 170
    sget-object v0, Lcom/jme3/math/Vector3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/jme3/math/Vector3f;

    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p1, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Vector3f;->z:F

    iget v4, p1, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    goto :goto_0
.end method

.method public add(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2
    .parameter "vec"
    .parameter "result"

    .prologue
    .line 188
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 189
    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 190
    iget v0, p0, Lcom/jme3/math/Vector3f;->z:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v0, v1

    iput v0, p2, Lcom/jme3/math/Vector3f;->z:F

    .line 191
    return-object p2
.end method

.method public addLocal(FFF)Lcom/jme3/math/Vector3f;
    .locals 1
    .parameter "addX"
    .parameter "addY"
    .parameter "addZ"

    .prologue
    .line 245
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 246
    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/jme3/math/Vector3f;->y:F

    .line 247
    iget v0, p0, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/jme3/math/Vector3f;->z:F

    .line 248
    return-object p0
.end method

.method public addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2
    .parameter "vec"

    .prologue
    .line 204
    if-nez p1, :cond_0

    .line 205
    sget-object v0, Lcom/jme3/math/Vector3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 206
    const/4 p0, 0x0

    .line 211
    .end local p0
    :goto_0
    return-object p0

    .line 208
    .restart local p0
    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 209
    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector3f;->y:F

    .line 210
    iget v0, p0, Lcom/jme3/math/Vector3f;->z:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0
.end method

.method public angleBetween(Lcom/jme3/math/Vector3f;)F
    .locals 2
    .parameter "otherVector"

    .prologue
    .line 824
    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v1

    .line 825
    .local v1, dotProduct:F
    invoke-static {v1}, Lcom/jme3/math/FastMath;->acos(F)F

    move-result v0

    .line 826
    .local v0, angle:F
    return v0
.end method

.method public clone()Lcom/jme3/math/Vector3f;
    .locals 2

    .prologue
    .line 908
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 909
    :catch_0
    move-exception v0

    .line 910
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
    .line 52
    invoke-virtual {p0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public cross(FFFLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 5
    .parameter "otherX"
    .parameter "otherY"
    .parameter "otherZ"
    .parameter "result"

    .prologue
    .line 345
    if-nez p4, :cond_0

    new-instance p4, Lcom/jme3/math/Vector3f;

    .end local p4
    invoke-direct {p4}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 346
    .restart local p4
    :cond_0
    iget v3, p0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v3, p3

    iget v4, p0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v4, p2

    sub-float v0, v3, v4

    .line 347
    .local v0, resX:F
    iget v3, p0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v4, p3

    sub-float v1, v3, v4

    .line 348
    .local v1, resY:F
    iget v3, p0, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v3, p2

    iget v4, p0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v4, p1

    sub-float v2, v3, v4

    .line 349
    .local v2, resZ:F
    invoke-virtual {p4, v0, v1, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 350
    return-object p4
.end method

.method public cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1
    .parameter "v"

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3
    .parameter "v"
    .parameter "result"

    .prologue
    .line 327
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/jme3/math/Vector3f;->cross(FFFLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public crossLocal(FFF)Lcom/jme3/math/Vector3f;
    .locals 4
    .parameter "otherX"
    .parameter "otherY"
    .parameter "otherZ"

    .prologue
    .line 378
    iget v2, p0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v2, p3

    iget v3, p0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, p2

    sub-float v0, v2, v3

    .line 379
    .local v0, tempx:F
    iget v2, p0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v3, p3

    sub-float v1, v2, v3

    .line 380
    .local v1, tempy:F
    iget v2, p0, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v2, p2

    iget v3, p0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/jme3/math/Vector3f;->z:F

    .line 381
    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 382
    iput v1, p0, Lcom/jme3/math/Vector3f;->y:F

    .line 383
    return-object p0
.end method

.method public crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3
    .parameter "v"

    .prologue
    .line 362
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/jme3/math/Vector3f;->crossLocal(FFF)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public distance(Lcom/jme3/math/Vector3f;)F
    .locals 1
    .parameter "v"

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector3f;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result v0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public distanceSquared(Lcom/jme3/math/Vector3f;)F
    .locals 10
    .parameter "v"

    .prologue
    .line 431
    iget v6, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v7, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v6, v7

    float-to-double v0, v6

    .line 432
    .local v0, dx:D
    iget v6, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v7, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v6, v7

    float-to-double v2, v6

    .line 433
    .local v2, dy:D
    iget v6, p0, Lcom/jme3/math/Vector3f;->z:F

    iget v7, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v6, v7

    float-to-double v4, v6

    .line 434
    .local v4, dz:D
    mul-double v6, v0, v0

    mul-double v8, v2, v2

    add-double/2addr v6, v8

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    double-to-float v6, v6

    return v6
.end method

.method public divideLocal(F)Lcom/jme3/math/Vector3f;
    .locals 1
    .parameter "scalar"

    .prologue
    .line 593
    const/high16 v0, 0x3f80

    div-float p1, v0, p1

    .line 594
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 595
    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector3f;->y:F

    .line 596
    iget v0, p0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector3f;->z:F

    .line 597
    return-object p0
.end method

.method public divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2
    .parameter "scalar"

    .prologue
    .line 623
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 624
    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector3f;->y:F

    .line 625
    iget v0, p0, Lcom/jme3/math/Vector3f;->z:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->z:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector3f;->z:F

    .line 626
    return-object p0
.end method

.method public dot(Lcom/jme3/math/Vector3f;)F
    .locals 3
    .parameter "vec"

    .prologue
    .line 297
    if-nez p1, :cond_0

    .line 298
    sget-object v0, Lcom/jme3/math/Vector3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, 0 returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 299
    const/4 v0, 0x0

    .line 301
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector3f;->z:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 941
    instance-of v3, p1, Lcom/jme3/math/Vector3f;

    if-nez v3, :cond_1

    .line 949
    :cond_0
    :goto_0
    return v1

    .line 943
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 945
    check-cast v0, Lcom/jme3/math/Vector3f;

    .line 946
    .local v0, comp:Lcom/jme3/math/Vector3f;
    iget v3, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v4, v0, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 947
    iget v3, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v4, v0, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 948
    iget v3, p0, Lcom/jme3/math/Vector3f;->z:F

    iget v4, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 949
    goto :goto_0
.end method

.method public get(I)F
    .locals 2
    .parameter "index"

    .prologue
    .line 1027
    packed-switch p1, :pswitch_data_0

    .line 1035
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must be either 0, 1 or 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1029
    :pswitch_0
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 1033
    :goto_0
    return v0

    .line 1031
    :pswitch_1
    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    goto :goto_0

    .line 1033
    :pswitch_2
    iget v0, p0, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0

    .line 1027
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 993
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 1002
    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 1011
    iget v0, p0, Lcom/jme3/math/Vector3f;->z:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 959
    const/16 v0, 0x25

    .line 960
    .local v0, hash:I
    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v1, v1, 0x559

    add-int/2addr v0, v1

    .line 961
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 962
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 963
    return v0
.end method

.method public interpolate(Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;
    .locals 3
    .parameter "finalVec"
    .parameter "changeAmnt"

    .prologue
    const/high16 v2, 0x3f80

    .line 837
    sub-float v0, v2, p2

    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 838
    sub-float v0, v2, p2

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector3f;->y:F

    .line 839
    sub-float v0, v2, p2

    iget v1, p0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector3f;->z:F

    .line 840
    return-object p0
.end method

.method public interpolate(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;
    .locals 3
    .parameter "beginVec"
    .parameter "finalVec"
    .parameter "changeAmnt"

    .prologue
    const/high16 v2, 0x3f80

    .line 852
    sub-float v0, v2, p3

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 853
    sub-float v0, v2, p3

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector3f;->y:F

    .line 854
    sub-float v0, v2, p3

    iget v1, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector3f;->z:F

    .line 855
    return-object p0
.end method

.method public isUnitVector()Z
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/jme3/math/Vector3f;->length()F

    move-result v0

    .line 401
    .local v0, len:F
    const v1, 0x3f7d70a4

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    const v1, 0x3f8147ae

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public length()F
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public lengthSquared()F
    .locals 3

    .prologue
    .line 420
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector3f;->z:F

    iget v2, p0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public mult(F)Lcom/jme3/math/Vector3f;
    .locals 4
    .parameter "scalar"

    .prologue
    .line 458
    new-instance v0, Lcom/jme3/math/Vector3f;

    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4
    .parameter "vec"
    .parameter "store"

    .prologue
    .line 561
    if-nez p1, :cond_0

    .line 562
    sget-object v0, Lcom/jme3/math/Vector3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 563
    const/4 v0, 0x0

    .line 566
    :goto_0
    return-object v0

    .line 565
    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lcom/jme3/math/Vector3f;

    .end local p2
    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 566
    .restart local p2
    :cond_1
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/jme3/math/Vector3f;->z:F

    iget v3, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v2, v3

    invoke-virtual {p2, v0, v1, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-result-object v0

    goto :goto_0
.end method

.method public multLocal(F)Lcom/jme3/math/Vector3f;
    .locals 1
    .parameter "scalar"

    .prologue
    .line 490
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 491
    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector3f;->y:F

    .line 492
    iget v0, p0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector3f;->z:F

    .line 493
    return-object p0
.end method

.method public multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2
    .parameter "vec"

    .prologue
    .line 506
    if-nez p1, :cond_0

    .line 507
    sget-object v0, Lcom/jme3/math/Vector3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 508
    const/4 p0, 0x0

    .line 513
    .end local p0
    :goto_0
    return-object p0

    .line 510
    .restart local p0
    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 511
    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector3f;->y:F

    .line 512
    iget v0, p0, Lcom/jme3/math/Vector3f;->z:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0
.end method

.method public negateLocal()Lcom/jme3/math/Vector3f;
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 648
    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/math/Vector3f;->y:F

    .line 649
    iget v0, p0, Lcom/jme3/math/Vector3f;->z:F

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/math/Vector3f;->z:F

    .line 650
    return-object p0
.end method

.method public normalize()Lcom/jme3/math/Vector3f;
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    .line 756
    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p0, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/jme3/math/Vector3f;->z:F

    iget v3, p0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 757
    .local v0, length:F
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 758
    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v1

    div-float v0, v4, v1

    .line 759
    new-instance v1, Lcom/jme3/math/Vector3f;

    iget v2, p0, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v4, v0

    invoke-direct {v1, v2, v3, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    .line 761
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    goto :goto_0
.end method

.method public normalizeLocal()Lcom/jme3/math/Vector3f;
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    .line 774
    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p0, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/jme3/math/Vector3f;->z:F

    iget v3, p0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 775
    .local v0, length:F
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 776
    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v1

    div-float v0, v4, v1

    .line 777
    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 778
    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jme3/math/Vector3f;->y:F

    .line 779
    iget v1, p0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jme3/math/Vector3f;->z:F

    .line 781
    :cond_0
    return-object p0
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

    .line 986
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 987
    .local v0, capsule:Lcom/jme3/export/InputCapsule;
    const-string v1, "x"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 988
    const-string v1, "y"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Vector3f;->y:F

    .line 989
    const-string v1, "z"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Vector3f;->z:F

    .line 990
    return-void
.end method

.method public set(FFF)Lcom/jme3/math/Vector3f;
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 137
    iput p1, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 138
    iput p2, p0, Lcom/jme3/math/Vector3f;->y:F

    .line 139
    iput p3, p0, Lcom/jme3/math/Vector3f;->z:F

    .line 140
    return-object p0
.end method

.method public set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1
    .parameter "vect"

    .prologue
    .line 152
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 153
    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iput v0, p0, Lcom/jme3/math/Vector3f;->y:F

    .line 154
    iget v0, p1, Lcom/jme3/math/Vector3f;->z:F

    iput v0, p0, Lcom/jme3/math/Vector3f;->z:F

    .line 155
    return-object p0
.end method

.method public set(IF)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1047
    packed-switch p1, :pswitch_data_0

    .line 1058
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index must be either 0, 1 or 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1049
    :pswitch_0
    iput p2, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 1056
    :goto_0
    return-void

    .line 1052
    :pswitch_1
    iput p2, p0, Lcom/jme3/math/Vector3f;->y:F

    goto :goto_0

    .line 1055
    :pswitch_2
    iput p2, p0, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0

    .line 1047
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setX(F)Lcom/jme3/math/Vector3f;
    .locals 0
    .parameter "x"

    .prologue
    .line 997
    iput p1, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 998
    return-object p0
.end method

.method public setY(F)Lcom/jme3/math/Vector3f;
    .locals 0
    .parameter "y"

    .prologue
    .line 1006
    iput p1, p0, Lcom/jme3/math/Vector3f;->y:F

    .line 1007
    return-object p0
.end method

.method public subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 5
    .parameter "vec"

    .prologue
    .line 664
    new-instance v0, Lcom/jme3/math/Vector3f;

    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Vector3f;->z:F

    iget v4, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2
    .parameter "vec"
    .parameter "result"

    .prologue
    .line 698
    if-nez p2, :cond_0

    .line 699
    new-instance p2, Lcom/jme3/math/Vector3f;

    .end local p2
    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 701
    .restart local p2
    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 702
    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 703
    iget v0, p0, Lcom/jme3/math/Vector3f;->z:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/jme3/math/Vector3f;->z:F

    .line 704
    return-object p2
.end method

.method public subtractLocal(FFF)Lcom/jme3/math/Vector3f;
    .locals 1
    .parameter "subtractX"
    .parameter "subtractY"
    .parameter "subtractZ"

    .prologue
    .line 738
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 739
    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/jme3/math/Vector3f;->y:F

    .line 740
    iget v0, p0, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v0, p3

    iput v0, p0, Lcom/jme3/math/Vector3f;->z:F

    .line 741
    return-object p0
.end method

.method public subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2
    .parameter "vec"

    .prologue
    .line 677
    if-nez p1, :cond_0

    .line 678
    sget-object v0, Lcom/jme3/math/Vector3f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 679
    const/4 p0, 0x0

    .line 684
    .end local p0
    :goto_0
    return-object p0

    .line 681
    .restart local p0
    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector3f;->x:F

    .line 682
    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector3f;->y:F

    .line 683
    iget v0, p0, Lcom/jme3/math/Vector3f;->z:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
