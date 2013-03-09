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
    .parameter "session"
    .parameter "isApplyFilter"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    .line 37
    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 38
    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isApplyFilter:Z

    .line 41
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45
    :cond_0
    iget-boolean v0, p1, Lcom/scalado/caps/Session;->hasActiveFilter:Z

    if-eqz v0, :cond_1

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Filter already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iput-object p1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    .line 49
    iput-boolean p2, p0, Lcom/scalado/caps/Filter;->isApplyFilter:Z

    .line 50
    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Filter has already been commited. Call RemoveLastFilter instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/scalado/caps/Filter;->internalCommit()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    .line 96
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/scalado/caps/Session;->hasActiveFilter:Z

    .line 98
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/caps/Decoder;->removeLastFilter()V

    .line 99
    return-void
.end method

.method final apply(Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Lcom/scalado/caps/Filter;->internalApply(Lcom/scalado/caps/Decoder;)V

    .line 106
    return-void
.end method

.method public final commit()V
    .locals 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_2

    .line 67
    :cond_0
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Filter must be set at least once before committing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Filter has already been commited"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/scalado/caps/Filter;->internalCommit()V

    .line 77
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0, p0}, Lcom/scalado/caps/Session;->pushFilter(Lcom/scalado/caps/Filter;)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    .line 79
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/scalado/caps/Session;->hasActiveFilter:Z

    .line 80
    return-void
.end method

.method protected abstract internalApply(Lcom/scalado/caps/Decoder;)V
.end method

.method protected abstract internalCommit()V
.end method

.method public isSet()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    return v0
.end method

.method protected final removeLastFilter(Lcom/scalado/caps/Decoder;)V
    .locals 0
    .parameter "decoder"

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/scalado/caps/Decoder;->removeLastFilter()V

    .line 139
    return-void
.end method

.method protected setHasActiveFilter(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    iput-boolean p1, v0, Lcom/scalado/caps/Session;->hasActiveFilter:Z

    .line 124
    return-void
.end method
