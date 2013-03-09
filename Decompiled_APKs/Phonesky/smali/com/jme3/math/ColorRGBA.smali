.class public final Lcom/jme3/math/ColorRGBA;
.super Ljava/lang/Object;
.source "ColorRGBA.java"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final Black:Lcom/jme3/math/ColorRGBA; = null

.field public static final BlackNoAlpha:Lcom/jme3/math/ColorRGBA; = null

.field public static final Blue:Lcom/jme3/math/ColorRGBA; = null

.field public static final Brown:Lcom/jme3/math/ColorRGBA; = null

.field public static final Cyan:Lcom/jme3/math/ColorRGBA; = null

.field public static final DarkGray:Lcom/jme3/math/ColorRGBA; = null

.field public static final Gray:Lcom/jme3/math/ColorRGBA; = null

.field public static final Green:Lcom/jme3/math/ColorRGBA; = null

.field public static final LightGray:Lcom/jme3/math/ColorRGBA; = null

.field public static final Magenta:Lcom/jme3/math/ColorRGBA; = null

.field public static final Orange:Lcom/jme3/math/ColorRGBA; = null

.field public static final Pink:Lcom/jme3/math/ColorRGBA; = null

.field public static final Red:Lcom/jme3/math/ColorRGBA; = null

.field public static final White:Lcom/jme3/math/ColorRGBA; = null

.field public static final Yellow:Lcom/jme3/math/ColorRGBA; = null

.field static final serialVersionUID:J = 0x1L


# instance fields
.field public a:F

.field public b:F

.field public g:F

.field public r:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v3, 0x3f4ccccd

    const/high16 v2, 0x3f00

    const v1, 0x3e4ccccd

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 56
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v5, v5, v5, v4}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Black:Lcom/jme3/math/ColorRGBA;

    .line 60
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v4, v4, v4, v4}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->White:Lcom/jme3/math/ColorRGBA;

    .line 64
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v1, v1, v1, v4}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->DarkGray:Lcom/jme3/math/ColorRGBA;

    .line 68
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v2, v2, v2, v4}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Gray:Lcom/jme3/math/ColorRGBA;

    .line 72
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v3, v3, v3, v4}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->LightGray:Lcom/jme3/math/ColorRGBA;

    .line 76
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v4, v5, v5, v4}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Red:Lcom/jme3/math/ColorRGBA;

    .line 80
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v5, v4, v5, v4}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Green:Lcom/jme3/math/ColorRGBA;

    .line 84
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v5, v5, v4, v4}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Blue:Lcom/jme3/math/ColorRGBA;

    .line 88
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v4, v4, v5, v4}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Yellow:Lcom/jme3/math/ColorRGBA;

    .line 92
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v4, v5, v4, v4}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Magenta:Lcom/jme3/math/ColorRGBA;

    .line 96
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v5, v4, v4, v4}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Cyan:Lcom/jme3/math/ColorRGBA;

    .line 100
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const v1, 0x3f7bfbfc

    const v2, 0x3f028283

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Orange:Lcom/jme3/math/ColorRGBA;

    .line 104
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const v1, 0x3e828283

    const v2, 0x3e20a0a1

    const v3, 0x3dc8c8c9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Brown:Lcom/jme3/math/ColorRGBA;

    .line 108
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const v1, 0x3f2e147b

    const v2, 0x3f2e147b

    invoke-direct {v0, v4, v1, v2, v4}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->Pink:Lcom/jme3/math/ColorRGBA;

    .line 112
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v5, v5, v5, v5}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/math/ColorRGBA;->BlackNoAlpha:Lcom/jme3/math/ColorRGBA;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->b:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->g:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    .line 137
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput p1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    .line 150
    iput p2, p0, Lcom/jme3/math/ColorRGBA;->g:F

    .line 151
    iput p3, p0, Lcom/jme3/math/ColorRGBA;->b:F

    .line 152
    iput p4, p0, Lcom/jme3/math/ColorRGBA;->a:F

    .line 153
    return-void
.end method


# virtual methods
.method public addLocal(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 5
    .parameter "c"

    .prologue
    .line 376
    iget v0, p1, Lcom/jme3/math/ColorRGBA;->r:F

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/jme3/math/ColorRGBA;->g:F

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->g:F

    add-float/2addr v1, v2

    iget v2, p1, Lcom/jme3/math/ColorRGBA;->b:F

    iget v3, p0, Lcom/jme3/math/ColorRGBA;->b:F

    add-float/2addr v2, v3

    iget v3, p1, Lcom/jme3/math/ColorRGBA;->a:F

    iget v4, p0, Lcom/jme3/math/ColorRGBA;->a:F

    add-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    .line 377
    return-object p0
.end method

.method public clone()Lcom/jme3/math/ColorRGBA;
    .locals 2

    .prologue
    .line 393
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/ColorRGBA;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 394
    :catch_0
    move-exception v0

    .line 395
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
    invoke-virtual {p0}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 426
    instance-of v3, p1, Lcom/jme3/math/ColorRGBA;

    if-nez v3, :cond_1

    .line 447
    :cond_0
    :goto_0
    return v1

    .line 430
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    .line 431
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 434
    check-cast v0, Lcom/jme3/math/ColorRGBA;

    .line 435
    .local v0, comp:Lcom/jme3/math/ColorRGBA;
    iget v3, p0, Lcom/jme3/math/ColorRGBA;->r:F

    iget v4, v0, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 438
    iget v3, p0, Lcom/jme3/math/ColorRGBA;->g:F

    iget v4, v0, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 441
    iget v3, p0, Lcom/jme3/math/ColorRGBA;->b:F

    iget v4, v0, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    .line 444
    iget v3, p0, Lcom/jme3/math/ColorRGBA;->a:F

    iget v4, v0, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 447
    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    return v0
.end method

.method public getBlue()F
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/jme3/math/ColorRGBA;->b:F

    return v0
.end method

.method public getGreen()F
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/jme3/math/ColorRGBA;->g:F

    return v0
.end method

.method public getRed()F
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 457
    const/16 v0, 0x25

    .line 458
    .local v0, hash:I
    iget v1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v1, v1, 0x559

    add-int/2addr v0, v1

    .line 459
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 460
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 461
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 462
    return v0
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

    .line 474
    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    .line 475
    .local v0, capsule:Lcom/jme3/export/InputCapsule;
    const-string v1, "r"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    .line 476
    const-string v1, "g"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/ColorRGBA;->g:F

    .line 477
    const-string v1, "b"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/ColorRGBA;->b:F

    .line 478
    const-string v1, "a"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/jme3/math/ColorRGBA;->a:F

    .line 479
    return-void
.end method

.method public set(FFFF)Lcom/jme3/math/ColorRGBA;
    .locals 0
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 179
    iput p1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    .line 180
    iput p2, p0, Lcom/jme3/math/ColorRGBA;->g:F

    .line 181
    iput p3, p0, Lcom/jme3/math/ColorRGBA;->b:F

    .line 182
    iput p4, p0, Lcom/jme3/math/ColorRGBA;->a:F

    .line 183
    return-object p0
.end method

.method public set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;
    .locals 1
    .parameter "rgba"

    .prologue
    const/4 v0, 0x0

    .line 194
    if-nez p1, :cond_0

    .line 195
    iput v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    .line 196
    iput v0, p0, Lcom/jme3/math/ColorRGBA;->g:F

    .line 197
    iput v0, p0, Lcom/jme3/math/ColorRGBA;->b:F

    .line 198
    iput v0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    .line 205
    :goto_0
    return-object p0

    .line 200
    :cond_0
    iget v0, p1, Lcom/jme3/math/ColorRGBA;->r:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->r:F

    .line 201
    iget v0, p1, Lcom/jme3/math/ColorRGBA;->g:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->g:F

    .line 202
    iget v0, p1, Lcom/jme3/math/ColorRGBA;->b:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->b:F

    .line 203
    iget v0, p1, Lcom/jme3/math/ColorRGBA;->a:F

    iput v0, p0, Lcom/jme3/math/ColorRGBA;->a:F

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Color["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->r:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jme3/math/ColorRGBA;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
