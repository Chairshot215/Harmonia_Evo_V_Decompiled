.class public Lcom/htc/launcher/widget/EaseOutCubic;
.super Ljava/lang/Object;
.source "EaseOutCubic.java"

# interfaces
.implements Lcom/htc/launcher/widget/EasingFunction;


# instance fields
.field private mEaseOutCoefficients:[F

.field mLong:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/launcher/widget/EaseOutCubic;-><init>(Z)V

    .line 24
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .parameter "longDuration"

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/launcher/widget/EaseOutCubic;->mEaseOutCoefficients:[F

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/launcher/widget/EaseOutCubic;->mLong:Z

    .line 28
    iput-boolean p1, p0, Lcom/htc/launcher/widget/EaseOutCubic;->mLong:Z

    .line 30
    iget-boolean v0, p0, Lcom/htc/launcher/widget/EaseOutCubic;->mLong:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsLong:[F

    :goto_0
    iget-object v1, p0, Lcom/htc/launcher/widget/EaseOutCubic;->mEaseOutCoefficients:[F

    iget-object v2, p0, Lcom/htc/launcher/widget/EaseOutCubic;->mEaseOutCoefficients:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    return-void

    .line 30
    :cond_0
    sget-object v0, Lcom/htc/launcher/settings/SettingUtil;->sEaseOutCoefficientsShort:[F

    goto :goto_0
.end method


# virtual methods
.method public currentResult(FFFFF)F
    .locals 5
    .parameter "v0"
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 36
    div-float/2addr p2, p5

    .line 37
    mul-float v1, p2, p2

    .line 38
    .local v1, ts:F
    mul-float v0, v1, p2

    .line 39
    .local v0, tc:F
    iget-object v2, p0, Lcom/htc/launcher/widget/EaseOutCubic;->mEaseOutCoefficients:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    mul-float/2addr v2, v0

    mul-float/2addr v2, v1

    iget-object v3, p0, Lcom/htc/launcher/widget/EaseOutCubic;->mEaseOutCoefficients:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    mul-float/2addr v3, v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/launcher/widget/EaseOutCubic;->mEaseOutCoefficients:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/launcher/widget/EaseOutCubic;->mEaseOutCoefficients:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/htc/launcher/widget/EaseOutCubic;->mEaseOutCoefficients:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    mul-float/2addr v2, p4

    add-float/2addr v2, p3

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/htc/launcher/widget/EaseOutCubic;->mLong:Z

    if-eqz v0, :cond_0

    const-string v0, "Long"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Short"

    goto :goto_0
.end method
