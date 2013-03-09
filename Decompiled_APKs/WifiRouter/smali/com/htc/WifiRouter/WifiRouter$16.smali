.class Lcom/htc/WifiRouter/WifiRouter$16;
.super Ljava/lang/Object;
.source "WifiRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/WifiRouter;->switchHotspotOnOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/WifiRouter;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/WifiRouter;)V
    .locals 0
    .parameter

    .prologue
    .line 786
    iput-object p1, p0, Lcom/htc/WifiRouter/WifiRouter$16;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 788
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$16;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/WifiRouter/WifiRouter;->access$500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 789
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$16;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/htc/WifiRouter/WifiRouter;->access$2500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    .line 790
    .local v4, wifiState:I
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$16;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mState:Z
    invoke-static {v5}, Lcom/htc/WifiRouter/WifiRouter;->access$300(Lcom/htc/WifiRouter/WifiRouter;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 792
    :cond_0
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$16;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/htc/WifiRouter/WifiRouter;->access$2500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 797
    :try_start_0
    const-string v5, "wifi_saved_state"

    const/4 v6, 0x1

    invoke-static {v0, v5, v6}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$16;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/htc/WifiRouter/WifiRouter;->access$2500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 803
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$16;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/htc/WifiRouter/WifiRouter;->access$2500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    sget-object v6, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, p0, Lcom/htc/WifiRouter/WifiRouter$16;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mState:Z
    invoke-static {v7}, Lcom/htc/WifiRouter/WifiRouter;->access$300(Lcom/htc/WifiRouter/WifiRouter;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 805
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$16;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mState:Z
    invoke-static {v5}, Lcom/htc/WifiRouter/WifiRouter;->access$300(Lcom/htc/WifiRouter/WifiRouter;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 806
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.usbtethering.warning_acg"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 807
    .local v2, mintent:Landroid/content/Intent;
    const/high16 v5, 0x1800

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 808
    const-string v5, "is_dialog_code"

    const/4 v6, 0x7

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 809
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$16;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/WifiRouter/WifiRouter;->access$500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 815
    .end local v2           #mintent:Landroid/content/Intent;
    :cond_2
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$16;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mState:Z
    invoke-static {v5}, Lcom/htc/WifiRouter/WifiRouter;->access$300(Lcom/htc/WifiRouter/WifiRouter;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 816
    const/4 v3, 0x0

    .line 818
    .local v3, wifiSavedState:I
    :try_start_1
    const-string v5, "wifi_saved_state"

    invoke-static {v0, v5}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    .line 822
    :goto_1
    if-ne v3, v8, :cond_3

    .line 823
    iget-object v5, p0, Lcom/htc/WifiRouter/WifiRouter$16;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/htc/WifiRouter/WifiRouter;->access$2500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 828
    :try_start_2
    const-string v5, "wifi_saved_state"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 835
    .end local v3           #wifiSavedState:I
    :cond_3
    :goto_2
    return-void

    .line 798
    :catch_0
    move-exception v1

    .line 799
    .local v1, e:Ljava/lang/SecurityException;
    const-string v5, "WifiRouter"

    const-string v6, "No writing Settings Secure permission, unable to set WIFI_SAVED_STATE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 829
    .end local v1           #e:Ljava/lang/SecurityException;
    .restart local v3       #wifiSavedState:I
    :catch_1
    move-exception v1

    .line 830
    .restart local v1       #e:Ljava/lang/SecurityException;
    const-string v5, "WifiRouter"

    const-string v6, "No writing Settings Secure permission, unable to set WIFI_SAVED_STATE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 820
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v5

    goto :goto_1
.end method
