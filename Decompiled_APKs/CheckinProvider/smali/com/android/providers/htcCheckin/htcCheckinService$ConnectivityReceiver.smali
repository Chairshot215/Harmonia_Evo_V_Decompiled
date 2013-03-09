.class Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "htcCheckinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/htcCheckinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/htcCheckin/htcCheckinService;


# direct methods
.method private constructor <init>(Lcom/android/providers/htcCheckin/htcCheckinService;)V
    .locals 0
    .parameter

    .prologue
    .line 2732
    iput-object p1, p0, Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/htcCheckin/htcCheckinService;Lcom/android/providers/htcCheckin/htcCheckinService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2732
    invoke-direct {p0, p1}, Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver;-><init>(Lcom/android/providers/htcCheckin/htcCheckinService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 2735
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 2736
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_2

    .line 2737
    iget-object v1, p0, Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$600(Lcom/android/providers/htcCheckin/htcCheckinService;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->NETWORK_UP:Landroid/provider/Checkin$Events$Tag;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/htcCheckin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    .line 2741
    iget-object v1, p0, Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mNetworkConnected:Z
    invoke-static {v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2500(Lcom/android/providers/htcCheckin/htcCheckinService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2758
    :cond_0
    :goto_0
    return-void

    .line 2742
    :cond_1
    iget-object v1, p0, Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    const/4 v2, 0x1

    #setter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mNetworkConnected:Z
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2502(Lcom/android/providers/htcCheckin/htcCheckinService;Z)Z

    .line 2753
    :goto_1
    new-instance v1, Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver$1;-><init>(Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver;)V

    invoke-virtual {v1}, Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver$1;->start()V

    goto :goto_0

    .line 2744
    :cond_2
    iget-object v1, p0, Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$600(Lcom/android/providers/htcCheckin/htcCheckinService;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->NETWORK_DOWN:Landroid/provider/Checkin$Events$Tag;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/htcCheckin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    .line 2748
    iget-object v1, p0, Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    #getter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mNetworkConnected:Z
    invoke-static {v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2500(Lcom/android/providers/htcCheckin/htcCheckinService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2749
    iget-object v1, p0, Lcom/android/providers/htcCheckin/htcCheckinService$ConnectivityReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    const/4 v2, 0x0

    #setter for: Lcom/android/providers/htcCheckin/htcCheckinService;->mNetworkConnected:Z
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2502(Lcom/android/providers/htcCheckin/htcCheckinService;Z)Z

    goto :goto_1
.end method
