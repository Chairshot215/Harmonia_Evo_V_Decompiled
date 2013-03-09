.class public Lcom/android/internal/telephony/SmsSegmentsController;
.super Ljava/lang/Object;
.source "SmsSegmentsController.java"


# static fields
.field public static final MAX_REQUEST_COUNT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SMS"

.field private static sInstance:Lcom/android/internal/telephony/SmsSegmentsController;


# instance fields
.field private mRemainingMessages:I

.field private mReqeustQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/SmsSegmentsController;
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/SmsSegmentsController;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsSegmentsController;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SmsSegmentsController]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addAllRequestInqueue(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;)Z"
        }
    .end annotation

    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addRequestInQueue(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2

    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkInSegment()Z
    .locals 3

    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkInSegment> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsSegmentsController;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public checkOutSegment()V
    .locals 3

    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkOutSegment> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SmsSegmentsController;->logd(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearRequest()V
    .locals 2

    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAvailable()I
    .locals 2

    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    rsub-int/lit8 v0, v0, 0x7

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRemainingMsgInRIL()I
    .locals 2

    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequest(I)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 2

    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequestQueueSize()I
    .locals 2

    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasAllRequestDone()Z
    .locals 2

    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mRemainingMessages:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasRequestInQueue()Z
    .locals 2

    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSendSegment()V
    .locals 0

    return-void
.end method

.method public removeRequest(I)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 2

    sget-object v1, Lcom/android/internal/telephony/SmsSegmentsController;->sInstance:Lcom/android/internal/telephony/SmsSegmentsController;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsSegmentsController;->mReqeustQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
