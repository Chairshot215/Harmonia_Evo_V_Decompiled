.class Lcom/htc/WifiRouter/UserManagement$6;
.super Ljava/lang/Object;
.source "UserManagement.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/WifiRouter/UserManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/UserManagement;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/UserManagement;)V
    .locals 0
    .parameter

    .prologue
    .line 770
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$6;->this$0:Lcom/htc/WifiRouter/UserManagement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 772
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$6;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->allowed_only:Z
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$500(Lcom/htc/WifiRouter/UserManagement;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 773
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->setEnableMacFilter(I)V

    .line 774
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$6;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mCheckbox:Lcom/htc/widget/HtcListItemCheckBox;
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$2300(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 775
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$6;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #setter for: Lcom/htc/WifiRouter/UserManagement;->allowed_only:Z
    invoke-static {v0, v2}, Lcom/htc/WifiRouter/UserManagement;->access$502(Lcom/htc/WifiRouter/UserManagement;Z)Z

    .line 776
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$6;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #calls: Lcom/htc/WifiRouter/UserManagement;->updateHotspotMacFilter()V
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$2400(Lcom/htc/WifiRouter/UserManagement;)V

    .line 777
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$6;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #calls: Lcom/htc/WifiRouter/UserManagement;->reLayout()V
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$2500(Lcom/htc/WifiRouter/UserManagement;)V

    .line 781
    :goto_0
    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$6;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #calls: Lcom/htc/WifiRouter/UserManagement;->showAllowedUserDialog()V
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$2600(Lcom/htc/WifiRouter/UserManagement;)V

    goto :goto_0
.end method
