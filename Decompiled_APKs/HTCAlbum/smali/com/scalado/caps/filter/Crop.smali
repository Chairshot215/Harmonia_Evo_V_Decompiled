.class public final Lcom/scalado/caps/filter/Crop;
.super Lcom/scalado/caps/Filter;
.source "Crop.java"


# instance fields
.field private region:Lcom/scalado/base/Rect;


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    const/4 v1, 0x1

    .line 30
    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/filter/Crop;->region:Lcom/scalado/base/Rect;

    .line 31
    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/Crop;->setHasActiveFilter(Z)V

    .line 32
    return-void
.end method

.method private native nativeApplyCrop(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Rect;)I
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/scalado/caps/filter/Crop;->region:Lcom/scalado/base/Rect;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/scalado/caps/filter/Crop;->region:Lcom/scalado/base/Rect;

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/Crop;->nativeApplyCrop(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Rect;)I

    .line 73
    :cond_0
    return-void
.end method

.method protected internalCommit()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public set(Lcom/scalado/base/Rect;)V
    .locals 3
    .parameter "region"

    .prologue
    .line 48
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    if-nez p1, :cond_1

    .line 53
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Region cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/scalado/caps/filter/Crop;->region:Lcom/scalado/base/Rect;

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/Crop;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/scalado/caps/filter/Crop;->region:Lcom/scalado/base/Rect;

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/scalado/caps/filter/Crop;->nativeApplyCrop(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Rect;)I

    move-result v0

    .line 63
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 64
    iput-object p1, p0, Lcom/scalado/caps/filter/Crop;->region:Lcom/scalado/base/Rect;

    .line 65
    return-void
.end method
