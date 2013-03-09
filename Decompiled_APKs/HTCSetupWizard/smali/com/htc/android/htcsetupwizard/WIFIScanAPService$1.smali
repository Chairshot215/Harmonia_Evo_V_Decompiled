.class Lcom/htc/android/htcsetupwizard/WIFIScanAPService$1;
.super Landroid/content/BroadcastReceiver;
.source "WIFIScanAPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/WIFIScanAPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/WIFIScanAPService;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/WIFIScanAPService;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService$1;->this$0:Lcom/htc/android/htcsetupwizard/WIFIScanAPService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService$1;->this$0:Lcom/htc/android/htcsetupwizard/WIFIScanAPService;

    #getter for: Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbStopService:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->access$100(Lcom/htc/android/htcsetupwizard/WIFIScanAPService;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    .line 89
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService$1;->this$0:Lcom/htc/android/htcsetupwizard/WIFIScanAPService;

    #getter for: Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->mbStopService:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->access$100(Lcom/htc/android/htcsetupwizard/WIFIScanAPService;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v0, v2, :cond_1

    .line 90
    monitor-exit v1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService$1;->this$0:Lcom/htc/android/htcsetupwizard/WIFIScanAPService;

    #calls: Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->handleScanResultsAvailable()V
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->access$200(Lcom/htc/android/htcsetupwizard/WIFIScanAPService;)V

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 96
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/WIFIScanAPService$1;->this$0:Lcom/htc/android/htcsetupwizard/WIFIScanAPService;

    const-string v1, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #calls: Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->handleWifiStateChanged(I)V
    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/WIFIScanAPService;->access$300(Lcom/htc/android/htcsetupwizard/WIFIScanAPService;I)V

    goto :goto_0
.end method
