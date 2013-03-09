.class Lcom/htc/dmc/DmrListActivity$10;
.super Ljava/lang/Object;
.source "DmrListActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/DmrListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/DmrListActivity;


# direct methods
.method constructor <init>(Lcom/htc/dmc/DmrListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$10;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "whichButton"
    .parameter "arg3"
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
    .local p1, adapterView:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v3, 0x0

    .line 1141
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$10;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$10;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, p3, :cond_0

    .line 1142
    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity$10;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$10;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v1}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->GetId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/htc/dmc/DmrListActivity;->access$802(Lcom/htc/dmc/DmrListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1143
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$10;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-virtual {v1, p3}, Lcom/htc/dmc/DmrListActivity;->setRadioButtonChecked(I)V

    .line 1145
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$10;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v1}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->getBTDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 1146
    .local v0, btDeviceCurrent:Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_1

    .line 1147
    const-string v1, "[DmrListActivity]"

    const-string v2, "BT Device null, this is not BT Device..."

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity$10;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$10;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    #setter for: Lcom/htc/dmc/DmrListActivity;->mLastDmr:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    invoke-static {v2, v1}, Lcom/htc/dmc/DmrListActivity;->access$902(Lcom/htc/dmc/DmrListActivity;Lcom/htc/dmc/DmrListActivity$DlnaInfo;)Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    .line 1149
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$10;->this$0:Lcom/htc/dmc/DmrListActivity;

    #setter for: Lcom/htc/dmc/DmrListActivity;->mDefaultBTDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v3}, Lcom/htc/dmc/DmrListActivity;->access$1002(Lcom/htc/dmc/DmrListActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1150
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$10;->this$0:Lcom/htc/dmc/DmrListActivity;

    #setter for: Lcom/htc/dmc/DmrListActivity;->mDefaultBTDmrId:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/htc/dmc/DmrListActivity;->access$1102(Lcom/htc/dmc/DmrListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1163
    .end local v0           #btDeviceCurrent:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 1155
    .restart local v0       #btDeviceCurrent:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$10;->this$0:Lcom/htc/dmc/DmrListActivity;

    #setter for: Lcom/htc/dmc/DmrListActivity;->mDefaultBTDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1, v0}, Lcom/htc/dmc/DmrListActivity;->access$1002(Lcom/htc/dmc/DmrListActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1156
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$10;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity$10;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mDefaultBTDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$1000(Lcom/htc/dmc/DmrListActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/dmc/DmrListActivity;->mDefaultBTDmrId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/dmc/DmrListActivity;->access$1102(Lcom/htc/dmc/DmrListActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
