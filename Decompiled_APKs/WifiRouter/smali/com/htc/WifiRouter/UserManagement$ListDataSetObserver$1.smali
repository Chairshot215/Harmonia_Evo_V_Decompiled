.class Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver$1;
.super Ljava/lang/Object;
.source "UserManagement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver$1;->this$1:Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1116
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver$1;->this$1:Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;

    iget-object v0, v0, Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->w_dirty:Z
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$2800(Lcom/htc/WifiRouter/UserManagement;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1117
    sget-object v0, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getWhitelist()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1119
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver$1;->this$1:Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;

    iget-object v0, v0, Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #setter for: Lcom/htc/WifiRouter/UserManagement;->w_dirty:Z
    invoke-static {v0, v2}, Lcom/htc/WifiRouter/UserManagement;->access$2802(Lcom/htc/WifiRouter/UserManagement;Z)Z

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver$1;->this$1:Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;

    iget-object v0, v0, Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->b_dirty:Z
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$3100(Lcom/htc/WifiRouter/UserManagement;)Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1123
    sget-object v0, Lcom/htc/WifiRouter/UserManagement;->mBlackList:Ljava/util/ArrayList;

    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getBlocklist()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1125
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver$1;->this$1:Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;

    iget-object v0, v0, Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #setter for: Lcom/htc/WifiRouter/UserManagement;->b_dirty:Z
    invoke-static {v0, v2}, Lcom/htc/WifiRouter/UserManagement;->access$3102(Lcom/htc/WifiRouter/UserManagement;Z)Z

    .line 1127
    :cond_1
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver$1;->this$1:Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;

    iget-object v0, v0, Lcom/htc/WifiRouter/UserManagement$ListDataSetObserver;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #calls: Lcom/htc/WifiRouter/UserManagement;->updateHotspotMacFilter()V
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$2400(Lcom/htc/WifiRouter/UserManagement;)V

    .line 1129
    return-void
.end method
