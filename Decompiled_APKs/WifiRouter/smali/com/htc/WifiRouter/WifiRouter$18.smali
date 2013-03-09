.class Lcom/htc/WifiRouter/WifiRouter$18;
.super Ljava/lang/Object;
.source "WifiRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/WifiRouter;->loadSetting()V
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
    .line 882
    iput-object p1, p0, Lcom/htc/WifiRouter/WifiRouter$18;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 884
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$18;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSecureType()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/WifiRouter/WifiRouter;->getSecurityTypeIndex(Ljava/lang/String;)I
    invoke-static {v1, v2}, Lcom/htc/WifiRouter/WifiRouter;->access$3300(Lcom/htc/WifiRouter/WifiRouter;Ljava/lang/String;)I

    move-result v0

    .line 885
    .local v0, securityIndex:I
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$18;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mSsid:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$1300(Lcom/htc/WifiRouter/WifiRouter;)Landroid/widget/EditText;

    move-result-object v1

    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 886
    sget-object v1, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 887
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$18;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$1500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/widget/EditText;

    move-result-object v1

    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 892
    :goto_0
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$18;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mSecurityType:Lcom/htc/widget/HtcSpinner;
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$1400(Lcom/htc/WifiRouter/WifiRouter;)Lcom/htc/widget/HtcSpinner;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 893
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$18;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mUIHandler:Lcom/htc/WifiRouter/WifiRouter$UiHandler;
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$3500(Lcom/htc/WifiRouter/WifiRouter;)Lcom/htc/WifiRouter/WifiRouter$UiHandler;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/WifiRouter/WifiRouter$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 894
    return-void

    .line 889
    :cond_0
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$18;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->mPassWord:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/WifiRouter/WifiRouter;->access$1500(Lcom/htc/WifiRouter/WifiRouter;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/WifiRouter/WifiRouter$18;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #getter for: Lcom/htc/WifiRouter/WifiRouter;->default_wpa_passwd:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/WifiRouter/WifiRouter;->access$3400(Lcom/htc/WifiRouter/WifiRouter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 890
    iget-object v1, p0, Lcom/htc/WifiRouter/WifiRouter$18;->this$0:Lcom/htc/WifiRouter/WifiRouter;

    #calls: Lcom/htc/WifiRouter/WifiRouter;->setSpinnerLayout(I)V
    invoke-static {v1, v0}, Lcom/htc/WifiRouter/WifiRouter;->access$3200(Lcom/htc/WifiRouter/WifiRouter;I)V

    goto :goto_0
.end method
