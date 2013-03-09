.class public abstract Lcom/scalado/caps/Filter;
.super Lcom/scalado/caps/PeerBase;
.source "Filter.java"


# instance fields
.field private isApplyFilter:Z

.field protected isCommitted:Z

.field protected isSet:Z

.field protected session:Lcom/scalado/caps/Session;


# direct methods
.method protected constructor <init>(Lcom/scalado/caps/Session;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isApplyFilter:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-boolean v0, p1, Lcom/scalado/caps/Session;->hasActiveFilter:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Filter already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    iput-boolean p2, p0, Lcom/scalado/caps/Filter;->isApplyFilter:Z

    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 2

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Filter has already been commited. Call RemoveLastFilter instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/scalado/caps/Filter;->internalCommit()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/scalado/caps/Session;->hasActiveFilter:Z

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/caps/Decoder;->removeLastFilter()V

    return-void
.end method

.method final apply(Lcom/scalado/caps/Decoder;)V
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/scalado/caps/Filter;->internalApply(Lcom/scalado/caps/Decoder;)V

    return-void
.end method

.method public final commit()V
    .locals 2

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Filter must be set at least once before committing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Filter has already been commited"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/scalado/caps/Filter;->internalCommit()V

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0, p0}, Lcom/scalado/caps/Session;->pushFilter(Lcom/scalado/caps/Filter;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/scalado/caps/Session;->hasActiveFilter:Z

    return-void
.end method

.method protected abstract internalApply(Lcom/scalado/caps/Decoder;)V
.end method

.method protected abstract internalCommit()V
.end method

.method public isSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    return v0
.end method

.method protected final removeLastFilter(Lcom/scalado/caps/Decoder;)V
    .locals 0

    invoke-virtual {p1}, Lcom/scalado/caps/Decoder;->removeLastFilter()V

    return-void
.end method

.method protected setHasActiveFilter(Z)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    iput-boolean p1, v0, Lcom/scalado/caps/Session;->hasActiveFilter:Z

    return-void
.end method
