.class Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "MailSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncAdapterImpl"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockObject:Ljava/lang/Object;

.field private mMailAccount:Lcom/htc/android/mail/Account;

.field private mRequestController:Lcom/htc/android/mail/AbsRequestController;

.field private mRequestHandler:Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;

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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mLockObject:Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;

    iget-object v1, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mLockObject:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mRequestHandler:Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;

    .line 69
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mRequestHandler:Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    .line 70
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/android/mail/RequestController;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/RequestController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    .line 71
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mRequestHandler:Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;

    iget-object v1, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;->setRequestController(Lcom/htc/android/mail/AbsRequestController;)V

    .line 72
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mRequestHandler:Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;

    iget-object v1, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;->setWeakRequestHandler(Ljava/lang/ref/WeakReference;)V

    .line 73
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 11
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 78
    invoke-static {}, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;->access$000()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "MailSyncAdapterService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPerformSync: account = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", extras = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    if-eqz p2, :cond_2

    const-string v7, "upload"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 84
    :cond_2
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v0

    .line 85
    .local v0, accountPool:Lcom/htc/android/mail/AccountPool;
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7, p1}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;Landroid/accounts/Account;)Lcom/htc/android/mail/Account;

    move-result-object v4

    .line 86
    .local v4, mailAccount:Lcom/htc/android/mail/Account;
    iput-object v4, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mMailAccount:Lcom/htc/android/mail/Account;

    .line 88
    if-nez v4, :cond_3

    .line 89
    invoke-static {}, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;->access$000()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "MailSyncAdapterService"

    const-string v8, "mailAccount == null"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v7

    if-nez v7, :cond_4

    .line 94
    invoke-static {}, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;->access$000()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "MailSyncAdapterService"

    const-string v8, "mailAccount.getMailboxs() == null"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_4
    invoke-static {}, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;->access$000()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "MailSyncAdapterService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sync mailAccount: id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_5
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mRequestHandler:Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;

    invoke-virtual {v7, v4}, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$RequestHandler;->setAccount(Lcom/htc/android/mail/Account;)V

    .line 101
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v8, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/AbsRequestController;->addWeakHandler(Ljava/lang/ref/WeakReference;)V

    .line 102
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v8, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7, v4, v8}, Lcom/htc/android/mail/AbsRequestController;->registerWeakMailRequestHandler(Lcom/htc/android/mail/Account;Ljava/lang/ref/WeakReference;)V

    .line 104
    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v7

    const-wide v8, 0x7ffffffffffffffaL

    invoke-virtual {v7, v8, v9}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v3

    .line 105
    .local v3, m:Lcom/htc/android/mail/Mailbox;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v1, b:Landroid/os/Bundle;
    const-string v7, "Mailbox"

    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 108
    new-instance v5, Lcom/htc/android/mail/Request;

    invoke-direct {v5}, Lcom/htc/android/mail/Request;-><init>()V

    .line 109
    .local v5, r:Lcom/htc/android/mail/Request;
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    iput-object v7, v5, Lcom/htc/android/mail/Request;->weakHandler:Ljava/lang/ref/WeakReference;

    .line 110
    const/4 v7, 0x0

    iput v7, v5, Lcom/htc/android/mail/Request;->messageWhat:I

    .line 111
    const/4 v7, 0x1

    iput v7, v5, Lcom/htc/android/mail/Request;->command:I

    .line 112
    iput-object v1, v5, Lcom/htc/android/mail/Request;->parameter:Landroid/os/Bundle;

    .line 113
    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/htc/android/mail/Request;->setAccountId(J)V

    .line 115
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Lcom/htc/android/mail/AbsRequestController;->refreshOrCheckMoreMail(Lcom/htc/android/mail/Request;Z)I

    move-result v6

    .line 117
    .local v6, ret:I
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    invoke-virtual {v7, v4}, Lcom/htc/android/mail/AbsRequestController;->isServerRefreshing(Lcom/htc/android/mail/Account;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 118
    invoke-static {}, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;->access$000()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "MailSyncAdapterService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wait refresh complete: accountId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_6
    iget-object v8, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mLockObject:Ljava/lang/Object;

    monitor-enter v8

    .line 121
    :try_start_0
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mLockObject:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_7
    :goto_1
    :try_start_1
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 122
    :catch_0
    move-exception v2

    .line 123
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;->access$000()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "MailSyncAdapterService"

    const-string v9, "catch exception"

    invoke-static {v7, v9, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onSyncCanceled()V
    .locals 4

    .prologue
    .line 131
    invoke-super {p0}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled()V

    .line 132
    invoke-static {}, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MailSyncAdapterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncCanceled: accountId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mMailAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mMailAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/AbsRequestController;->removeRequest(JI)V

    .line 134
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mRequestController:Lcom/htc/android/mail/AbsRequestController;

    iget-object v1, p0, Lcom/htc/android/mail/mailservice/syncAdapterService/MailSyncAdapterService$SyncAdapterImpl;->mMailAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v1}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v1

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/android/mail/AbsRequestController;->removeRequest(JI)V

    .line 135
    return-void
.end method
