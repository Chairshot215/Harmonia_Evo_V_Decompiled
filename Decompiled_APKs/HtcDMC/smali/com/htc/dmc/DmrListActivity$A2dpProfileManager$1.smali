.class Lcom/htc/dmc/DmrListActivity$A2dpProfileManager$1;
.super Ljava/lang/Object;
.source "DmrListActivity.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;


# direct methods
.method constructor <init>(Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;)V
    .locals 0
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager$1;->this$1:Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .parameter "nProfile"
    .parameter "btProfile"

    .prologue
    .line 841
    const-string v0, "[DmrListActivity]"

    const-string v1, "mBTSvcListener onServiceConnected"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager$1;->this$1:Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2
    #setter for: Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, p2}, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->access$102(Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 845
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager$1;->this$1:Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;

    iget-object v0, v0, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v1, 0x1

    #calls: Lcom/htc/dmc/DmrListActivity;->refreshUIBT(Z)V
    invoke-static {v0, v1}, Lcom/htc/dmc/DmrListActivity;->access$200(Lcom/htc/dmc/DmrListActivity;Z)V

    .line 849
    :goto_0
    return-void

    .line 848
    .restart local p2
    :cond_0
    const-string v0, "[DmrListActivity]"

    const-string v1, "This is not a2dp"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 853
    const-string v0, "[DmrListActivity]"

    const-string v1, "mBTSvcListener onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    return-void
.end method
