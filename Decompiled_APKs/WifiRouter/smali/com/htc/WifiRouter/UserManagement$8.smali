.class Lcom/htc/WifiRouter/UserManagement$8;
.super Ljava/lang/Object;
.source "UserManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 800
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$8;->this$0:Lcom/htc/WifiRouter/UserManagement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 802
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->getEnableMacFilter()I

    move-result v0

    if-nez v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$8;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mCheckbox:Lcom/htc/widget/HtcListItemCheckBox;
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$2300(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/widget/HtcListItemCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 805
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$8;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #setter for: Lcom/htc/WifiRouter/UserManagement;->allowed_only:Z
    invoke-static {v0, v1}, Lcom/htc/WifiRouter/UserManagement;->access$502(Lcom/htc/WifiRouter/UserManagement;Z)Z

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$8;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #setter for: Lcom/htc/WifiRouter/UserManagement;->mAllowedUserDialogShowed:Z
    invoke-static {v0, v1}, Lcom/htc/WifiRouter/UserManagement;->access$2702(Lcom/htc/WifiRouter/UserManagement;Z)Z

    .line 808
    return-void
.end method
