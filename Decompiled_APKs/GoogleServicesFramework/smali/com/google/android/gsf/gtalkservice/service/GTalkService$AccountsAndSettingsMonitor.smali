.class Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;
.super Landroid/content/BroadcastReceiver;
.source "GTalkService.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountsAndSettingsMonitor"
.end annotation


# instance fields
.field private final mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter
    .parameter "service"

    .prologue
    .line 478
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 479
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .line 480
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->asyncAuditMainConnection()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;)Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    return-object v0
.end method

.method private asyncAuditMainConnection()V
    .locals 2

    .prologue
    .line 619
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor$2;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor$2;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 632
    return-void
.end method

.method private asyncRemoveObsoleteEndpoints()V
    .locals 2

    .prologue
    .line 611
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor$1;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor$1;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 616
    return-void
.end method

.method private createEndpointForAccount(Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 635
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createEndpointForAccount: account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createEndpointAndLogin(Lcom/google/android/gsf/gtalkservice/Account;)V
    invoke-static {v0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2800(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 639
    return-void
.end method

.method private getOrCreateEndpoint(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Endpoint;
    .locals 5
    .parameter "username"

    .prologue
    const/4 v2, 0x0

    .line 513
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getEndpointForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    invoke-static {v3, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 515
    .local v1, wrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOrCreateEndpoint: username="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 518
    :cond_0
    if-nez v1, :cond_1

    .line 519
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const/4 v4, 0x0

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createAccount(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;
    invoke-static {v3, p1, v2, v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 522
    .local v0, account:Lcom/google/android/gsf/gtalkservice/Account;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createEndpoint(Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;
    invoke-static {v3, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v1

    .end local v1           #wrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    check-cast v1, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;

    .line 524
    .restart local v1       #wrapper:Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;
    if-nez v1, :cond_1

    .line 530
    .end local v0           #account:Lcom/google/android/gsf/gtalkservice/Account;
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/EndpointWrapper;->getEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v2

    goto :goto_0
.end method

.method private handleBackgroundDataSettingChange()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isBackgroundDataEnabled()Z
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2900(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initializeConnection()V
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 650
    :goto_0
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAllSessions()V
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$3000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    goto :goto_0
.end method

.method private logNoAccountError()V
    .locals 1

    .prologue
    .line 602
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 603
    return-void
.end method


# virtual methods
.method public accountMissing()V
    .locals 0

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->logNoAccountError()V

    .line 599
    return-void
.end method

.method public authFailed(Ljava/lang/String;)V
    .locals 4
    .parameter "username"

    .prologue
    const/4 v3, 0x3

    .line 577
    const-string v1, "GTalkService"

    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authFailed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 579
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->getOrCreateEndpoint(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 581
    .local v0, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v0, :cond_2

    .line 582
    const-string v1, "GTalkService"

    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authFailed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): failed to create endpoint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 592
    :cond_1
    :goto_0
    return-void

    .line 588
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnectionStateAndError(IIZ)V

    goto :goto_0
.end method

.method public authTokenFetched(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "username"
    .parameter "authToken"

    .prologue
    .line 534
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getIsOkToConnectToMcs()Z

    move-result v1

    .line 536
    .local v1, shouldConnect:Z
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authTokenFetched("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ") token is empty!"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", shouldConnect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 542
    :cond_0
    if-eqz v1, :cond_1

    .line 543
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const/4 v3, 0x0

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createAccount(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;
    invoke-static {v2, p1, p2, v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 544
    .local v0, account:Lcom/google/android/gsf/gtalkservice/Account;
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->createEndpointForAccount(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 546
    .end local v0           #account:Lcom/google/android/gsf/gtalkservice/Account;
    :cond_1
    return-void

    .line 537
    :cond_2
    const-string v2, ")"

    goto :goto_0
.end method

.method public fetchAuthTokenLater(Ljava/lang/String;)V
    .locals 3
    .parameter "username"

    .prologue
    .line 552
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "fetchAuthTokenLater"

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 554
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->getOrCreateEndpoint(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 556
    .local v0, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v0, :cond_1

    .line 557
    const-string v1, "fetchAuthTokenLater: endpoint is null!"

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 571
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isSessionOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 567
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->retryConnection(Z)V

    goto :goto_0

    .line 569
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->login()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 483
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, action:Ljava/lang/String;
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 487
    :cond_0
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 488
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleUserPresent()V
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 510
    :cond_1
    :goto_0
    return-void

    .line 489
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 492
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleScreenOff()V
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1700(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    goto :goto_0

    .line 493
    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 494
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleScreenOn()V
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1800(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    goto :goto_0

    .line 495
    :cond_4
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 496
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->asyncRemoveObsoleteEndpoints()V

    goto :goto_0

    .line 497
    :cond_5
    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 498
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->handleBackgroundDataSettingChange()V

    goto :goto_0

    .line 499
    :cond_6
    const-string v1, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 500
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleGservicesSettingChanged()V

    goto :goto_0

    .line 501
    :cond_7
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 502
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleDeviceStorageLow()V

    goto :goto_0

    .line 503
    :cond_8
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 504
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleDeviceStorageOk()V

    goto :goto_0

    .line 505
    :cond_9
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 506
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleConnectivityChanged(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$1900(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/content/Intent;)V

    goto :goto_0

    .line 507
    :cond_a
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleAirplaneModeChanged(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/content/Intent;)V

    goto :goto_0
.end method
