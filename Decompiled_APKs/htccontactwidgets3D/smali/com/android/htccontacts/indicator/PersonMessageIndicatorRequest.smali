.class public Lcom/android/htccontacts/indicator/PersonMessageIndicatorRequest;
.super Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
.source "PersonMessageIndicatorRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "bundle"
    .parameter "rawIds"

    .prologue
    const/4 v3, 0x1

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;-><init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;)V

    .line 50
    iput-boolean v3, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mShouldQuery:Z

    .line 51
    iput-object p4, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawIds:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mHandler:Landroid/os/Handler;

    .line 55
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/htccontacts/indicator/PersonMessageIndicatorRequest;->UNREAD_MESSAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonMessageIndicatorRequest;->getUnreadMessageObserver()Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 66
    return-void
.end method


# virtual methods
.method public changePersonId(Ljava/lang/String;)V
    .locals 1
    .parameter "rawIds"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawIds:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/PersonMessageIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 46
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonMessageIndicatorRequest;->getUnreadMessageObserver()Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 35
    return-void
.end method

.method public reQueueAll()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadMessageQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/PersonMessageIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 40
    return-void
.end method
