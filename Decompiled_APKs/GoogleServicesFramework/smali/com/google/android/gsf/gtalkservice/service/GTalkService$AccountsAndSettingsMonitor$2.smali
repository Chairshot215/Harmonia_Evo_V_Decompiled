.class Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor$2;
.super Ljava/lang/Object;
.source "GTalkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->asyncAuditMainConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 619
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor$2;->this$1:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 622
    const-string v2, "##### asyncAuditMainConnection"

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$500(Ljava/lang/String;)V

    .line 623
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor$2;->this$1:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    iget-object v2, v2, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getIsOkToConnectToMcs()Z

    move-result v1

    .line 624
    .local v1, okToConnect:Z
    if-eqz v1, :cond_0

    .line 625
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor$2;->this$1:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    iget-object v2, v2, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getAccountForAndroidId()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 626
    .local v0, account:Lcom/google/android/gsf/gtalkservice/Account;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor$2;->this$1:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    #getter for: Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->access$2500(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;)Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v2

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->maybeCreateMainEndpointAndLogin(Lcom/google/android/gsf/gtalkservice/Account;)V
    invoke-static {v2, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 630
    .end local v0           #account:Lcom/google/android/gsf/gtalkservice/Account;
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor$2;->this$1:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    iget-object v2, v2, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->this$0:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    #calls: Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAndRemoveMainEndpoint()V
    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->access$2700(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    goto :goto_0
.end method
