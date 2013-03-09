.class public Lcom/scalado/caps/filter/clearshot/AutoLevels;
.super Lcom/scalado/caps/Filter;
.source "AutoLevels.java"


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 3
    .parameter "session"

    .prologue
    const/4 v2, 0x1

    .line 21
    invoke-direct {p0, p1, v2}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 23
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/filter/clearshot/AutoLevels;->nativeApplyAutoLevels(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 24
    .local v0, error:I
    iput-boolean v2, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 25
    invoke-virtual {p0, v2}, Lcom/scalado/caps/filter/clearshot/AutoLevels;->setHasActiveFilter(Z)V

    .line 26
    return-void
.end method

.method private native nativeApplyAutoLevels(Lcom/scalado/caps/Decoder;)I
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/AutoLevels;->nativeApplyAutoLevels(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 32
    .local v0, error:I
    return-void
.end method

.method protected internalCommit()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
