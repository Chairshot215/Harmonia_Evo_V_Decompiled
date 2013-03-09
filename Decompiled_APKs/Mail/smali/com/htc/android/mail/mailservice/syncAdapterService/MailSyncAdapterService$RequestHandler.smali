.class Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;
.super Lcom/htc/android/mail/MailRequestHandler;
.source "MailSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestHandler"
.end annotation


# instance fields
.field private mLockObject:Ljava/lang/Object;

.field private mMailAccount:Lcom/htc/android/mail/Account;

.field private mRequestController:Lcom/htc/android/mail/AbsRequestController;

.field private mWeakRequestHandler:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "lockObject"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/htc/android/mail/MailRequestHandler;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;->mLockObject:Ljava/lang/Object;

    .line 146
    return-void
.end method


# virtual methods
.method public onRefreshComplete(Lcom/htc/android/mail/Account;Lcom/htc/android/mail/Request;Landroid/os/Message;)V
    .locals 4
    .parameter "mailAccount"
    .parameter "r"
    .parameter "msg"

    .prologue
    .line 162
    if-nez p1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;->mMailAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/AbsRequestController;->isServerRefreshing(Lcom/htc/android/mail/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MailSyncAdapterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshComplete: accountId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;->mLockObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 170
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    if-eqz p2, :cond_0

    .line 173
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/AbsRequestController;->removeWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 174
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p1, v1}, Lcom/htc/android/mail/AbsRequestController;->unregisterWeakMailRequestHandler(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setAccount(Lcom/htc/android/mail/Account;)V
    .locals 0
    .parameter "mailAccount"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;->mMailAccount:Lcom/htc/android/mail/Account;

    .line 154
    return-void
.end method

.method public setRequestController(Lcom/htc/android/mail/AbsRequestController;)V
    .locals 0
    .parameter "requestController"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    .line 150
    return-void
.end method

.method public setWeakRequestHandler(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, handler:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/os/Handler;>;"
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    .line 158
    return-void
.end method
