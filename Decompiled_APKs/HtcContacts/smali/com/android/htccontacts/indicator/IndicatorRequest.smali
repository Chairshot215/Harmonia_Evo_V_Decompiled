.class public abstract Lcom/android/htccontacts/indicator/IndicatorRequest;
.super Ljava/lang/Object;
.source "IndicatorRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mIsExecuting:Z

.field protected mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/indicator/IndicatorResultListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mProcessor:Lcom/android/htccontacts/indicator/IndicatorProcessor;

.field protected mQueryQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;",
            ">;"
        }
    .end annotation
.end field

.field protected mResult:Lcom/android/htccontacts/indicator/IndicatorResult;

.field protected mShouldQuery:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "bundle"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mListener:Ljava/lang/ref/WeakReference;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mShouldQuery:Z

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    .line 47
    new-instance v0, Lcom/android/htccontacts/indicator/IndicatorResult;

    invoke-direct {v0, p3}, Lcom/android/htccontacts/indicator/IndicatorResult;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mResult:Lcom/android/htccontacts/indicator/IndicatorResult;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mIsExecuting:Z

    .line 49
    return-void
.end method

.method private changeExecutingStatus(Z)V
    .locals 1
    .parameter "isExecuting"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mIsExecuting:Z

    .line 77
    iget-boolean v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mIsExecuting:Z

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/IndicatorRequest;->onExecutingStatusChanged(Z)V

    .line 78
    return-void
.end method


# virtual methods
.method public changeBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "newBundle"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mResult:Lcom/android/htccontacts/indicator/IndicatorResult;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->setBundle(Landroid/os/Bundle;)V

    .line 129
    return-void
.end method

.method public abstract close()V
.end method

.method public getProcessor()Lcom/android/htccontacts/indicator/IndicatorProcessor;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mProcessor:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    return-object v0
.end method

.method public getResult()Lcom/android/htccontacts/indicator/IndicatorResult;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mResult:Lcom/android/htccontacts/indicator/IndicatorResult;

    return-object v0
.end method

.method protected onExecutingStatusChanged(Z)V
    .locals 0
    .parameter "isExecuting"

    .prologue
    .line 73
    return-void
.end method

.method public query()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 81
    iget-object v2, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/htccontacts/indicator/IndicatorRequest;->changeExecutingStatus(Z)V

    .line 89
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/IndicatorRequest;->getProcessor()Lcom/android/htccontacts/indicator/IndicatorProcessor;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/htccontacts/indicator/IndicatorProcessor;->isRunning:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    .local v1, runner:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;
    if-eqz v1, :cond_2

    .line 90
    iget-object v2, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mResult:Lcom/android/htccontacts/indicator/IndicatorResult;

    invoke-interface {v1, v2}, Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;->query(Lcom/android/htccontacts/indicator/IndicatorResult;)Lcom/android/htccontacts/indicator/IndicatorResult;

    .line 91
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/IndicatorRequest;->validateRequest()Z

    move-result v2

    if-nez v2, :cond_4

    .line 92
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/htccontacts/indicator/IndicatorRequest;->changeExecutingStatus(Z)V

    .line 93
    const-string v2, "IndicatorRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The running request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/IndicatorRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is no longer valid... requeue it!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/IndicatorRequest;->reQueueAll()V

    .line 95
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/IndicatorRequest;->getProcessor()Lcom/android/htccontacts/indicator/IndicatorProcessor;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->addRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v1           #runner:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;
    :catch_0
    move-exception v2

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/indicator/IndicatorResultListener;

    .line 110
    .local v0, listener:Lcom/android/htccontacts/indicator/IndicatorResultListener;
    if-eqz v0, :cond_3

    .line 111
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/IndicatorRequest;->validateRequest()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 112
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/IndicatorRequest;->getResult()Lcom/android/htccontacts/indicator/IndicatorResult;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/htccontacts/indicator/IndicatorResultListener;->onIndicatorResult(Lcom/android/htccontacts/indicator/IndicatorResult;)V

    .line 120
    :cond_3
    :goto_2
    invoke-direct {p0, v5}, Lcom/android/htccontacts/indicator/IndicatorRequest;->changeExecutingStatus(Z)V

    goto :goto_0

    .line 98
    .end local v0           #listener:Lcom/android/htccontacts/indicator/IndicatorResultListener;
    .restart local v1       #runner:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;
    :cond_4
    :try_start_1
    invoke-interface {v1}, Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;->toPublishResult()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/indicator/IndicatorResultListener;

    .line 100
    .restart local v0       #listener:Lcom/android/htccontacts/indicator/IndicatorResultListener;
    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/IndicatorRequest;->getResult()Lcom/android/htccontacts/indicator/IndicatorResult;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/htccontacts/indicator/IndicatorResultListener;->onPublishResult(Lcom/android/htccontacts/indicator/IndicatorResult;)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 115
    .end local v1           #runner:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;
    :cond_5
    const-string v2, "IndicatorRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The running request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/IndicatorRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is no longer valid... requeue it!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/IndicatorRequest;->reQueueAll()V

    .line 117
    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/IndicatorRequest;->getProcessor()Lcom/android/htccontacts/indicator/IndicatorProcessor;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->addRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V

    goto :goto_2
.end method

.method public reQueueAll()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method protected reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z
    .locals 2
    .parameter "queryRunner"

    .prologue
    const/4 v0, 0x0

    .line 140
    iget-object v1, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mProcessor:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-nez v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mProcessor:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v0, p0}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->addRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V

    .line 151
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setProcessor(Lcom/android/htccontacts/indicator/IndicatorProcessor;)V
    .locals 0
    .parameter "processor"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mProcessor:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    .line 53
    return-void
.end method

.method public setShouldQuery(Z)V
    .locals 0
    .parameter "shouldQuery"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mShouldQuery:Z

    .line 61
    return-void
.end method

.method public shouldQuery()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mShouldQuery:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    const-string v0, ""

    return-object v0
.end method

.method protected validateRequest()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method
