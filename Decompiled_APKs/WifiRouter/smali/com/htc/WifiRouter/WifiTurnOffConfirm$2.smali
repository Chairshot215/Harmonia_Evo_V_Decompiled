.class Lcom/htc/WifiRouter/WifiTurnOffConfirm$2;
.super Ljava/lang/Object;
.source "WifiTurnOffConfirm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/WifiTurnOffConfirm;->showWifiTurnOffDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/WifiTurnOffConfirm;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/WifiTurnOffConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/WifiRouter/WifiTurnOffConfirm$2;->this$0:Lcom/htc/WifiRouter/WifiTurnOffConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x1

    .line 79
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiTurnOffConfirm$2;->this$0:Lcom/htc/WifiRouter/WifiTurnOffConfirm;

    #getter for: Lcom/htc/WifiRouter/WifiTurnOffConfirm;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiTurnOffConfirm;->access$100(Lcom/htc/WifiRouter/WifiTurnOffConfirm;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiTurnOffConfirm$2;->this$0:Lcom/htc/WifiRouter/WifiTurnOffConfirm;

    invoke-virtual {v1}, Lcom/htc/WifiRouter/WifiTurnOffConfirm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiTurnOffConfirm$2;->this$0:Lcom/htc/WifiRouter/WifiTurnOffConfirm;

    #getter for: Lcom/htc/WifiRouter/WifiTurnOffConfirm;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiTurnOffConfirm;->access$100(Lcom/htc/WifiRouter/WifiTurnOffConfirm;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiManager;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 96
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiTurnOffConfirm$2;->this$0:Lcom/htc/WifiRouter/WifiTurnOffConfirm;

    invoke-virtual {v1}, Lcom/htc/WifiRouter/WifiTurnOffConfirm;->finish()V

    .line 97
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "WifiTurnOffConfirm"

    const-string v2, "No writing Settings Secure permission, unable to set WIFI_SAVED_STATE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
