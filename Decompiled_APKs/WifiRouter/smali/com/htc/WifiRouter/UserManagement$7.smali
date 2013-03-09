.class Lcom/htc/WifiRouter/UserManagement$7;
.super Ljava/lang/Object;
.source "UserManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/UserManagement;->showAllowedUserDialog()V
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
    .line 790
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$7;->this$0:Lcom/htc/WifiRouter/UserManagement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 792
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->setEnableMacFilter(I)V

    .line 793
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$7;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mCheckbox:Lcom/htc/widget/HtcListItemCheckBox;
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$2300(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 794
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$7;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #setter for: Lcom/htc/WifiRouter/UserManagement;->allowed_only:Z
    invoke-static {v0, v1}, Lcom/htc/WifiRouter/UserManagement;->access$502(Lcom/htc/WifiRouter/UserManagement;Z)Z

    .line 795
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$7;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #calls: Lcom/htc/WifiRouter/UserManagement;->updateHotspotMacFilter()V
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$2400(Lcom/htc/WifiRouter/UserManagement;)V

    .line 796
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$7;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #calls: Lcom/htc/WifiRouter/UserManagement;->reLayout()V
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$2500(Lcom/htc/WifiRouter/UserManagement;)V

    .line 797
    return-void
.end method
