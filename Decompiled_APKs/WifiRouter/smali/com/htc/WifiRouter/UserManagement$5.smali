.class Lcom/htc/WifiRouter/UserManagement$5;
.super Ljava/lang/Object;
.source "UserManagement.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;


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
    .line 751
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$5;->this$0:Lcom/htc/WifiRouter/UserManagement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 755
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$5;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$2000(Lcom/htc/WifiRouter/UserManagement;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select where: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$5;->this$0:Lcom/htc/WifiRouter/UserManagement;

    add-int/lit8 v1, p3, 0x1

    #setter for: Lcom/htc/WifiRouter/UserManagement;->max_connection:I
    invoke-static {v0, v1}, Lcom/htc/WifiRouter/UserManagement;->access$2102(Lcom/htc/WifiRouter/UserManagement;I)I

    .line 757
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->getHtcWrapWifiApProfile(Landroid/net/wifi/WifiConfiguration;)Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement$5;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->max_connection:I
    invoke-static {v1}, Lcom/htc/WifiRouter/UserManagement;->access$2100(Lcom/htc/WifiRouter/UserManagement;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration$HtcWrapHotspotProfile;->setMaxConns(I)V

    .line 758
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$5;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #calls: Lcom/htc/WifiRouter/UserManagement;->updateHotspotProfile()V
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$2200(Lcom/htc/WifiRouter/UserManagement;)V

    .line 759
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$5;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->allowed_only:Z
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$500(Lcom/htc/WifiRouter/UserManagement;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$5;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #calls: Lcom/htc/WifiRouter/UserManagement;->relayoutDeviceList()V
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$700(Lcom/htc/WifiRouter/UserManagement;)V

    .line 762
    :cond_0
    return-void
.end method

.method public onNothingSelected(Lcom/htc/widget/HtcAdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 767
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    return-void
.end method
