.class public final Lcom/jme3/math/Vector2f;
.super Ljava/lang/Object;
.source "Vector2f.java"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final UNIT_XY:Lcom/jme3/math/Vector2f; = null

.field public static final ZERO:Lcom/jme3/math/Vector2f; = null

.field private static final logger:Ljava/util/logging/Logger; = null

.field static final serialVersionUID:J = 0x1L


# instance fields
.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 51
    const-class v0, Lcom/jme3/math/Vector2f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/math/Vector2f;->logger:Ljava/util/logging/Logger;

    .line 53
    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0, v1, v1}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    sput-object v0, Lcom/jme3/math/Vector2f;->ZERO:Lcom/jme3/math/Vector2f;

    .line 54
    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0, v2, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    sput-object v0, Lcom/jme3/math/Vector2f;->UNIT_XY:Lcom/jme3/math/Vector2f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/math/Vector2f;->y:F

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 83
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 75
    iput p2, p0, Lcom/jme3/math/Vector2f;->y:F

    .line 76
    return-void
.end method


# virtual methods
.method public addLocal(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;
    .locals 2
    .parameter "vec"

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    sget-object v0, Lcom/jme3/math/Vector2f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 153
    const/4 p0, 0x0

    .line 157
    .end local p0
    :goto_0
    return-object p0

    .line 155
    .restart local p0
    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector2f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 156
    iget v0, p0, Lcom/jme3/math/Vector2f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector2f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector2f;->y:F

    goto :goto_0
.end method

.method public clone()Lcom/jme3/math/Vector2f;
    .locals 2

    .prologue
    .line 650
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector2f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 651
    :catch_0
    move-exception v0

    .line 652
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
    .line 48
    invoke-virtual {p0}, Lcom/jme3/math/Vector2f;->clone()Lcom/jme3/math/Vector2f;

    move-result-object v0

    return-object v0
.end method

.method public distance(Lcom/jme3/math/Vector2f;)F
    .locals 1
    .parameter "v"

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector2f;->distanceSquared(Lcom/jme3/math/Vector2f;)F

    move-result v0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public distanceSquared(Lcom/jme3/math/Vector2f;)F
    .locals 8
    .parameter "v"

    .prologue
    .line 310
    iget v4, p0, Lcom/jme3/math/Vector2f;->x:F

    iget v5, p1, Lcom/jme3/math/Vector2f;->x:F

    sub-float/2addr v4, v5

    float-to-double v0, v4

    .line 311
    .local v0, dx:D
    iget v4, p0, Lcom/jme3/math/Vector2f;->y:F

    iget v5, p1, Lcom/jme3/math/Vector2f;->y:F

    sub-float/2addr v4, v5

    float-to-double v2, v4

    .line 312
    .local v2, dy:D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    double-to-float v4, v4

    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 682
    instance-of v3, p1, Lcom/jme3/math/Vector2f;

    if-nez v3, :cond_1

    .line 695
    :cond_0
    :goto_0
    return v1

    .line 686
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    .line 687
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 690
    check-cast v0, Lcom/jme3/math/Vector2f;

    .line 691
    .local v0, comp:Lcom/jme3/math/Vector2f;
    iget v3, p0, Lcom/jme3/math/Vector2f;->x:F

    iget v4, v0, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 693
    iget v3, p0, Lcom/jme3/math/Vector2f;->y:F

    iget v4, v0, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 695
    goto :goto_0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/jme3/math/Vector2f;->y:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 641
    const/16 v0, 0x25

    .line 642
    .local v0, hash:I
    iget v1, p0, Lcom/jme3/math/Vector2f;->x:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v1, v1, 0x559

    add-int/2addr v0, v1

    .line 643
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/Vector2f;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 644
    return v0
.end method

.method public multLocal(F)Lcom/jme3/math/Vector2f;
    .locals 1
    .parameter "scalar"

    .prologue
    .line 361
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 362
    iget v0, p0, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Vector2f;->y:F

    .line 363
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

    .line 744
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 745
    .local v0, capsule:Lcom/jme3/export/InputCapsule;
    const-string v1, "x"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 746
    const-string v1, "y"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/Vector2f;->y:F

    .line 747
    return-void
.end method

.method public rotateAroundOrigin(FZ)V
    .locals 5
    .parameter "angle"
    .parameter "cw"

    .prologue
    .line 750
    if-eqz p2, :cond_0

    .line 751
    neg-float p1, p1

    .line 752
    :cond_0
    invoke-static {p1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v2

    iget v3, p0, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v2, v3

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v3

    iget v4, p0, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 753
    .local v0, newX:F
    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v2

    iget v3, p0, Lcom/jme3/math/Vector2f;->x:F

    mul-float/2addr v2, v3

    invoke-static {p1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v3

    iget v4, p0, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 754
    .local v1, newY:F
    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 755
    iput v1, p0, Lcom/jme3/math/Vector2f;->y:F

    .line 756
    return-void
.end method

.method public set(FF)Lcom/jme3/math/Vector2f;
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 106
    iput p1, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 107
    iput p2, p0, Lcom/jme3/math/Vector2f;->y:F

    .line 108
    return-object p0
.end method

.method public set(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;
    .locals 1
    .parameter "vec"

    .prologue
    .line 119
    iget v0, p1, Lcom/jme3/math/Vector2f;->x:F

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 120
    iget v0, p1, Lcom/jme3/math/Vector2f;->y:F

    iput v0, p0, Lcom/jme3/math/Vector2f;->y:F

    .line 121
    return-object p0
.end method

.method public setX(F)Lcom/jme3/math/Vector2f;
    .locals 0
    .parameter "x"

    .prologue
    .line 602
    iput p1, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 603
    return-object p0
.end method

.method public setY(F)Lcom/jme3/math/Vector2f;
    .locals 0
    .parameter "y"

    .prologue
    .line 611
    iput p1, p0, Lcom/jme3/math/Vector2f;->y:F

    .line 612
    return-object p0
.end method

.method public subtractLocal(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;
    .locals 2
    .parameter "vec"

    .prologue
    .line 511
    if-nez p1, :cond_0

    .line 512
    sget-object v0, Lcom/jme3/math/Vector2f;->logger:Ljava/util/logging/Logger;

    const-string v1, "Provided vector is null, null returned."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 513
    const/4 p0, 0x0

    .line 517
    .end local p0
    :goto_0
    return-object p0

    .line 515
    .restart local p0
    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector2f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector2f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector2f;->x:F

    .line 516
    iget v0, p0, Lcom/jme3/math/Vector2f;->y:F

    iget v1, p1, Lcom/jme3/math/Vector2f;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Vector2f;->y:F

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/math/Vector2f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
