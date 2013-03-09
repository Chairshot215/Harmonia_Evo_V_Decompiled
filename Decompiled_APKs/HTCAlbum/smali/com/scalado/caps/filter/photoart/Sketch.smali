.class public final Lcom/scalado/caps/filter/photoart/Sketch;
.super Lcom/scalado/caps/Filter;
.source "Sketch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/filter/photoart/Sketch$Mode;
    }
.end annotation


# instance fields
.field private mode:Lcom/scalado/caps/filter/photoart/Sketch$Mode;


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 37
    sget-object v0, Lcom/scalado/caps/filter/photoart/Sketch$Mode;->COLOR:Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Sketch;->mode:Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    .line 50
    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Sketch;->setHasActiveFilter(Z)V

    .line 51
    return-void
.end method

.method private native nativeApplySketch(Lcom/scalado/caps/Decoder;I)I
.end method


# virtual methods
.method public getMode()Lcom/scalado/caps/filter/photoart/Sketch$Mode;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Sketch;->mode:Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    return-object v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "decoder"

    .prologue
    .line 89
    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Sketch;->mode:Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    iget v1, v1, Lcom/scalado/caps/filter/photoart/Sketch$Mode;->value:I

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/photoart/Sketch;->nativeApplySketch(Lcom/scalado/caps/Decoder;I)I

    move-result v0

    .line 90
    .local v0, error:I
    return-void
.end method

.method protected internalCommit()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public set(Lcom/scalado/caps/filter/photoart/Sketch$Mode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 63
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_0
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Sketch;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    iget v2, p1, Lcom/scalado/caps/filter/photoart/Sketch$Mode;->value:I

    invoke-direct {p0, v1, v2}, Lcom/scalado/caps/filter/photoart/Sketch;->nativeApplySketch(Lcom/scalado/caps/Decoder;I)I

    move-result v0

    .line 73
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 74
    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Sketch;->mode:Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    .line 75
    return-void
.end method
