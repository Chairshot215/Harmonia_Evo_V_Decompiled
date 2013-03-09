.class public Lcom/htc/android/mail/server/ExchangeServer;
.super Lcom/htc/android/mail/server/Server;
.source "ExchangeServer.java"


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ExchangeServer"

.field private static mCheckSvcBound:Landroid/os/ConditionVariable;

.field private static mEventCallbackQueue:Lcom/htc/android/mail/eassvc/pim/EASEventCallback;

.field public static mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

.field private static mSvcConnection:Landroid/content/ServiceConnection;


# instance fields
.field private mAccount:Lcom/htc/android/mail/Account;

.field private mCommand:I

.field private mContext:Landroid/content/Context;

.field private mIsCancelCommand:Z

.field private mIsGlobal:Z

.field private mParam1:Ljava/lang/String;

.field private mParam2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    .line 50
    sput-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 51
    sput-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mEventCallbackQueue:Lcom/htc/android/mail/eassvc/pim/EASEventCallback;

    .line 52
    sput-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mCheckSvcBound:Landroid/os/ConditionVariable;

    .line 66
    new-instance v0, Lcom/htc/android/mail/server/ExchangeServer$1;

    invoke-direct {v0}, Lcom/htc/android/mail/server/ExchangeServer$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mSvcConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/mail/Account;)V
    .locals 4
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lcom/htc/android/mail/server/Server;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    .line 55
    iput-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer;->mContext:Landroid/content/Context;

    .line 57
    iput v1, p0, Lcom/htc/android/mail/server/ExchangeServer;->mCommand:I

    .line 58
    iput-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer;->mParam2:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    .line 61
    iput-boolean v1, p0, Lcom/htc/android/mail/server/ExchangeServer;->mIsCancelCommand:Z

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    .line 94
    iput v1, p0, Lcom/htc/android/mail/server/ExchangeServer;->mCommand:I

    .line 95
    iput-boolean v1, p0, Lcom/htc/android/mail/server/ExchangeServer;->mIsCancelCommand:Z

    .line 104
    sget-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-nez v0, :cond_2

    .line 105
    sget-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mCheckSvcBound:Landroid/os/ConditionVariable;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    sput-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mCheckSvcBound:Landroid/os/ConditionVariable;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/htc/android/mail/server/ExchangeServer;->mSvcConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    const-string v0, "ExchangeServer"

    const-string v1, "Fail to bind EAS AppSvc!"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_1
    sget-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mCheckSvcBound:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 115
    :cond_2
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Lcom/htc/android/mail/eassvc/pim/EASEventCallback;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mEventCallbackQueue:Lcom/htc/android/mail/eassvc/pim/EASEventCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)Lcom/htc/android/mail/eassvc/pim/EASEventCallback;
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-object p0, Lcom/htc/android/mail/server/ExchangeServer;->mEventCallbackQueue:Lcom/htc/android/mail/eassvc/pim/EASEventCallback;

    return-object p0
.end method

.method static synthetic access$200()Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mCheckSvcBound:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/server/ExchangeServer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/htc/android/mail/server/ExchangeServer;->mCommand:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/android/mail/server/ExchangeServer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/htc/android/mail/server/ExchangeServer;->mCommand:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/android/mail/server/ExchangeServer;)Lcom/htc/android/mail/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/mail/server/ExchangeServer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/android/mail/server/ExchangeServer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/android/mail/server/ExchangeServer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/android/mail/server/ExchangeServer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/android/mail/server/ExchangeServer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer;->mParam2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/android/mail/server/ExchangeServer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/android/mail/server/ExchangeServer;->mParam2:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/android/mail/server/ExchangeServer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static cancelBackgroundSync(J)V
    .locals 5
    .parameter "accountId"

    .prologue
    .line 788
    :try_start_0
    sget-object v2, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/pim/IEASService;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 789
    sget-object v2, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    invoke-interface {v2, p0, p1}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getMailboxRefreshing(J)Ljava/lang/String;

    move-result-object v1

    .line 790
    .local v1, mailbox_server_id:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 791
    sget-boolean v2, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ExchangeServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelBackgroundSync(): Server is refreshing, stop it, Mailbox Server ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_0
    sget-object v2, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    const/4 v3, 0x3

    invoke-interface {v2, p0, p1, v3}, Lcom/htc/android/mail/eassvc/pim/IEASService;->cancelSyncSource(JI)V

    .line 800
    .end local v1           #mailbox_server_id:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 795
    :cond_2
    sget-boolean v2, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "ExchangeServer"

    const-string v3, "cancelBackgroundSync(): mService is null or die"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 797
    :catch_0
    move-exception v0

    .line 798
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMailboxRefreshing(J)Ljava/lang/String;
    .locals 4
    .parameter "accountId"

    .prologue
    .line 773
    const/4 v1, 0x0

    .line 775
    .local v1, rtn:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    invoke-interface {v2}, Lcom/htc/android/mail/eassvc/pim/IEASService;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 776
    sget-object v2, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    invoke-interface {v2, p0, p1}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getMailboxRefreshing(J)Ljava/lang/String;

    move-result-object v1

    .line 783
    :cond_0
    :goto_0
    return-object v1

    .line 778
    :cond_1
    sget-boolean v2, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ExchangeServer"

    const-string v3, "getMailboxRefreshing(): mService is null or die"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;Landroid/content/Context;)V
    .locals 4
    .parameter "attachCallback"
    .parameter "context"

    .prologue
    .line 734
    sget-boolean v1, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ExchangeServer"

    const-string v2, "> registerCallback"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_0
    if-nez p0, :cond_2

    .line 737
    :try_start_0
    const-string v1, "ExchangeServer"

    const-string v2, "registerCallback: parameter is null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :cond_1
    :goto_0
    return-void

    .line 741
    :cond_2
    sget-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    invoke-interface {v1}, Lcom/htc/android/mail/eassvc/pim/IEASService;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 742
    sget-boolean v1, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "ExchangeServer"

    const-string v2, "registerCallback: service register callback"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_3
    sget-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    invoke-interface {v1, p0}, Lcom/htc/android/mail/eassvc/pim/IEASService;->registerCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :goto_1
    sget-boolean v1, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ExchangeServer"

    const-string v2, "< registerCallback()"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :cond_4
    :try_start_1
    sget-boolean v1, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "ExchangeServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService is null or die, add to event call back queue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :cond_5
    sput-object p0, Lcom/htc/android/mail/server/ExchangeServer;->mEventCallbackQueue:Lcom/htc/android/mail/eassvc/pim/EASEventCallback;

    .line 747
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/mail/server/ExchangeServer;->setBindService(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static setBindService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 156
    sget-boolean v0, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ExchangeServer"

    const-string v1, "- setBindService()"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    sget-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-nez v0, :cond_2

    .line 158
    sget-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mCheckSvcBound:Landroid/os/ConditionVariable;

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    sput-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mCheckSvcBound:Landroid/os/ConditionVariable;

    .line 161
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mSvcConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    const-string v0, "ExchangeServer"

    const-string v1, "setBindService(): Fail to bind EAS AppSvc!"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_2
    return-void
.end method

.method public static unregisterCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)V
    .locals 3
    .parameter "attachCallback"

    .prologue
    .line 757
    if-nez p0, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    :try_start_0
    sget-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v1, :cond_2

    .line 761
    sget-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    invoke-interface {v1, p0}, Lcom/htc/android/mail/eassvc/pim/IEASService;->unregisterCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 765
    :catch_0
    move-exception v0

    .line 766
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 763
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-boolean v1, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ExchangeServer"

    const-string v2, "unregisterCallback(): mService is null or die"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public cancelSyncSourceByMode()V
    .locals 6

    .prologue
    .line 309
    sget-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-nez v1, :cond_1

    .line 310
    sget-boolean v1, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ExchangeServer"

    const-string v2, "cancelSyncSourceByMode, mService is null"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    :try_start_0
    sget-boolean v1, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ExchangeServer"

    const-string v2, "cancel SyncSource by mode"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_2
    sget-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v2, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->cancelSyncSourceByMode(JII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 170
    const-string v0, "ExchangeServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/mail/server/ExchangeServer;->mCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/server/ExchangeServer;->mIsCancelCommand:Z

    .line 173
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/server/ExchangeServer$2;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/server/ExchangeServer$2;-><init>(Lcom/htc/android/mail/server/ExchangeServer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 283
    return-void
.end method

.method public emptyMailbox(JJ)V
    .locals 5
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 724
    const-string v2, "ExchangeServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emptyMailbox: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/server/ExchangeServer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p3, p4, v2}, Lcom/htc/android/mail/database/ExchangeUtil;->getMailboxSvrIdbyMailboxId(JLandroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, collId:Ljava/lang/String;
    sget-object v2, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    const/4 v3, 0x1

    invoke-interface {v2, p1, p2, v0, v3}, Lcom/htc/android/mail/eassvc/pim/IEASService;->EmptyFolderContents(JLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    .end local v0           #collId:Ljava/lang/String;
    :goto_0
    return-void

    .line 728
    :catch_0
    move-exception v1

    .line 729
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public fetchAttachment(JJLjava/lang/String;ZI)I
    .locals 17
    .parameter "accountId"
    .parameter "messageId"
    .parameter "fileReference"
    .parameter "globalMail"
    .parameter "attachType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 548
    sget-boolean v3, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ExchangeServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fetchAttachment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_0
    const/16 v3, 0x1fe

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/mail/server/ExchangeServer;->mCommand:I

    .line 550
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;

    .line 551
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/server/ExchangeServer;->mParam2:Ljava/lang/String;

    .line 552
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    .line 554
    const/16 v16, -0x1

    .line 555
    .local v16, ret:I
    const/4 v15, 0x0

    .line 556
    .local v15, cur:Landroid/database/Cursor;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v2

    .line 558
    .local v2, cp:Landroid/content/IContentProvider;
    const-wide/16 v9, -0x1

    .line 559
    .local v9, partId:J
    const/4 v12, 0x0

    .line 560
    .local v12, fileName:Ljava/lang/String;
    const/4 v3, 0x2

    :try_start_0
    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v3

    const/4 v3, 0x1

    const-string v6, "_filename"

    aput-object v6, v4, v3

    .line 561
    .local v4, proj:[Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_account=%d AND _message=%d AND _filereference=\'%s\'"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v8, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v8, 0x2

    aput-object p5, v7, v8

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 562
    .local v5, where:Ljava/lang/String;
    if-nez p6, :cond_4

    .line 563
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 567
    :goto_0
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 568
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 569
    const-string v3, "_filename"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 571
    :cond_1
    const-wide/16 v6, -0x1

    cmp-long v3, v9, v6

    if-eqz v3, :cond_5

    .line 572
    sget-object v6, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    move-object/from16 v11, p5

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-interface/range {v6 .. v14}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getAttachment(JJLjava/lang/String;Ljava/lang/String;ZI)I

    move-result v16

    .line 576
    :goto_1
    sget-boolean v3, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "ExchangeServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service.fetchEMailAttach() return: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;

    .line 579
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/server/ExchangeServer;->mParam2:Ljava/lang/String;

    .line 580
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    .line 581
    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 582
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 586
    :cond_3
    sparse-switch v16, :sswitch_data_0

    .line 618
    return v16

    .line 565
    :cond_4
    :try_start_1
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsURI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto :goto_0

    .line 574
    :cond_5
    const-string v3, "ExchangeServer"

    const-string v6, "Can not get attachment from db."

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 578
    .end local v4           #proj:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    :catchall_0
    move-exception v3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;

    .line 579
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/android/mail/server/ExchangeServer;->mParam2:Ljava/lang/String;

    .line 580
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    .line 581
    if-eqz v15, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_6

    .line 582
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 578
    :cond_6
    throw v3

    .line 588
    .restart local v4       #proj:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    :sswitch_0
    new-instance v3, Ljava/lang/OutOfMemoryError;

    const-string v6, "OutOfMemoryError"

    invoke-direct {v3, v6}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 590
    :sswitch_1
    new-instance v3, Ljava/net/SocketTimeoutException;

    const-string v6, "SocketTimeoutException"

    invoke-direct {v3, v6}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 592
    :sswitch_2
    new-instance v3, Ljava/net/UnknownHostException;

    const-string v6, "UnknownHostException"

    invoke-direct {v3, v6}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 594
    :sswitch_3
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v6, "CertificateException"

    invoke-direct {v3, v6}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 597
    :sswitch_4
    sget-boolean v3, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "ExchangeServer"

    const-string v6, "downloadAttachException"

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_7
    new-instance v3, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/server/ExchangeServer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Lcom/htc/android/mail/server/ExchangeServer$5;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/htc/android/mail/server/ExchangeServer$5;-><init>(Lcom/htc/android/mail/server/ExchangeServer;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 603
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3

    .line 605
    :sswitch_5
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 607
    :sswitch_6
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3

    .line 609
    :sswitch_7
    sget-boolean v3, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "ExchangeServer"

    const-string v6, "Http status 413"

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_8
    new-instance v3, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/server/ExchangeServer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Lcom/htc/android/mail/server/ExchangeServer$6;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/htc/android/mail/server/ExchangeServer$6;-><init>(Lcom/htc/android/mail/server/ExchangeServer;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 615
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3

    .line 586
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_6
        0x12d -> :sswitch_5
        0x12e -> :sswitch_0
        0x12f -> :sswitch_1
        0x130 -> :sswitch_2
        0x131 -> :sswitch_3
        0x132 -> :sswitch_4
        0x135 -> :sswitch_7
        0x1f4 -> :sswitch_4
    .end sparse-switch
.end method

.method public fetchMailAgain(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;JI)V
    .locals 22
    .parameter "mailbox"
    .parameter "uid"
    .parameter "msgId"
    .parameter "retryTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 385
    sget-boolean v2, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ExchangeServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fetchMailAgain(), uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msgId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 387
    :cond_1
    const-string v2, "ExchangeServer"

    const-string v6, "fetchMailAgain failed, parameter is null"

    invoke-static {v2, v6}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_2
    :goto_0
    return-void

    .line 391
    :cond_3
    const/16 v16, 0x0

    .line 393
    .local v16, curparts:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-nez v2, :cond_4

    .line 394
    const-string v2, "ExchangeServer"

    const-string v6, "fetchMailAgain failed, mService is null"

    invoke-static {v2, v6}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 460
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    .line 461
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 462
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 398
    :cond_4
    const/4 v11, 0x0

    .line 399
    .local v11, mimetype:I
    const/4 v14, 0x0

    .line 400
    .local v14, AllOrNone:I
    const/16 v21, 0x0

    .line 402
    .local v21, truncationSize:I
    const/16 v19, 0x0

    .line 408
    .local v19, protocol:I
    const/16 v20, 0x0

    .line 409
    .local v20, tmpType:Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_1
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_mimetype"

    aput-object v6, v4, v2

    .line 410
    .local v4, proj:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_message = \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 411
    .local v5, partsWhere:Ljava/lang/String;
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    .line 412
    .local v3, partURI:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    if-eqz v2, :cond_5

    .line 413
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsURI:Landroid/net/Uri;

    .line 415
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/server/ExchangeServer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 416
    if-eqz v16, :cond_9

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 417
    const-string v2, "_mimetype"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 422
    :cond_6
    :goto_2
    if-nez v20, :cond_a

    .line 423
    const/4 v11, 0x2

    .line 433
    :cond_7
    :goto_3
    sget-object v6, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    move/from16 v0, v21

    int-to-long v12, v0

    const/4 v15, 0x0

    move-object/from16 v10, p2

    invoke-interface/range {v6 .. v15}, Lcom/htc/android/mail/eassvc/pim/IEASService;->fetchMailItem(JLjava/lang/String;Ljava/lang/String;IJIZ)I

    move-result v18

    .line 438
    .local v18, nRet:I
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_e

    .line 439
    sget-boolean v2, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "ExchangeServer"

    const-string v6, "fetchMailAgain() success"

    invoke-static {v2, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_8
    const/4 v2, 0x1

    const/4 v6, 0x4

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v2, v6}, Lcom/htc/android/mail/MailProvider;->updateMessageDone(JII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 460
    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    .line 461
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    .line 419
    .end local v18           #nRet:I
    :cond_9
    :try_start_2
    sget-boolean v2, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "ExchangeServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t retrieve uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mimetype in easparts table"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 453
    .end local v3           #partURI:Landroid/net/Uri;
    .end local v4           #proj:[Ljava/lang/String;
    .end local v5           #partsWhere:Ljava/lang/String;
    .end local v11           #mimetype:I
    .end local v14           #AllOrNone:I
    .end local v19           #protocol:I
    .end local v20           #tmpType:Ljava/lang/String;
    .end local v21           #truncationSize:I
    :catch_0
    move-exception v17

    .line 454
    .local v17, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    const/4 v6, 0x4

    :try_start_3
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v2, v6}, Lcom/htc/android/mail/MailProvider;->updateMessageDone(JII)I

    .line 455
    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 460
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    .line 461
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_1

    .line 424
    .end local v17           #e:Landroid/os/RemoteException;
    .restart local v3       #partURI:Landroid/net/Uri;
    .restart local v4       #proj:[Ljava/lang/String;
    .restart local v5       #partsWhere:Ljava/lang/String;
    .restart local v11       #mimetype:I
    .restart local v14       #AllOrNone:I
    .restart local v19       #protocol:I
    .restart local v20       #tmpType:Ljava/lang/String;
    .restart local v21       #truncationSize:I
    :cond_a
    :try_start_4
    const-string v2, "text/plain"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 425
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 426
    :cond_b
    const-string v2, "text/html"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 427
    const/4 v11, 0x2

    goto/16 :goto_3

    .line 428
    :cond_c
    const-string v2, "text/rtf"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 429
    const/4 v11, 0x3

    goto/16 :goto_3

    .line 430
    :cond_d
    const-string v2, "text/mime"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 431
    const/4 v11, 0x4

    goto/16 :goto_3

    .line 442
    .restart local v18       #nRet:I
    :cond_e
    const/16 v2, 0x12e

    move/from16 v0, v18

    if-ne v0, v2, :cond_f

    .line 443
    new-instance v2, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/server/ExchangeServer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Lcom/htc/android/mail/server/ExchangeServer$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/htc/android/mail/server/ExchangeServer$3;-><init>(Lcom/htc/android/mail/server/ExchangeServer;)V

    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 449
    :cond_f
    sget-boolean v2, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v2, :cond_10

    const-string v2, "ExchangeServer"

    const-string v6, "fetchMailAgain() fail"

    invoke-static {v2, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_10
    const/4 v2, 0x0

    const/4 v6, 0x4

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v2, v6}, Lcom/htc/android/mail/MailProvider;->updateMessageDone(JII)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    .line 456
    .end local v3           #partURI:Landroid/net/Uri;
    .end local v4           #proj:[Ljava/lang/String;
    .end local v5           #partsWhere:Ljava/lang/String;
    .end local v11           #mimetype:I
    .end local v14           #AllOrNone:I
    .end local v18           #nRet:I
    .end local v19           #protocol:I
    .end local v20           #tmpType:Ljava/lang/String;
    .end local v21           #truncationSize:I
    :catch_1
    move-exception v17

    .line 457
    .local v17, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    const/4 v6, 0x4

    :try_start_5
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v2, v6}, Lcom/htc/android/mail/MailProvider;->updateMessageDone(JII)I

    .line 458
    throw v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 460
    .end local v17           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    .line 461
    if-eqz v16, :cond_11

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_11

    .line 462
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 460
    :cond_11
    throw v2
.end method

.method public fetchMailItem(Lcom/htc/android/mail/Mailbox;Ljava/lang/String;JILjava/lang/String;)Z
    .locals 23
    .parameter "mailbox"
    .parameter "uid"
    .parameter "msgId"
    .parameter "retryTime"
    .parameter "searchMailCollectionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 469
    sget-boolean v2, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ExchangeServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "> fetchMailItem: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_0
    const/16 v2, 0x1ff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/mail/server/ExchangeServer;->mCommand:I

    .line 471
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;

    .line 473
    const/16 v17, 0x0

    .line 474
    .local v17, bRet:Z
    const/16 v18, 0x0

    .line 476
    .local v18, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v6

    invoke-interface {v2, v6, v7}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getAccountInfo(J)Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-result-object v16

    .line 477
    .local v16, account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->protocolVerDouble:D

    move-wide/from16 v20, v0

    .line 478
    .local v20, protocol:D
    const/4 v11, 0x0

    .line 479
    .local v11, mimetype:I
    const/4 v14, 0x0

    .line 480
    .local v14, allOrNone:I
    const-wide/16 v12, 0x0

    .line 481
    .local v12, truncationSize:J
    const/4 v9, 0x0

    .line 483
    .local v9, collectionId:Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 484
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    .line 491
    :goto_0
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    .line 492
    .local v3, partURI:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    if-eqz v2, :cond_1

    .line 493
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsURI:Landroid/net/Uri;

    .line 495
    :cond_1
    const/16 v22, 0x0

    .line 496
    .local v22, tmpType:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_mimetype"

    aput-object v6, v4, v2

    .line 497
    .local v4, proj:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_account="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " AND _message = \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\' AND _filename=\'\' "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 498
    .local v5, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/server/ExchangeServer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 499
    if-eqz v18, :cond_2

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 500
    const-string v2, "_mimetype"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 503
    :cond_2
    if-nez v22, :cond_b

    .line 504
    const/4 v11, 0x2

    .line 514
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    if-eqz v2, :cond_f

    .line 515
    sget-boolean v2, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "ExchangeServer"

    const-string v6, "fetchMailItem: global mail body"

    invoke-static {v2, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_4
    move-object/from16 v9, p6

    .line 521
    :goto_2
    sget-boolean v2, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "ExchangeServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fetchMailItem:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_5
    sget-object v6, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    move-object/from16 v10, p2

    invoke-interface/range {v6 .. v15}, Lcom/htc/android/mail/eassvc/pim/IEASService;->fetchMailItem(JLjava/lang/String;Ljava/lang/String;IJIZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    .line 523
    .local v19, nRet:I
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_10

    .line 524
    const/16 v17, 0x1

    .line 536
    :cond_6
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;

    .line 537
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    .line 538
    if-eqz v18, :cond_7

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 539
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 542
    :cond_7
    sget-boolean v2, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "ExchangeServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "< fetchMailItem(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_8
    return v17

    .line 486
    .end local v3           #partURI:Landroid/net/Uri;
    .end local v4           #proj:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v19           #nRet:I
    .end local v22           #tmpType:Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 536
    .end local v9           #collectionId:Ljava/lang/String;
    .end local v11           #mimetype:I
    .end local v12           #truncationSize:J
    .end local v14           #allOrNone:I
    .end local v16           #account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    .end local v20           #protocol:D
    :catchall_0
    move-exception v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;

    .line 537
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    .line 538
    if-eqz v18, :cond_a

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_a

    .line 539
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 536
    :cond_a
    throw v2

    .line 505
    .restart local v3       #partURI:Landroid/net/Uri;
    .restart local v4       #proj:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v9       #collectionId:Ljava/lang/String;
    .restart local v11       #mimetype:I
    .restart local v12       #truncationSize:J
    .restart local v14       #allOrNone:I
    .restart local v16       #account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    .restart local v20       #protocol:D
    .restart local v22       #tmpType:Ljava/lang/String;
    :cond_b
    :try_start_2
    const-string v2, "text/plain"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 506
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 507
    :cond_c
    const-string v2, "text/html"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 508
    const/4 v11, 0x2

    goto/16 :goto_1

    .line 509
    :cond_d
    const-string v2, "text/rtf"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 510
    const/4 v11, 0x3

    goto/16 :goto_1

    .line 511
    :cond_e
    const-string v2, "text/mime"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 512
    const/4 v11, 0x4

    goto/16 :goto_1

    .line 518
    :cond_f
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    goto/16 :goto_2

    .line 525
    .restart local v19       #nRet:I
    :cond_10
    const/16 v2, 0x12e

    move/from16 v0, v19

    if-ne v0, v2, :cond_6

    .line 526
    new-instance v2, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/server/ExchangeServer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Lcom/htc/android/mail/server/ExchangeServer$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/htc/android/mail/server/ExchangeServer$4;-><init>(Lcom/htc/android/mail/server/ExchangeServer;)V

    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method public fetchMultiAttachments(Lcom/htc/android/mail/Mailbox;Lcom/htc/android/mail/MailMessage;ZZ)V
    .locals 22
    .parameter "mailbox"
    .parameter "message"
    .parameter "onlyRealted"
    .parameter "globalMail"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 623
    sget-boolean v3, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ExchangeServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fetchMultiAttachments: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v7}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_0
    const/16 v3, 0x200

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/mail/server/ExchangeServer;->mCommand:I

    .line 625
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/android/mail/server/ExchangeServer;->mIsCancelCommand:Z

    .line 627
    const/4 v14, 0x0

    .line 628
    .local v14, c:Landroid/database/Cursor;
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v2

    .line 630
    .local v2, cp:Landroid/content/IContentProvider;
    const/16 v3, 0x8

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v3

    const/4 v3, 0x1

    const-string v6, "_index"

    aput-object v6, v4, v3

    const/4 v3, 0x2

    const-string v6, "_encode"

    aput-object v6, v4, v3

    const/4 v3, 0x3

    const-string v6, "_filename"

    aput-object v6, v4, v3

    const/4 v3, 0x4

    const-string v6, "_mimetype"

    aput-object v6, v4, v3

    const/4 v3, 0x5

    const-string v6, "_filepath"

    aput-object v6, v4, v3

    const/4 v3, 0x6

    const-string v6, "_filereference"

    aput-object v6, v4, v3

    const/4 v3, 0x7

    const-string v6, "_contenttype"

    aput-object v6, v4, v3

    .line 631
    .local v4, projection:[Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 632
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_message=%d AND _filename <> \'\' AND _contenttype = \'%d\'"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-wide v9, v0, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget v9, Lcom/htc/android/mail/Rfc2822;->CONTENTTYPE_RELATED:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 638
    .local v5, where:Ljava/lang/String;
    :goto_0
    if-eqz p4, :cond_3

    .line 639
    :try_start_0
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    .line 640
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sSearchSvrPartsURI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 644
    :goto_1
    if-nez v14, :cond_4

    .line 645
    const-string v3, "ExchangeServer"

    const-string v6, "fetch attachments: Can not get attachment data"

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v3, "ExchangeServer"

    const-string v6, "Can not get attachment data"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/ExchangeServer;->reloadMailbody()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;

    .line 691
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/server/ExchangeServer;->mParam2:Ljava/lang/String;

    .line 692
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    .line 693
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 694
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 697
    :cond_1
    return-void

    .line 634
    .end local v5           #where:Ljava/lang/String;
    :cond_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_message=%d AND _filename <> \'\'"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-wide v9, v0, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #where:Ljava/lang/String;
    goto :goto_0

    .line 642
    :cond_3
    :try_start_1
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sPartsURI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto :goto_1

    .line 651
    :cond_4
    const-wide/16 v20, -0x1

    .line 652
    .local v20, startTimeStamp:J
    const/16 v19, 0x1

    .line 653
    .local v19, refreshMailbody:Z
    const/16 v18, 0x1

    .line 654
    .local v18, neverRefreshMailbody:Z
    :cond_5
    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 655
    const-string v3, "_filereference"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 656
    .local v11, fileRef:Ljava/lang/String;
    const-string v3, "_filepath"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 657
    .local v16, filePath:Ljava/lang/String;
    const-string v3, "_contenttype"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 658
    .local v13, attachType:I
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 659
    new-instance v15, Ljava/io/File;

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 660
    .local v15, file:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 664
    .end local v15           #file:Ljava/io/File;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/android/mail/server/ExchangeServer;->mIsCancelCommand:Z

    if-eqz v3, :cond_a

    .line 665
    const-string v3, "ExchangeServer"

    const-string v6, "stop download attachments"

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .end local v11           #fileRef:Ljava/lang/String;
    .end local v13           #attachType:I
    .end local v16           #filePath:Ljava/lang/String;
    :cond_7
    if-nez v18, :cond_8

    if-nez v19, :cond_9

    .line 687
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/ExchangeServer;->reloadMailbody()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 690
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;

    .line 691
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/server/ExchangeServer;->mParam2:Ljava/lang/String;

    .line 692
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    .line 693
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 668
    .restart local v11       #fileRef:Ljava/lang/String;
    .restart local v13       #attachType:I
    .restart local v16       #filePath:Ljava/lang/String;
    :cond_a
    if-eqz v19, :cond_b

    .line 669
    const/16 v19, 0x0

    .line 670
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 673
    :cond_b
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;

    .line 674
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/htc/android/mail/server/ExchangeServer;->mParam2:Ljava/lang/String;

    .line 675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    move-object/from16 v0, p2

    iget-wide v9, v0, Lcom/htc/android/mail/MailMessage;->id:J

    move-object/from16 v6, p0

    move/from16 v12, p4

    invoke-virtual/range {v6 .. v13}, Lcom/htc/android/mail/server/ExchangeServer;->fetchAttachment(JJLjava/lang/String;ZI)I

    move-result v17

    .line 676
    .local v17, nRet:I
    const/16 v3, 0x1f4

    move/from16 v0, v17

    if-ne v0, v3, :cond_c

    .line 677
    const-string v3, "ExchangeServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fetch attachments: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/htc/android/mail/MailMessage;->id:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v20

    const-wide/16 v8, 0x2710

    cmp-long v3, v6, v8

    if-ltz v3, :cond_5

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/mail/server/ExchangeServer;->reloadMailbody()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 681
    const/16 v19, 0x1

    .line 682
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 690
    .end local v11           #fileRef:Ljava/lang/String;
    .end local v13           #attachType:I
    .end local v16           #filePath:Ljava/lang/String;
    .end local v17           #nRet:I
    .end local v18           #neverRefreshMailbody:Z
    .end local v19           #refreshMailbody:Z
    .end local v20           #startTimeStamp:J
    :catchall_0
    move-exception v3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/android/mail/server/ExchangeServer;->mParam1:Ljava/lang/String;

    .line 691
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/android/mail/server/ExchangeServer;->mParam2:Ljava/lang/String;

    .line 692
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/htc/android/mail/server/ExchangeServer;->mIsGlobal:Z

    .line 693
    if-eqz v14, :cond_d

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_d

    .line 694
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 690
    :cond_d
    throw v3
.end method

.method public getSslError()Lcom/htc/android/mail/ssl/MailSslError;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncOption()Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .locals 5

    .prologue
    .line 803
    const/4 v1, 0x0

    .line 805
    .local v1, options:Lcom/htc/android/mail/eassvc/pim/EASOptions;
    :try_start_0
    sget-object v2, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v3, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 809
    :goto_0
    return-object v1

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getX509Certificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public meetingResp(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "accountId"
    .parameter "collId"
    .parameter "RequestId"
    .parameter "meetingCmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 700
    sget-boolean v0, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ExchangeServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "meetingResp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_0
    sget-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->meetingResp(JLjava/lang/String;Ljava/lang/String;I)V

    .line 702
    return-void
.end method

.method public moveMail(Lcom/htc/android/mail/eassvc/pim/EASMoveItems;)V
    .locals 4
    .parameter "moveItems"

    .prologue
    .line 374
    sget-boolean v1, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ExchangeServer"

    const-string v2, "move mail"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/android/mail/server/ExchangeServer;->mCommand:I

    .line 377
    :try_start_0
    sget-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v2, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/android/mail/eassvc/pim/IEASService;->moveMail(JLcom/htc/android/mail/eassvc/pim/EASMoveItems;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public probe()V
    .locals 2

    .prologue
    .line 130
    sget-boolean v0, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ExchangeServer"

    const-string v1, "probe: do nothing"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method public refresh(Lcom/htc/android/mail/Mailbox;)I
    .locals 1
    .parameter "mailbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/server/ExchangeServer;->refresh(Lcom/htc/android/mail/Mailbox;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public refresh(Lcom/htc/android/mail/Mailbox;Landroid/os/Bundle;)I
    .locals 9
    .parameter "mailbox"
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 329
    sget-boolean v4, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ExchangeServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refresh: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_0
    iput v8, p0, Lcom/htc/android/mail/server/ExchangeServer;->mCommand:I

    .line 332
    :try_start_0
    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->refresh()V

    .line 334
    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    .line 335
    .local v3, mailboxs_beforeSync:Lcom/htc/android/mail/Mailboxs;
    iget-wide v4, p1, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v3, v4, v5}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v4

    if-nez v4, :cond_2

    .line 336
    new-instance v4, Lcom/htc/android/mail/exception/MailBoxNotFoundException;

    iget-object v5, p1, Lcom/htc/android/mail/Mailbox;->shortName:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/htc/android/mail/exception/MailBoxNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v3           #mailboxs_beforeSync:Lcom/htc/android/mail/Mailboxs;
    :catch_0
    move-exception v1

    .line 366
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 369
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    return v8

    .line 339
    .restart local v3       #mailboxs_beforeSync:Lcom/htc/android/mail/Mailboxs;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Lcom/htc/android/mail/server/ExchangeServer;->updateProgressStatus(Lcom/htc/android/mail/Account;Ljava/lang/String;)V

    .line 340
    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Lcom/htc/android/mail/server/ExchangeServer;->updateProgressStatus(Lcom/htc/android/mail/Account;Ljava/lang/String;)V

    .line 341
    sget-boolean v4, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "ExchangeServer"

    const-string v5, "refresh(): start syncMailbox"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_3
    iget v4, p1, Lcom/htc/android/mail/Mailbox;->kind:I

    const v5, 0x7ffffffa

    if-ne v4, v5, :cond_7

    .line 343
    iget-wide v4, p1, Lcom/htc/android/mail/Mailbox;->id:J

    const-wide v6, 0x7ffffffffffffffaL

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 344
    sget-object v4, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v5, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/htc/android/mail/eassvc/pim/IEASService;->syncMail(J)V

    .line 354
    :cond_4
    :goto_0
    sget-boolean v4, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "ExchangeServer"

    const-string v5, "refresh(): return syncMailbox"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_5
    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getProtocol()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 358
    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->reloadMailboxs()V

    .line 360
    iget-object v4, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v4}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v2

    .line 361
    .local v2, mailboxs_afterSync:Lcom/htc/android/mail/Mailboxs;
    iget-wide v4, p1, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v2, v4, v5}, Lcom/htc/android/mail/Mailboxs;->getMailboxById(J)Lcom/htc/android/mail/Mailbox;

    move-result-object v4

    if-nez v4, :cond_1

    .line 362
    new-instance v4, Lcom/htc/android/mail/exception/MailBoxNotFoundException;

    iget-object v5, p1, Lcom/htc/android/mail/Mailbox;->shortName:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/htc/android/mail/exception/MailBoxNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 345
    .end local v2           #mailboxs_afterSync:Lcom/htc/android/mail/Mailboxs;
    :cond_6
    iget-wide v4, p1, Lcom/htc/android/mail/Mailbox;->id:J

    const-wide v6, 0x7ffffffffffffff9L

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 346
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    .line 347
    .local v0, collIdList:[Ljava/lang/String;
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    const v6, 0x7fffffff

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/Mailboxs;->getMailboxByKind(I)Lcom/htc/android/mail/Mailbox;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    aput-object v5, v0, v4

    .line 348
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v5

    const v6, 0x7ffffffd

    invoke-virtual {v5, v6}, Lcom/htc/android/mail/Mailboxs;->getMailboxByKind(I)Lcom/htc/android/mail/Mailbox;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    aput-object v5, v0, v4

    .line 349
    sget-object v4, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v5, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    invoke-interface {v4, v5, v6, v0, p2}, Lcom/htc/android/mail/eassvc/pim/IEASService;->syncMailboxs(J[Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 352
    .end local v0           #collIdList:[Ljava/lang/String;
    :cond_7
    sget-object v4, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v5, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v5}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v5

    iget-object v7, p1, Lcom/htc/android/mail/Mailbox;->serverId:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7, p2}, Lcom/htc/android/mail/eassvc/pim/IEASService;->syncMailbox(JLjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public sendMail(Landroid/os/Bundle;)V
    .locals 10
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 706
    const-string v7, "account"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 707
    .local v0, accountId:J
    const-string v7, "id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 708
    .local v4, messageId:J
    const-string v7, "mailboxId"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 709
    .local v2, mailboxId:J
    const-string v7, "ExchangeServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "> sendMail: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object v7, p0, Lcom/htc/android/mail/server/ExchangeServer;->mContext:Landroid/content/Context;

    invoke-static {p1, v7}, Lcom/htc/android/mail/eassvc/mail/MailSender;->getSendMailItem(Landroid/os/Bundle;Landroid/content/Context;)Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;

    move-result-object v6

    .line 712
    .local v6, sendMailItem:Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;
    if-eqz v6, :cond_0

    .line 713
    sget-object v7, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget v8, v6, Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;->meetingResp:I

    iget-object v9, v6, Lcom/htc/android/mail/eassvc/mail/MailSender$SendMailItem;->sendItem:Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;

    invoke-interface {v7, v0, v1, v8, v9}, Lcom/htc/android/mail/eassvc/pim/IEASService;->sendMail(JILcom/htc/android/mail/eassvc/pim/EASMailSendItem;)V

    .line 719
    const-string v7, "ExchangeServer"

    const-string v8, "< sendMail"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :goto_0
    return-void

    .line 715
    :cond_0
    const-string v7, "ExchangeServer"

    const-string v8, "sendMail failed: send mail item is null"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAccount(Lcom/htc/android/mail/Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    .line 139
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer;->mContext:Landroid/content/Context;

    .line 143
    sget-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-nez v0, :cond_1

    .line 144
    sget-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mCheckSvcBound:Landroid/os/ConditionVariable;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    sput-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mCheckSvcBound:Landroid/os/ConditionVariable;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/server/ExchangeServer;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/htc/android/mail/server/ExchangeServer;->mSvcConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    const-string v0, "ExchangeServer"

    const-string v1, "setContext, Fail to bind EAS AppSvc!"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_1
    return-void
.end method

.method public setX509Certificate(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .parameter "certificate"

    .prologue
    .line 127
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/server/ExchangeServer;->setStop(Z)V

    .line 287
    invoke-virtual {p0}, Lcom/htc/android/mail/server/ExchangeServer;->close()V

    .line 288
    return-void
.end method

.method public stop(Z)V
    .locals 6
    .parameter "isImmediate"

    .prologue
    .line 291
    sget-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-nez v1, :cond_0

    .line 292
    const-string v1, "ExchangeServer"

    const-string v2, "stop: error #1"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 297
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ExchangeServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 299
    invoke-virtual {p0}, Lcom/htc/android/mail/server/ExchangeServer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 301
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v2, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x3

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->cancelSyncSourceByMode(JII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public updateSyncOption(Lcom/htc/android/mail/eassvc/pim/EASOptions;)V
    .locals 5
    .parameter "options"

    .prologue
    .line 813
    sget-boolean v1, Lcom/htc/android/mail/server/ExchangeServer;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ExchangeServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSyncOption: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    :cond_0
    :try_start_0
    sget-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    if-eqz v1, :cond_1

    .line 816
    sget-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v2, p0, Lcom/htc/android/mail/server/ExchangeServer;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/android/mail/eassvc/pim/IEASService;->setSyncOptions(JLcom/htc/android/mail/eassvc/pim/EASOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :cond_1
    :goto_0
    return-void

    .line 818
    :catch_0
    move-exception v0

    .line 819
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
