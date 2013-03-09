.class public final Lcom/scalado/caps/filter/Crop;
.super Lcom/scalado/caps/Filter;
.source "Crop.java"


# instance fields
.field private region:Lcom/scalado/base/Rect;


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/filter/Crop;->region:Lcom/scalado/base/Rect;

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/Crop;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeApplyCrop(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Rect;)I
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/filter/Crop;->region:Lcom/scalado/base/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/caps/filter/Crop;->region:Lcom/scalado/base/Rect;

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/Crop;->nativeApplyCrop(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Rect;)I

    :cond_0
    return-void
.end method

.method protected internalCommit()V
    .locals 0

    return-void
.end method

.method public set(Lcom/scalado/base/Rect;)V
    .locals 3

    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Region cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/scalado/caps/filter/Crop;->region:Lcom/scalado/base/Rect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/Crop;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scalado/caps/filter/Crop;->region:Lcom/scalado/base/Rect;

    :cond_2
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/scalado/caps/filter/Crop;->nativeApplyCrop(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Rect;)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput-object p1, p0, Lcom/scalado/caps/filter/Crop;->region:Lcom/scalado/base/Rect;

    return-void
.end method
