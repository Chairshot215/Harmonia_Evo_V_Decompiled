.class public Lcom/htc/android/mail/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Request"


# instance fields
.field public command:I

.field public filereference:Ljava/lang/String;

.field public isStopOnLeave:Z

.field public isStopped:Z

.field public isWifiActiveMode:Z

.field private mAccountId:J

.field private mCallbackIfNotAdded:Ljava/lang/Runnable;

.field private mCollections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Collection;",
            ">;"
        }
    .end annotation
.end field

.field public messageWhat:I

.field public messageWhatError:I

.field public messageWhatStart:I

.field public parameter:Landroid/os/Bundle;

.field public removeable:Z

.field public returnObject:Ljava/lang/Object;

.field public serviceStartId:I

.field public weakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public weakProgressHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v2, p0, Lcom/htc/android/mail/Request;->messageWhatStart:I

    .line 17
    iput v2, p0, Lcom/htc/android/mail/Request;->messageWhatError:I

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/Request;->mAccountId:J

    .line 24
    iput v2, p0, Lcom/htc/android/mail/Request;->serviceStartId:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/Request;->mCollections:Ljava/util/ArrayList;

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/Request;->removeable:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/Request;->filereference:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public callbackIfNotAdded()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/android/mail/Request;->mCallbackIfNotAdded:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/htc/android/mail/Request;->mCallbackIfNotAdded:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 99
    :cond_0
    return-void
.end method

.method public getAccount()Lcom/htc/android/mail/Account;
    .locals 5

    .prologue
    .line 71
    iget-wide v1, p0, Lcom/htc/android/mail/Request;->mAccountId:J

    invoke-static {v1, v2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 72
    .local v0, account:Lcom/htc/android/mail/Account;
    if-nez v0, :cond_0

    .line 74
    const-string v1, "Request"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/android/mail/Request;->mAccountId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    .line 77
    .end local v0           #account:Lcom/htc/android/mail/Account;
    :cond_0
    return-object v0
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/htc/android/mail/Request;->mAccountId:J

    return-wide v0
.end method

.method public newInstance()Lcom/htc/android/mail/Request;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/htc/android/mail/Request;

    invoke-direct {v0}, Lcom/htc/android/mail/Request;-><init>()V

    .line 41
    .local v0, newRequest:Lcom/htc/android/mail/Request;
    iget v1, p0, Lcom/htc/android/mail/Request;->command:I

    iput v1, v0, Lcom/htc/android/mail/Request;->command:I

    .line 42
    iget-object v1, p0, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iput-object v1, v0, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 43
    iget v1, p0, Lcom/htc/android/mail/Request;->messageWhatStart:I

    iput v1, v0, Lcom/htc/android/mail/Request;->messageWhatStart:I

    .line 44
    iget v1, p0, Lcom/htc/android/mail/Request;->messageWhatError:I

    iput v1, v0, Lcom/htc/android/mail/Request;->messageWhatError:I

    .line 45
    iget v1, p0, Lcom/htc/android/mail/Request;->messageWhat:I

    iput v1, v0, Lcom/htc/android/mail/Request;->messageWhat:I

    .line 46
    iget-boolean v1, p0, Lcom/htc/android/mail/Request;->isStopOnLeave:Z

    iput-boolean v1, v0, Lcom/htc/android/mail/Request;->isStopOnLeave:Z

    .line 47
    iget-boolean v1, p0, Lcom/htc/android/mail/Request;->isStopped:Z

    iput-boolean v1, v0, Lcom/htc/android/mail/Request;->isStopped:Z

    .line 48
    iget-object v1, p0, Lcom/htc/android/mail/Request;->returnObject:Ljava/lang/Object;

    iput-object v1, v0, Lcom/htc/android/mail/Request;->returnObject:Ljava/lang/Object;

    .line 49
    iget-boolean v1, p0, Lcom/htc/android/mail/Request;->isWifiActiveMode:Z

    iput-boolean v1, v0, Lcom/htc/android/mail/Request;->isWifiActiveMode:Z

    .line 50
    iget-wide v1, p0, Lcom/htc/android/mail/Request;->mAccountId:J

    iput-wide v1, v0, Lcom/htc/android/mail/Request;->mAccountId:J

    .line 51
    iget v1, p0, Lcom/htc/android/mail/Request;->serviceStartId:I

    iput v1, v0, Lcom/htc/android/mail/Request;->serviceStartId:I

    .line 52
    iget-object v1, p0, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    iput-object v1, v0, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    .line 53
    iget-object v1, p0, Lcom/htc/android/mail/Request;->weakProgressHandler:Ljava/lang/ref/WeakReference;

    iput-object v1, v0, Lcom/htc/android/mail/Request;->weakProgressHandler:Ljava/lang/ref/WeakReference;

    .line 54
    iget-object v1, p0, Lcom/htc/android/mail/Request;->mCollections:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/htc/android/mail/Request;->mCollections:Ljava/util/ArrayList;

    .line 56
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/android/mail/Request;->filereference:Ljava/lang/String;

    .line 59
    return-object v0
.end method

.method public declared-synchronized registerCollection(Ljava/util/Collection;)V
    .locals 1
    .parameter "collection"

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/Request;->mCollections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAccountId(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/htc/android/mail/Request;->mAccountId:J

    .line 64
    return-void
.end method

.method public setCallbackIfNotAdded(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "runnable"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/htc/android/mail/Request;->mCallbackIfNotAdded:Ljava/lang/Runnable;

    .line 93
    return-void
.end method

.method public declared-synchronized unregisterCollection()V
    .locals 3

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/Request;->mCollections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 87
    .local v0, collection:Ljava/util/Collection;
    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 86
    .end local v0           #collection:Ljava/util/Collection;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 89
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method
