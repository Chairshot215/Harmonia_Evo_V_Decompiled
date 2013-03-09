.class public Lcom/android/htccontacts/indicator/PersonMailIndicatorRequest;
.super Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
.source "PersonMailIndicatorRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "bundle"
    .parameter "rawIds"

    .prologue
    const/4 v3, 0x1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;-><init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;)V

    .line 47
    iput-boolean v3, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mShouldQuery:Z

    .line 48
    iput-object p4, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawIds:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mHandler:Landroid/os/Handler;

    .line 52
    iget-object v0, p0, Lcom/android/htccontacts/indicator/IndicatorRequest;->mQueryQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "content://mail/allmessages_with_account"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonMailIndicatorRequest;->getUnreadEmailObserver()Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    return-void
.end method


# virtual methods
.method public changePersonId(Ljava/lang/String;)V
    .locals 1
    .parameter "rawIds"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mRawIds:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/PersonMailIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 43
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/htccontacts/indicator/PersonMailIndicatorRequest;->getUnreadEmailObserver()Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 32
    return-void
.end method

.method public reQueueAll()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->mUnreadEmailQuery:Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/indicator/PersonMailIndicatorRequest;->reQueueQuery(Lcom/android/htccontacts/indicator/IndicatorRequest$QueryRunner;)Z

    .line 37
    return-void
.end method
