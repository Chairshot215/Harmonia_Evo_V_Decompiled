.class public final Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;
.super Lcom/scalado/caps/PeerBase;
.source "AutoEnhanceParameters.java"


# instance fields
.field private applyContrast:Z

.field private applyLocalBoost:Z

.field private applyWhiteBalance:Z

.field private autoContrast:Z

.field private autoLocalBoost:Z

.field private autoSourceWhite:Z

.field private brightContrast:F

.field private brightness:F

.field private contrast:F

.field private darkContrast:F

.field private gamma:F

.field private sensitivityLevel:F

.field private sourceWhite:Lcom/scalado/base/Color;

.field private targetWhite:Lcom/scalado/base/Color;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f00

    const/16 v1, 0xff

    .line 44
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 45
    iput-boolean v3, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    .line 46
    iput-boolean v4, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoSourceWhite:Z

    .line 47
    new-instance v0, Lcom/scalado/base/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/scalado/base/Color;-><init>(IIII)V

    iput-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->sourceWhite:Lcom/scalado/base/Color;

    .line 48
    new-instance v0, Lcom/scalado/base/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/scalado/base/Color;-><init>(IIII)V

    iput-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->targetWhite:Lcom/scalado/base/Color;

    .line 49
    iput-boolean v3, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    .line 50
    iput-boolean v4, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoContrast:Z

    .line 51
    iput v5, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->contrast:F

    .line 52
    iput v5, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->brightness:F

    .line 53
    iput-boolean v3, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    .line 54
    iput-boolean v4, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoLocalBoost:Z

    .line 55
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->gamma:F

    .line 56
    iput v2, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->darkContrast:F

    .line 57
    iput v2, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->brightContrast:F

    .line 58
    iput v2, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->sensitivityLevel:F

    .line 59
    return-void
.end method

.method private verifyBrightContrast(F)V
    .locals 3
    .parameter "value"

    .prologue
    .line 424
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3f7d70a4

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 425
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal Bright Contrast value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_1
    return-void
.end method

.method private verifyBrightness(F)V
    .locals 3
    .parameter "value"

    .prologue
    .line 282
    const/high16 v0, -0x4080

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal brightness value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    return-void
.end method

.method private verifyContrast(F)V
    .locals 3
    .parameter "value"

    .prologue
    .line 251
    const/high16 v0, -0x4080

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal contrast value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1
    return-void
.end method

.method private verifyDarkContrast(F)V
    .locals 3
    .parameter "value"

    .prologue
    .line 392
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3f7d70a4

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal DarkContrast value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_1
    return-void
.end method

.method private verifyGamma(F)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 361
    const v0, 0x3c23d70a

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x4120

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal gamma value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1
    return-void
.end method

.method private verifySensitivityLevel(F)V
    .locals 3
    .parameter "value"

    .prologue
    .line 455
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 456
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal SensitivityLevel value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;
    .locals 2

    .prologue
    .line 463
    new-instance v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    invoke-direct {v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;-><init>()V

    .line 464
    .local v0, clone:Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;
    iget-boolean v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    iput-boolean v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    .line 465
    iget-boolean v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoSourceWhite:Z

    iput-boolean v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoSourceWhite:Z

    .line 466
    iget-object v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->sourceWhite:Lcom/scalado/base/Color;

    iput-object v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->sourceWhite:Lcom/scalado/base/Color;

    .line 467
    iget-object v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->targetWhite:Lcom/scalado/base/Color;

    iput-object v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->targetWhite:Lcom/scalado/base/Color;

    .line 468
    iget-boolean v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    iput-boolean v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    .line 469
    iget-boolean v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoContrast:Z

    iput-boolean v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoContrast:Z

    .line 470
    iget v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->contrast:F

    iput v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->contrast:F

    .line 471
    iget v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->brightness:F

    iput v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->brightness:F

    .line 472
    iget-boolean v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    iput-boolean v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    .line 473
    iget-boolean v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoLocalBoost:Z

    iput-boolean v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoLocalBoost:Z

    .line 474
    iget v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->gamma:F

    iput v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->gamma:F

    .line 475
    iget v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->darkContrast:F

    iput v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->darkContrast:F

    .line 476
    iget v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->brightContrast:F

    iput v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->brightContrast:F

    .line 477
    iget v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->sensitivityLevel:F

    iput v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->sensitivityLevel:F

    .line 478
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->clone()Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getApplyContrast()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    return v0
.end method

.method public final getApplyLocalBoost()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    return v0
.end method

.method public final getApplyWhiteBalance()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    return v0
.end method

.method public final getAutoContrast()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoContrast:Z

    return v0
.end method

.method public final getAutoLocalBoost()Z
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoLocalBoost:Z

    return v0
.end method

.method public final getAutoSourceWhite()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoSourceWhite:Z

    return v0
.end method

.method public final getBrightContrast()F
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->brightContrast:F

    return v0
.end method

.method public final getBrightness()F
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->brightness:F

    return v0
.end method

.method public final getContrast()F
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->contrast:F

    return v0
.end method

.method public final getDarkContrast()F
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->darkContrast:F

    return v0
.end method

.method public final getGamma()F
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->gamma:F

    return v0
.end method

.method public final getSensitivityLevel()F
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->sensitivityLevel:F

    return v0
.end method

.method public final getSourceWhite()Lcom/scalado/base/Color;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->sourceWhite:Lcom/scalado/base/Color;

    return-object v0
.end method

.method public final getTargetWhite()Lcom/scalado/base/Color;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->targetWhite:Lcom/scalado/base/Color;

    return-object v0
.end method

.method public setAllActive()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    .line 79
    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    .line 80
    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    .line 81
    return-void
.end method

.method public setAllInactive()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    .line 88
    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    .line 89
    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    .line 90
    return-void
.end method

.method public setApplyContrast(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    .line 198
    return-void
.end method

.method public setApplyLocalBoost(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    .line 307
    return-void
.end method

.method public setApplyWhiteBalance(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    .line 111
    return-void
.end method

.method public setAutoContrast(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoContrast:Z

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    .line 224
    return-void
.end method

.method public setAutoLocalBoost(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoLocalBoost:Z

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    .line 332
    return-void
.end method

.method public setAutoSourceWhite(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoSourceWhite:Z

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    .line 134
    return-void
.end method

.method public setBrightContrast(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->verifyBrightContrast(F)V

    .line 418
    iput p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->brightContrast:F

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoLocalBoost:Z

    .line 421
    return-void
.end method

.method public setBrightness(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->verifyBrightness(F)V

    .line 276
    iput p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->brightness:F

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoContrast:Z

    .line 279
    return-void
.end method

.method public setContrast(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->verifyContrast(F)V

    .line 245
    iput p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->contrast:F

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoContrast:Z

    .line 248
    return-void
.end method

.method public setDarkContrast(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->verifyDarkContrast(F)V

    .line 386
    iput p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->darkContrast:F

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoLocalBoost:Z

    .line 389
    return-void
.end method

.method public setFullAuto()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    .line 67
    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoSourceWhite:Z

    .line 68
    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    .line 69
    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoContrast:Z

    .line 70
    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    .line 71
    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoLocalBoost:Z

    .line 72
    return-void
.end method

.method public setGamma(F)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->verifyGamma(F)V

    .line 355
    iput p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->gamma:F

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoLocalBoost:Z

    .line 358
    return-void
.end method

.method public setSensitivityLevel(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->verifySensitivityLevel(F)V

    .line 449
    iput p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->sensitivityLevel:F

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoLocalBoost:Z

    .line 452
    return-void
.end method

.method public setSourceWhite(Lcom/scalado/base/Color;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->sourceWhite:Lcom/scalado/base/Color;

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoSourceWhite:Z

    .line 156
    return-void
.end method

.method public setTargetWhite(Lcom/scalado/base/Color;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->targetWhite:Lcom/scalado/base/Color;

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    .line 177
    return-void
.end method
