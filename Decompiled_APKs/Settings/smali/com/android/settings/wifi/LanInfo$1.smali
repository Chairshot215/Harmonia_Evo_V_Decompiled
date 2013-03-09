.class Lcom/android/settings/wifi/LanInfo$1;
.super Landroid/content/BroadcastReceiver;
.source "LanInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/LanInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/LanInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/LanInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/settings/wifi/LanInfo$1;->this$0:Lcom/android/settings/wifi/LanInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const v7, 0x7f0c029f

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 45
    .local v2, netinfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    and-int/2addr v3, v6

    if-eqz v3, :cond_2

    .line 46
    iget-object v3, p0, Lcom/android/settings/wifi/LanInfo$1;->this$0:Lcom/android/settings/wifi/LanInfo;

    #setter for: Lcom/android/settings/wifi/LanInfo;->mIsConnected:Z
    invoke-static {v3, v4}, Lcom/android/settings/wifi/LanInfo;->access$002(Lcom/android/settings/wifi/LanInfo;Z)Z

    .line 47
    iget-object v3, p0, Lcom/android/settings/wifi/LanInfo$1;->this$0:Lcom/android/settings/wifi/LanInfo;

    #getter for: Lcom/android/settings/wifi/LanInfo;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings/wifi/LanInfo;->access$100(Lcom/android/settings/wifi/LanInfo;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 48
    .local v1, info:Landroid/net/DhcpInfo;
    if-eqz v1, :cond_0

    .line 49
    iget-object v3, p0, Lcom/android/settings/wifi/LanInfo$1;->this$0:Lcom/android/settings/wifi/LanInfo;

    #getter for: Lcom/android/settings/wifi/LanInfo;->mIpPref:Lcom/htc/preference/HtcPreference;
    invoke-static {v3}, Lcom/android/settings/wifi/LanInfo;->access$200(Lcom/android/settings/wifi/LanInfo;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    iget v4, v1, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v4}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v3, p0, Lcom/android/settings/wifi/LanInfo$1;->this$0:Lcom/android/settings/wifi/LanInfo;

    #getter for: Lcom/android/settings/wifi/LanInfo;->mGatewayPref:Lcom/htc/preference/HtcPreference;
    invoke-static {v3}, Lcom/android/settings/wifi/LanInfo;->access$300(Lcom/android/settings/wifi/LanInfo;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    iget v4, v1, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v4}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v3, p0, Lcom/android/settings/wifi/LanInfo$1;->this$0:Lcom/android/settings/wifi/LanInfo;

    #getter for: Lcom/android/settings/wifi/LanInfo;->mNetMaskPref:Lcom/htc/preference/HtcPreference;
    invoke-static {v3}, Lcom/android/settings/wifi/LanInfo;->access$400(Lcom/android/settings/wifi/LanInfo;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    iget v4, v1, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v4}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 65
    .end local v1           #info:Landroid/net/DhcpInfo;
    .end local v2           #netinfo:Landroid/net/NetworkInfo;
    :cond_0
    :goto_1
    return-void

    .restart local v2       #netinfo:Landroid/net/NetworkInfo;
    :cond_1
    move v3, v5

    .line 45
    goto :goto_0

    .line 58
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/LanInfo$1;->this$0:Lcom/android/settings/wifi/LanInfo;

    #setter for: Lcom/android/settings/wifi/LanInfo;->mIsConnected:Z
    invoke-static {v3, v5}, Lcom/android/settings/wifi/LanInfo;->access$002(Lcom/android/settings/wifi/LanInfo;Z)Z

    .line 59
    iget-object v3, p0, Lcom/android/settings/wifi/LanInfo$1;->this$0:Lcom/android/settings/wifi/LanInfo;

    #getter for: Lcom/android/settings/wifi/LanInfo;->mIpPref:Lcom/htc/preference/HtcPreference;
    invoke-static {v3}, Lcom/android/settings/wifi/LanInfo;->access$200(Lcom/android/settings/wifi/LanInfo;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 60
    iget-object v3, p0, Lcom/android/settings/wifi/LanInfo$1;->this$0:Lcom/android/settings/wifi/LanInfo;

    #getter for: Lcom/android/settings/wifi/LanInfo;->mNetMaskPref:Lcom/htc/preference/HtcPreference;
    invoke-static {v3}, Lcom/android/settings/wifi/LanInfo;->access$400(Lcom/android/settings/wifi/LanInfo;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 61
    iget-object v3, p0, Lcom/android/settings/wifi/LanInfo$1;->this$0:Lcom/android/settings/wifi/LanInfo;

    #getter for: Lcom/android/settings/wifi/LanInfo;->mGatewayPref:Lcom/htc/preference/HtcPreference;
    invoke-static {v3}, Lcom/android/settings/wifi/LanInfo;->access$300(Lcom/android/settings/wifi/LanInfo;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_1
.end method
