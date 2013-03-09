.class Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;
.super Ljava/lang/Object;
.source "HuxSetAccountBase.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HuxSetAccountBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "className"
    .parameter "service"

    .prologue
    .line 311
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "HuxSetAccountBase"

    const-string v5, "onServiceConnected"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-static {p2}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v5

    iput-object v5, v4, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIEASService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 314
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v0

    .line 315
    .local v0, accountPool:Lcom/htc/android/mail/AccountPool;
    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mContext:Landroid/content/Context;

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Lcom/htc/android/mail/AccountPool;->getAccounts(Landroid/content/Context;I)[Lcom/htc/android/mail/Account;

    move-result-object v3

    .line 316
    .local v3, exchangeAccounts:[Lcom/htc/android/mail/Account;
    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    iput-object v5, v4, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mExchangeAccount:Lcom/htc/android/mail/Account;

    .line 318
    const/4 v2, 0x0

    .line 319
    .local v2, easAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIEASService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v5, v5, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mExchangeAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getExchangeAccountInfo(J)Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    move-result-object v2

    .line 321
    if-eqz v2, :cond_1

    .line 322
    new-instance v4, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostProfileTask;

    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-direct {v4, v5}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostProfileTask;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;)V

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$PostProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    new-instance v5, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3$1;

    invoke-direct {v5, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3$1;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;)V

    .end local v0           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v2           #easAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    .end local v3           #exchangeAccounts:[Lcom/htc/android/mail/Account;
    :goto_1
    invoke-virtual {v4, v5}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 339
    return-void

    .line 324
    .restart local v0       #accountPool:Lcom/htc/android/mail/AccountPool;
    .restart local v2       #easAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    .restart local v3       #exchangeAccounts:[Lcom/htc/android/mail/Account;
    :cond_1
    :try_start_1
    sget-boolean v4, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "HuxSetAccountBase"

    const-string v5, "Cannot get EASAccountInfo duing mExchangeServerConnection"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_2
    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v4, v4, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mWeakRequestHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;

    const/16 v5, 0x13

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/htc/android/mail/huxservice/HuxProvController$ProvControllResultHandler;->provResultNotify(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 329
    .end local v0           #accountPool:Lcom/htc/android/mail/AccountPool;
    .end local v2           #easAccountInfo:Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    .end local v3           #exchangeAccounts:[Lcom/htc/android/mail/Account;
    :catch_0
    move-exception v1

    .line 330
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    iget-object v4, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    new-instance v5, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3$1;

    invoke-direct {v5, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3$1;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;)V

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    new-instance v6, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3$1;

    invoke-direct {v6, p0}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3$1;-><init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;)V

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v4
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 342
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HuxSetAccountBase"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase$3;->this$0:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mIEASService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 344
    return-void
.end method
