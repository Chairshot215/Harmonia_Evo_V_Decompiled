.class public final Lcom/scalado/caps/filter/photoart/Brightness;
.super Lcom/scalado/caps/Filter;
.source "Brightness.java"


# instance fields
.field private brightness:F


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 24
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 26
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/filter/photoart/Brightness;->nativeBeginBrightness(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 27
    .local v0, error:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Brightness;->setHasActiveFilter(Z)V

    .line 28
    return-void
.end method

.method private native nativeBeginBrightness(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndBrightness(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetBrightness(Lcom/scalado/caps/Decoder;F)I
.end method


# virtual methods
.method public get()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Brightness;->brightness:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "decoder"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Brightness;->nativeBeginBrightness(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 63
    .local v0, error:I
    iget v1, p0, Lcom/scalado/caps/filter/photoart/Brightness;->brightness:F

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/photoart/Brightness;->nativeSetBrightness(Lcom/scalado/caps/Decoder;F)I

    move-result v0

    .line 64
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Brightness;->nativeEndBrightness(Lcom/scalado/caps/Decoder;)I

    .line 65
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Brightness;->nativeEndBrightness(Lcom/scalado/caps/Decoder;)I

    .line 70
    return-void
.end method

.method public set(F)V
    .locals 3
    .parameter "brightness"

    .prologue
    .line 40
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 41
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/scalado/caps/filter/photoart/Brightness;->nativeSetBrightness(Lcom/scalado/caps/Decoder;F)I

    move-result v0

    .line 46
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 47
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Brightness;->brightness:F

    .line 48
    return-void
.end method
