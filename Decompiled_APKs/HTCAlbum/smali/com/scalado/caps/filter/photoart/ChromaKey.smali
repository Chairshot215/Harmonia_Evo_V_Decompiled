.class public final Lcom/scalado/caps/filter/photoart/ChromaKey;
.super Lcom/scalado/caps/Filter;
.source "ChromaKey.java"


# instance fields
.field private invertAlfa:Z

.field private key:Lcom/scalado/base/Color;


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    const/4 v1, 0x1

    .line 25
    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/caps/filter/photoart/ChromaKey;->invertAlfa:Z

    .line 26
    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/ChromaKey;->setHasActiveFilter(Z)V

    .line 27
    return-void
.end method

.method private native nativeApplyChromaKey(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;Z)I
.end method


# virtual methods
.method public getInvertAlpha()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/scalado/caps/filter/photoart/ChromaKey;->invertAlfa:Z

    return v0
.end method

.method public getKey()Lcom/scalado/base/Color;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/ChromaKey;->key:Lcom/scalado/base/Color;

    invoke-virtual {v0}, Lcom/scalado/base/Color;->clone()Lcom/scalado/base/Color;

    move-result-object v0

    return-object v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 3
    .parameter "decoder"

    .prologue
    .line 86
    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/ChromaKey;->key:Lcom/scalado/base/Color;

    iget-boolean v2, p0, Lcom/scalado/caps/filter/photoart/ChromaKey;->invertAlfa:Z

    invoke-direct {p0, p1, v1, v2}, Lcom/scalado/caps/filter/photoart/ChromaKey;->nativeApplyChromaKey(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;Z)I

    move-result v0

    .line 87
    .local v0, error:I
    return-void
.end method

.method protected internalCommit()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public set(Lcom/scalado/base/Color;Z)V
    .locals 3
    .parameter "key"
    .parameter "invertAlfa"

    .prologue
    .line 46
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_0
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-eqz v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/ChromaKey;->removeLastFilter(Lcom/scalado/caps/Decoder;)V

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/scalado/caps/filter/photoart/ChromaKey;->nativeApplyChromaKey(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;Z)I

    move-result v0

    .line 56
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 57
    iput-boolean p2, p0, Lcom/scalado/caps/filter/photoart/ChromaKey;->invertAlfa:Z

    .line 58
    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/ChromaKey;->key:Lcom/scalado/base/Color;

    .line 59
    return-void
.end method
