.class Lcom/google/android/setupwizard/NetworkMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupwizard/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupwizard/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/google/android/setupwizard/NetworkMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/setupwizard/NetworkMonitor$2;->this$0:Lcom/google/android/setupwizard/NetworkMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 133
    const-string v3, "NetworkMonitor"

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 137
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 139
    .local v2, ni:Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/google/android/setupwizard/NetworkMonitor$2;->this$0:Lcom/google/android/setupwizard/NetworkMonitor;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    #setter for: Lcom/google/android/setupwizard/NetworkMonitor;->mNetworkConnected:Z
    invoke-static {v6, v3}, Lcom/google/android/setupwizard/NetworkMonitor;->access$102(Lcom/google/android/setupwizard/NetworkMonitor;Z)Z

    .line 142
    .end local v2           #ni:Landroid/net/NetworkInfo;
    :cond_0
    iget-object v3, p0, Lcom/google/android/setupwizard/NetworkMonitor$2;->this$0:Lcom/google/android/setupwizard/NetworkMonitor;

    #getter for: Lcom/google/android/setupwizard/NetworkMonitor;->mCheckinSucceeded:Z
    invoke-static {v3}, Lcom/google/android/setupwizard/NetworkMonitor;->access$200(Lcom/google/android/setupwizard/NetworkMonitor;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "digest"

    invoke-static {v3, v6}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, digest:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/setupwizard/NetworkMonitor$2;->this$0:Lcom/google/android/setupwizard/NetworkMonitor;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    :goto_1
    #setter for: Lcom/google/android/setupwizard/NetworkMonitor;->mCheckinSucceeded:Z
    invoke-static {v3, v4}, Lcom/google/android/setupwizard/NetworkMonitor;->access$202(Lcom/google/android/setupwizard/NetworkMonitor;Z)Z

    .line 149
    .end local v1           #digest:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/google/android/setupwizard/NetworkMonitor$2;->this$0:Lcom/google/android/setupwizard/NetworkMonitor;

    #calls: Lcom/google/android/setupwizard/NetworkMonitor;->onStateChanged()V
    invoke-static {v3}, Lcom/google/android/setupwizard/NetworkMonitor;->access$000(Lcom/google/android/setupwizard/NetworkMonitor;)V

    .line 150
    return-void

    .restart local v2       #ni:Landroid/net/NetworkInfo;
    :cond_2
    move v3, v5

    .line 139
    goto :goto_0

    .end local v2           #ni:Landroid/net/NetworkInfo;
    .restart local v1       #digest:Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 146
    goto :goto_1
.end method
