.class public final Lcom/scalado/caps/filter/photoart/Cartoon;
.super Lcom/scalado/caps/Filter;
.source "Cartoon.java"


# instance fields
.field distinctEdges:Z


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 21
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 22
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/filter/photoart/Cartoon;->nativeBeginCartoon(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 23
    .local v0, error:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Cartoon;->setHasActiveFilter(Z)V

    .line 24
    return-void
.end method

.method private native nativeBeginCartoon(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndCartoon(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetCartoon(Lcom/scalado/caps/Decoder;Z)I
.end method


# virtual methods
.method public get()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/scalado/caps/filter/photoart/Cartoon;->distinctEdges:Z

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "decoder"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Cartoon;->nativeBeginCartoon(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 55
    .local v0, error:I
    iget-boolean v1, p0, Lcom/scalado/caps/filter/photoart/Cartoon;->distinctEdges:Z

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/photoart/Cartoon;->nativeSetCartoon(Lcom/scalado/caps/Decoder;Z)I

    move-result v0

    .line 56
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Cartoon;->nativeEndCartoon(Lcom/scalado/caps/Decoder;)I

    .line 57
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Cartoon;->nativeEndCartoon(Lcom/scalado/caps/Decoder;)I

    .line 62
    return-void
.end method

.method public set(Z)V
    .locals 2
    .parameter "distinctEdges"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/filter/photoart/Cartoon;->nativeSetCartoon(Lcom/scalado/caps/Decoder;Z)I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 41
    iput-boolean p1, p0, Lcom/scalado/caps/filter/photoart/Cartoon;->distinctEdges:Z

    .line 42
    return-void
.end method
