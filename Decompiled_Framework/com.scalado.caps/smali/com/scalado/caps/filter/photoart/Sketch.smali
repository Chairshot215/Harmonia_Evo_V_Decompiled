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

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    sget-object v0, Lcom/scalado/caps/filter/photoart/Sketch$Mode;->COLOR:Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Sketch;->mode:Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Sketch;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeApplySketch(Lcom/scalado/caps/Decoder;I)I
.end method


# virtual methods
.method public getMode()Lcom/scalado/caps/filter/photoart/Sketch$Mode;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Sketch;->mode:Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    return-object v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2

    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Sketch;->mode:Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    iget v1, v1, Lcom/scalado/caps/filter/photoart/Sketch$Mode;->value:I

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/photoart/Sketch;->nativeApplySketch(Lcom/scalado/caps/Decoder;I)I

    move-result v0

    return-void
.end method

.method protected internalCommit()V
    .locals 0

    return-void
.end method

.method public set(Lcom/scalado/caps/filter/photoart/Sketch$Mode;)V
    .locals 3

    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Sketch;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    :cond_1
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    iget v2, p1, Lcom/scalado/caps/filter/photoart/Sketch$Mode;->value:I

    invoke-direct {p0, v1, v2}, Lcom/scalado/caps/filter/photoart/Sketch;->nativeApplySketch(Lcom/scalado/caps/Decoder;I)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Sketch;->mode:Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    return-void
.end method
