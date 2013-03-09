.class public final Lcom/scalado/caps/filter/clearshot/ColorBoost;
.super Lcom/scalado/caps/Filter;
.source "ColorBoost.java"


# instance fields
.field private gain:F


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 21
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 12
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/scalado/caps/filter/clearshot/ColorBoost;->gain:F

    .line 23
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/filter/clearshot/ColorBoost;->nativeBeginColorBoost(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 24
    .local v0, error:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/clearshot/ColorBoost;->setHasActiveFilter(Z)V

    .line 25
    return-void
.end method

.method private native nativeBeginColorBoost(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndColorBoost(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetColorBoost(Lcom/scalado/caps/Decoder;F)I
.end method


# virtual methods
.method public get()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/scalado/caps/filter/clearshot/ColorBoost;->gain:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "decoder"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/ColorBoost;->nativeBeginColorBoost(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 61
    .local v0, error:I
    iget v1, p0, Lcom/scalado/caps/filter/clearshot/ColorBoost;->gain:F

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/clearshot/ColorBoost;->nativeSetColorBoost(Lcom/scalado/caps/Decoder;F)I

    move-result v0

    .line 62
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/ColorBoost;->nativeEndColorBoost(Lcom/scalado/caps/Decoder;)I

    .line 63
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/clearshot/ColorBoost;->nativeEndColorBoost(Lcom/scalado/caps/Decoder;)I

    .line 68
    return-void
.end method

.method public set(F)V
    .locals 4
    .parameter "gain"

    .prologue
    .line 36
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 37
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_0
    const/high16 v1, -0x4080

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x4120

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    .line 40
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal gain value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/scalado/caps/filter/clearshot/ColorBoost;->nativeSetColorBoost(Lcom/scalado/caps/Decoder;F)I

    move-result v0

    .line 44
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 45
    iput p1, p0, Lcom/scalado/caps/filter/clearshot/ColorBoost;->gain:F

    .line 46
    return-void
.end method
