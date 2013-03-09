.class public Lcom/google/android/gsf/login/MarketHelper;
.super Ljava/lang/Object;
.source "MarketHelper.java"


# instance fields
.field mBillingService:Lcom/android/vending/billing/IBillingAccountService;

.field mContext:Landroid/content/Context;

.field mServiceConnection:Landroid/content/ServiceConnection;

.field tokenCondition:Ljava/util/concurrent/locks/Condition;

.field tokenLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/MarketHelper;->tokenLock:Ljava/util/concurrent/locks/Lock;

    .line 48
    iget-object v0, p0, Lcom/google/android/gsf/login/MarketHelper;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/MarketHelper;->tokenCondition:Ljava/util/concurrent/locks/Condition;

    .line 51
    iput-object p1, p0, Lcom/google/android/gsf/login/MarketHelper;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public allowCreditCard(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Z
    .locals 5
    .parameter "session"

    .prologue
    const/4 v2, 0x1

    .line 80
    iget-boolean v3, p1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSetupWizard:Z

    if-eqz v3, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v2

    .line 84
    :cond_1
    iget-object v3, p1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    const-string v4, "pendingIntent"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 85
    .local v1, pi:Landroid/app/PendingIntent;
    if-eqz v1, :cond_2

    .line 86
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, appPackage:Ljava/lang/String;
    const-string v3, "com.android.settings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.vending"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    .end local v0           #appPackage:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bind()Lcom/android/vending/billing/IBillingAccountService;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 122
    iget-object v1, p0, Lcom/google/android/gsf/login/MarketHelper;->mBillingService:Lcom/android/vending/billing/IBillingAccountService;

    if-eqz v1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/google/android/gsf/login/MarketHelper;->mBillingService:Lcom/android/vending/billing/IBillingAccountService;

    .line 156
    :cond_0
    :goto_0
    return-object v0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/login/MarketHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gsf/loginservice/GLSUser;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 127
    new-instance v1, Lcom/google/android/gsf/login/MarketHelper$1;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/login/MarketHelper$1;-><init>(Lcom/google/android/gsf/login/MarketHelper;)V

    iput-object v1, p0, Lcom/google/android/gsf/login/MarketHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 139
    iget-object v1, p0, Lcom/google/android/gsf/login/MarketHelper;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/android/vending/billing/IBillingAccountService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".BIND"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gsf/login/MarketHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 143
    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/google/android/gsf/login/MarketHelper;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/login/MarketHelper;->mBillingService:Lcom/android/vending/billing/IBillingAccountService;

    if-nez v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/google/android/gsf/login/MarketHelper;->tokenCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/login/MarketHelper;->mBillingService:Lcom/android/vending/billing/IBillingAccountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    iget-object v1, p0, Lcom/google/android/gsf/login/MarketHelper;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 156
    iget-object v1, p0, Lcom/google/android/gsf/login/MarketHelper;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/login/MarketHelper;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public marketAvailable()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gsf/login/MarketHelper;->bind()Lcom/android/vending/billing/IBillingAccountService;

    move-result-object v5

    if-nez v5, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v4

    .line 64
    :cond_1
    iget-object v5, p0, Lcom/google/android/gsf/login/MarketHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 67
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v5, "com.android.vending"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 68
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.vending.billing.ADD_CREDIT_CARD"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    .local v0, bi:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 70
    .end local v0           #bi:Landroid/content/pm/ResolveInfo;
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 71
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public noValidCreditCardForAccount(Ljava/lang/String;)Z
    .locals 6
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gsf/login/MarketHelper;->marketAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v2

    .line 109
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/MarketHelper;->bind()Lcom/android/vending/billing/IBillingAccountService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/vending/billing/IBillingAccountService;->hasValidCreditCard(Ljava/lang/String;)I

    move-result v1

    .line 110
    .local v1, rc:I
    const-string v3, "GLSUser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Market result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    const/4 v3, 0x2

    if-ne v3, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 112
    .end local v1           #rc:I
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "GLSUser"

    const-string v4, "Error determining credit card status"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gsf/login/MarketHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/android/gsf/login/MarketHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gsf/login/MarketHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 58
    :cond_0
    return-void
.end method
