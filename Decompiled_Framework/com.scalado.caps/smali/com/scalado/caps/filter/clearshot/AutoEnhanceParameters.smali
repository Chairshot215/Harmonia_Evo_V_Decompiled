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

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f00

    const/16 v1, 0xff

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    iput-boolean v3, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    iput-boolean v4, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoSourceWhite:Z

    new-instance v0, Lcom/scalado/base/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/scalado/base/Color;-><init>(IIII)V

    iput-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->sourceWhite:Lcom/scalado/base/Color;

    new-instance v0, Lcom/scalado/base/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/scalado/base/Color;-><init>(IIII)V

    iput-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->targetWhite:Lcom/scalado/base/Color;

    iput-boolean v3, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    iput-boolean v4, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoContrast:Z

    iput v5, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->contrast:F

    iput v5, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->brightness:F

    iput-boolean v3, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    iput-boolean v4, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoLocalBoost:Z

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->gamma:F

    iput v2, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->darkContrast:F

    iput v2, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->brightContrast:F

    iput v2, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->sensitivityLevel:F

    return-void
.end method

.method private verifyBrightContrast(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3f7d70a4

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

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

    :cond_1
    return-void
.end method

.method private verifyBrightness(F)V
    .locals 3

    const/high16 v0, -0x4080

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

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

    :cond_1
    return-void
.end method

.method private verifyContrast(F)V
    .locals 3

    const/high16 v0, -0x4080

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

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

    :cond_1
    return-void
.end method

.method private verifyDarkContrast(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3f7d70a4

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

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

    :cond_1
    return-void
.end method

.method private verifyGamma(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const v0, 0x3c23d70a

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x4120

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

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

    :cond_1
    return-void
.end method

.method private verifySensitivityLevel(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

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

    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;
    .locals 2

    new-instance v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    invoke-direct {v0}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;-><init>()V

    iget-boolean v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    iput-boolean v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    iget-boolean v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoSourceWhite:Z

    iput-boolean v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoSourceWhite:Z

    iget-object v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->sourceWhite:Lcom/scalado/base/Color;

    iput-object v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->sourceWhite:Lcom/scalado/base/Color;

    iget-object v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->targetWhite:Lcom/scalado/base/Color;

    iput-object v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->targetWhite:Lcom/scalado/base/Color;

    iget-boolean v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    iput-boolean v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    iget-boolean v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoContrast:Z

    iput-boolean v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoContrast:Z

    iget v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->contrast:F

    iput v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->contrast:F

    iget v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->brightness:F

    iput v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->brightness:F

    iget-boolean v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    iput-boolean v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    iget-boolean v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoLocalBoost:Z

    iput-boolean v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoLocalBoost:Z

    iget v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->gamma:F

    iput v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->gamma:F

    iget v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->darkContrast:F

    iput v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->darkContrast:F

    iget v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->brightContrast:F

    iput v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->brightContrast:F

    iget v1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->sensitivityLevel:F

    iput v1, v0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->sensitivityLevel:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->clone()Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getApplyContrast()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    return v0
.end method

.method public final getApplyLocalBoost()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    return v0
.end method

.method public final getApplyWhiteBalance()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    return v0
.end method

.method public final getAutoContrast()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoContrast:Z

    return v0
.end method

.method public final getAutoLocalBoost()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoLocalBoost:Z

    return v0
.end method

.method public final getAutoSourceWhite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoSourceWhite:Z

    return v0
.end method

.method public final getBrightContrast()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->brightContrast:F

    return v0
.end method

.method public final getBrightness()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->brightness:F

    return v0
.end method

.method public final getContrast()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->contrast:F

    return v0
.end method

.method public final getDarkContrast()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->darkContrast:F

    return v0
.end method

.method public final getGamma()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->gamma:F

    return v0
.end method

.method public final getSensitivityLevel()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->sensitivityLevel:F

    return v0
.end method

.method public final getSourceWhite()Lcom/scalado/base/Color;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->sourceWhite:Lcom/scalado/base/Color;

    return-object v0
.end method

.method public final getTargetWhite()Lcom/scalado/base/Color;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->targetWhite:Lcom/scalado/base/Color;

    return-object v0
.end method

.method public setAllActive()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    return-void
.end method

.method public setAllInactive()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    return-void
.end method

.method public setApplyContrast(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    return-void
.end method

.method public setApplyLocalBoost(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    return-void
.end method

.method public setApplyWhiteBalance(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    return-void
.end method

.method public setAutoContrast(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoContrast:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    return-void
.end method

.method public setAutoLocalBoost(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoLocalBoost:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    return-void
.end method

.method public setAutoSourceWhite(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoSourceWhite:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    return-void
.end method

.method public setBrightContrast(F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->verifyBrightContrast(F)V

    iput p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->brightContrast:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoLocalBoost:Z

    return-void
.end method

.method public setBrightness(F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->verifyBrightness(F)V

    iput p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->brightness:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoContrast:Z

    return-void
.end method

.method public setContrast(F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->verifyContrast(F)V

    iput p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->contrast:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoContrast:Z

    return-void
.end method

.method public setDarkContrast(F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->verifyDarkContrast(F)V

    iput p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->darkContrast:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoLocalBoost:Z

    return-void
.end method

.method public setFullAuto()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoSourceWhite:Z

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyContrast:Z

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoContrast:Z

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoLocalBoost:Z

    return-void
.end method

.method public setGamma(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->verifyGamma(F)V

    iput p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->gamma:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoLocalBoost:Z

    return-void
.end method

.method public setSensitivityLevel(F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->verifySensitivityLevel(F)V

    iput p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->sensitivityLevel:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyLocalBoost:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoLocalBoost:Z

    return-void
.end method

.method public setSourceWhite(Lcom/scalado/base/Color;)V
    .locals 1

    iput-object p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->sourceWhite:Lcom/scalado/base/Color;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->autoSourceWhite:Z

    return-void
.end method

.method public setTargetWhite(Lcom/scalado/base/Color;)V
    .locals 1

    iput-object p1, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->targetWhite:Lcom/scalado/base/Color;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/filter/clearshot/AutoEnhanceParameters;->applyWhiteBalance:Z

    return-void
.end method
