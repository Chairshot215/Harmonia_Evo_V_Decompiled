.class Lcom/htc/dmc/DmrListActivity$14;
.super Landroid/os/Handler;
.source "DmrListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/DmrListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mBTEnabledPollingCount:I

.field final synthetic this$0:Lcom/htc/dmc/DmrListActivity;


# direct methods
.method constructor <init>(Lcom/htc/dmc/DmrListActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1816
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1999
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/dmc/DmrListActivity$14;->mBTEnabledPollingCount:I

    return-void
.end method

.method private reGenerateRenderList()V
    .locals 15

    .prologue
    .line 2001
    const/4 v12, 0x0

    .line 2002
    .local v12, dlHeader:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    const/4 v0, 0x0

    .line 2004
    .local v0, tmpDMR:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2006
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/dmc/DmrListActivity;->mWifiDMRCount:I

    .line 2007
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/dmc/DmrListActivity;->mBTScanedDMRCount:I

    .line 2008
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v2, 0x0

    iput v2, v1, Lcom/htc/dmc/DmrListActivity;->mBTPairedDMRCount:I

    .line 2009
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/htc/dmc/DmrListActivity;->mIsDMREmpty:Z

    .line 2011
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-virtual {v1}, Lcom/htc/dmc/DmrListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/dmc/utils/HtcCustomizedDeviceName;->get(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 2014
    .local v3, szDeviceName:Ljava/lang/String;
    new-instance v12, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    .end local v12           #dlHeader:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v2, 0x0

    invoke-direct {v12, v1, v2}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;-><init>(Lcom/htc/dmc/DmrListActivity;I)V

    .line 2015
    .restart local v12       #dlHeader:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2017
    new-instance v0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    .end local v0           #tmpDMR:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;-><init>(Lcom/htc/dmc/DmrListActivity;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 2018
    .restart local v0       #tmpDMR:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2020
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #calls: Lcom/htc/dmc/DmrListActivity;->getWifiEnabled()I
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$400(Lcom/htc/dmc/DmrListActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderer:[Lcom/htc/dlnainterface/DLNARendererData;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$2300(Lcom/htc/dmc/DmrListActivity;)[Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderer:[Lcom/htc/dlnainterface/DLNARendererData;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$2300(Lcom/htc/dmc/DmrListActivity;)[Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 2023
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderer:[Lcom/htc/dlnainterface/DLNARendererData;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$2300(Lcom/htc/dmc/DmrListActivity;)[Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v2

    array-length v2, v2

    iput v2, v1, Lcom/htc/dmc/DmrListActivity;->mWifiDMRCount:I

    .line 2026
    new-instance v12, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    .end local v12           #dlHeader:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v2, 0x2

    invoke-direct {v12, v1, v2}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;-><init>(Lcom/htc/dmc/DmrListActivity;I)V

    .line 2027
    .restart local v12       #dlHeader:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2029
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderer:[Lcom/htc/dlnainterface/DLNARendererData;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$2300(Lcom/htc/dmc/DmrListActivity;)[Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v1

    array-length v1, v1

    if-ge v13, v1, :cond_0

    .line 2030
    new-instance v0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    .end local v0           #tmpDMR:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    iget-object v5, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderer:[Lcom/htc/dlnainterface/DLNARendererData;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$2300(Lcom/htc/dmc/DmrListActivity;)[Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v1

    aget-object v1, v1, v13

    iget-object v6, v1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderer:[Lcom/htc/dlnainterface/DLNARendererData;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$2300(Lcom/htc/dmc/DmrListActivity;)[Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v1

    aget-object v1, v1, v13

    iget-object v7, v1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderer:[Lcom/htc/dlnainterface/DLNARendererData;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$2300(Lcom/htc/dmc/DmrListActivity;)[Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v1

    aget-object v1, v1, v13

    iget v8, v1, Lcom/htc/dlnainterface/DLNARendererData;->thumbIconType:I

    const/4 v9, 0x3

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;-><init>(Lcom/htc/dmc/DmrListActivity;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2035
    .restart local v0       #tmpDMR:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    const-string v1, "[DmrListActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Renderder ID = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderer:[Lcom/htc/dlnainterface/DLNARendererData;
    invoke-static {v4}, Lcom/htc/dmc/DmrListActivity;->access$2300(Lcom/htc/dmc/DmrListActivity;)[Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v4

    aget-object v4, v4, v13

    iget-object v4, v4, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    const-string v1, "[DmrListActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Renderder Name = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderer:[Lcom/htc/dlnainterface/DLNARendererData;
    invoke-static {v4}, Lcom/htc/dmc/DmrListActivity;->access$2300(Lcom/htc/dmc/DmrListActivity;)[Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v4

    aget-object v4, v4, v13

    iget-object v4, v4, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    const-string v1, "[DmrListActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Renderder Type = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderer:[Lcom/htc/dlnainterface/DLNARendererData;
    invoke-static {v4}, Lcom/htc/dmc/DmrListActivity;->access$2300(Lcom/htc/dmc/DmrListActivity;)[Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v4

    aget-object v4, v4, v13

    iget v4, v4, Lcom/htc/dlnainterface/DLNARendererData;->thumbIconType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2029
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 2043
    .end local v13           #i:I
    :cond_0
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mCookie:I
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$1800(Lcom/htc/dmc/DmrListActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 2046
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2049
    .local v11, BTRenderer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/dmc/DmrListActivity$DlnaInfo;>;"
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget-object v2, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mBTAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$500(Lcom/htc/dmc/DmrListActivity;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->listBondedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    #setter for: Lcom/htc/dmc/DmrListActivity;->mBTPairedObjList:[Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/htc/dmc/DmrListActivity;->access$3502(Lcom/htc/dmc/DmrListActivity;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2051
    const-string v1, "[DmrListActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bonded devices count:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mBTPairedObjList:[Ljava/lang/Object;
    invoke-static {v4}, Lcom/htc/dmc/DmrListActivity;->access$3500(Lcom/htc/dmc/DmrListActivity;)[Ljava/lang/Object;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mBTPairedObjList:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$3500(Lcom/htc/dmc/DmrListActivity;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-ge v13, v1, :cond_3

    .line 2054
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mBTPairedObjList:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$3500(Lcom/htc/dmc/DmrListActivity;)[Ljava/lang/Object;

    move-result-object v1

    aget-object v10, v1, v13

    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 2055
    .local v10, BTPairedDevice:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #calls: Lcom/htc/dmc/DmrListActivity;->isBTMusicSupported(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v1, v10}, Lcom/htc/dmc/DmrListActivity;->access$2400(Lcom/htc/dmc/DmrListActivity;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2057
    const-string v1, "[DmrListActivity]"

    const-string v2, "BT Renderder Class:A2DP, HEADSET"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    const-string v1, "[DmrListActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT Renderder ID(Address) = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    const-string v1, "[DmrListActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT Renderder Name = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    const-string v1, "[DmrListActivity]"

    const-string v2, "BT Renderder Type = 5"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    const/4 v8, 0x5

    .line 2065
    .local v8, tmpIconType:I
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mA2dpPMan:Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$2600(Lcom/htc/dmc/DmrListActivity;)Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/htc/dmc/DmrListActivity$A2dpProfileManager;->isBoseDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2066
    const/16 v8, 0x3e9

    .line 2068
    :cond_1
    new-instance v0, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    .end local v0           #tmpDMR:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    iget-object v5, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v6, 0x0

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x5

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;-><init>(Lcom/htc/dmc/DmrListActivity;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2072
    .restart local v0       #tmpDMR:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    invoke-virtual {v0, v10}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->setBTDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 2073
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2053
    .end local v8           #tmpIconType:I
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 2077
    :cond_2
    const-string v1, "[DmrListActivity]"

    const-string v2, "BT Renderder Class not match, bypassed"

    invoke-static {v1, v2}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2080
    .end local v10           #BTPairedDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_3
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 2083
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Lcom/htc/dmc/DmrListActivity;->mBTPairedDMRCount:I

    .line 2086
    new-instance v12, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    .end local v12           #dlHeader:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v2, 0x4

    invoke-direct {v12, v1, v2}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;-><init>(Lcom/htc/dmc/DmrListActivity;I)V

    .line 2087
    .restart local v12       #dlHeader:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2088
    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_4

    .line 2089
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2088
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 2092
    .end local v11           #BTRenderer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/dmc/DmrListActivity$DlnaInfo;>;"
    .end local v13           #i:I
    :cond_4
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #calls: Lcom/htc/dmc/DmrListActivity;->getWifiEnabled()I
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$400(Lcom/htc/dmc/DmrListActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #calls: Lcom/htc/dmc/DmrListActivity;->getBTEnabled()I
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$600(Lcom/htc/dmc/DmrListActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderer:[Lcom/htc/dlnainterface/DLNARendererData;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$2300(Lcom/htc/dmc/DmrListActivity;)[Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderer:[Lcom/htc/dlnainterface/DLNARendererData;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$2300(Lcom/htc/dmc/DmrListActivity;)[Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_5

    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 2097
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/htc/dmc/DmrListActivity;->mIsDMREmpty:Z

    .line 2099
    new-instance v14, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/16 v2, 0xa

    invoke-direct {v14, v1, v2}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;-><init>(Lcom/htc/dmc/DmrListActivity;I)V

    .line 2100
    .local v14, tmpItem:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    iget-object v1, p0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2104
    .end local v14           #tmpItem:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    :cond_5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 1825
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1997
    :cond_0
    :goto_0
    return-void

    .line 1827
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mAdapter:Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$2900(Lcom/htc/dmc/DmrListActivity;)Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/dmc/DmrListActivity$DlnaListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1830
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mDirectTimer:Ljava/util/Timer;
    invoke-static {v8}, Lcom/htc/dmc/DmrListActivity;->access$1300(Lcom/htc/dmc/DmrListActivity;)Ljava/util/Timer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/dmc/DmrListActivity;->TimerDisable(Ljava/util/Timer;)Ljava/util/Timer;

    move-result-object v7

    #setter for: Lcom/htc/dmc/DmrListActivity;->mDirectTimer:Ljava/util/Timer;
    invoke-static {v2, v7}, Lcom/htc/dmc/DmrListActivity;->access$1302(Lcom/htc/dmc/DmrListActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 1832
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    .line 1833
    .local v12, bdR:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const-string v7, "arg0"

    invoke-virtual {v12, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;
    invoke-static {v2, v7}, Lcom/htc/dmc/DmrListActivity;->access$802(Lcom/htc/dmc/DmrListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$800(Lcom/htc/dmc/DmrListActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1840
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget-wide v9, v2, Lcom/htc/dmc/DmrListActivity;->mStartedTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1f4

    cmp-long v2, v7, v9

    if-lez v2, :cond_2

    .line 1841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #calls: Lcom/htc/dmc/DmrListActivity;->DMRSelected()V
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$300(Lcom/htc/dmc/DmrListActivity;)V

    goto :goto_0

    .line 1843
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mDirectSleepTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$1200(Lcom/htc/dmc/DmrListActivity;)Ljava/util/Timer;

    move-result-object v2

    new-instance v3, Lcom/htc/dmc/DmrListActivity$DirectSleepTimerTask;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v9, 0x0

    invoke-direct {v3, v7, v9}, Lcom/htc/dmc/DmrListActivity$DirectSleepTimerTask;-><init>(Lcom/htc/dmc/DmrListActivity;Lcom/htc/dmc/DmrListActivity$1;)V

    const-wide/16 v4, 0x1f4

    const-wide/16 v6, -0x1

    invoke-virtual/range {v1 .. v7}, Lcom/htc/dmc/DmrListActivity;->TimerEnable(Ljava/util/Timer;Ljava/util/TimerTask;JJ)Ljava/util/Timer;

    move-result-object v2

    #setter for: Lcom/htc/dmc/DmrListActivity;->mDirectSleepTimer:Ljava/util/Timer;
    invoke-static {v8, v2}, Lcom/htc/dmc/DmrListActivity;->access$1202(Lcom/htc/dmc/DmrListActivity;Ljava/util/Timer;)Ljava/util/Timer;

    goto :goto_0

    .line 1846
    .end local v12           #bdR:Landroid/os/Bundle;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #calls: Lcom/htc/dmc/DmrListActivity;->DMRSelected()V
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$300(Lcom/htc/dmc/DmrListActivity;)V

    goto/16 :goto_0

    .line 1849
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-virtual {v2}, Lcom/htc/dmc/DmrListActivity;->cancelSearchDialog()V

    goto/16 :goto_0

    .line 1852
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "uniqueID"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1853
    .local v3, uniqueID:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "rendererName"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1854
    .local v4, rendererName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "thumbIconType"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1856
    .local v5, thumbIconType:I
    if-eqz v3, :cond_3

    if-nez v4, :cond_4

    .line 1857
    :cond_3
    const-string v2, "[DmrListActivity]"

    const-string v7, "RENDERER_ADD: uniqueID or rendererName null"

    invoke-static {v2, v7}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    const-string v2, "[DmrListActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RENDERER_ADD: uniqueID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    const-string v2, "[DmrListActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RENDERER_ADD: uniqueID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1865
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_5

    .line 1866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v2}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->GetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1865
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1870
    :cond_5
    const-string v2, "[DmrListActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Renderer added notify: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    const-string v2, "[DmrListActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "renderer added notify: icon type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    new-instance v1, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v6, 0x3

    invoke-direct/range {v1 .. v6}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;-><init>(Lcom/htc/dmc/DmrListActivity;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1874
    .local v1, newRender:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget v2, v2, Lcom/htc/dmc/DmrListActivity;->mWifiDMRCount:I

    if-gtz v2, :cond_6

    .line 1876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v7, 0x0

    iput v7, v2, Lcom/htc/dmc/DmrListActivity;->mWifiDMRCount:I

    .line 1877
    new-instance v14, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v7, 0x2

    invoke-direct {v14, v2, v7}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;-><init>(Lcom/htc/dmc/DmrListActivity;I)V

    .line 1878
    .local v14, dlHeader:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v7, 0x2

    invoke-virtual {v2, v7, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1881
    .end local v14           #dlHeader:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget v7, v7, Lcom/htc/dmc/DmrListActivity;->mWifiDMRCount:I

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v2, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1882
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget v7, v2, Lcom/htc/dmc/DmrListActivity;->mWifiDMRCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/htc/dmc/DmrListActivity;->mWifiDMRCount:I

    goto/16 :goto_0

    .line 1886
    .end local v1           #newRender:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    .end local v3           #uniqueID:Ljava/lang/String;
    .end local v4           #rendererName:Ljava/lang/String;
    .end local v5           #thumbIconType:I
    .end local v15           #i:I
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "uniqueID"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1887
    .restart local v3       #uniqueID:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "rendererName"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1888
    .restart local v4       #rendererName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "thumbIconType"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1891
    .restart local v5       #thumbIconType:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "btDevice"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    .line 1892
    .local v13, btDevice:Landroid/bluetooth/BluetoothDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #calls: Lcom/htc/dmc/DmrListActivity;->isBTMusicSupported(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v2, v13}, Lcom/htc/dmc/DmrListActivity;->access$2400(Lcom/htc/dmc/DmrListActivity;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1894
    if-eqz v3, :cond_7

    if-nez v4, :cond_8

    .line 1895
    :cond_7
    const-string v2, "[DmrListActivity]"

    const-string v7, "BT_RENDERER_ADD: uniqueID or rendererName null"

    invoke-static {v2, v7}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    const-string v2, "[DmrListActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BT_RENDERER_ADD: uniqueID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    const-string v2, "[DmrListActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BT_RENDERER_ADD: uniqueID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1903
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_9

    .line 1904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v2}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->GetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1903
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1908
    :cond_9
    const-string v2, "[DmrListActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Renderer added notify: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    const-string v2, "[DmrListActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "renderer added notify: icon type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    new-instance v6, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v8, 0x0

    const/4 v11, 0x5

    move-object v9, v4

    move v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;-><init>(Lcom/htc/dmc/DmrListActivity;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1912
    .local v6, newBTRender:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    invoke-virtual {v6, v13}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->setBTDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 1915
    const-string v2, "[DmrListActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BTScaned:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget v8, v8, Lcom/htc/dmc/DmrListActivity;->mBTScanedDMRCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " BTPaired:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget v8, v8, Lcom/htc/dmc/DmrListActivity;->mBTPairedDMRCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    const-string v2, "[DmrListActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RenderList:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget v2, v2, Lcom/htc/dmc/DmrListActivity;->mBTScanedDMRCount:I

    if-gtz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget v2, v2, Lcom/htc/dmc/DmrListActivity;->mBTPairedDMRCount:I

    if-gtz v2, :cond_a

    .line 1921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v7, 0x0

    iput v7, v2, Lcom/htc/dmc/DmrListActivity;->mBTScanedDMRCount:I

    .line 1922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v7, 0x0

    iput v7, v2, Lcom/htc/dmc/DmrListActivity;->mBTPairedDMRCount:I

    .line 1923
    new-instance v14, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v7, 0x4

    invoke-direct {v14, v2, v7}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;-><init>(Lcom/htc/dmc/DmrListActivity;I)V

    .line 1924
    .restart local v14       #dlHeader:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1927
    .end local v14           #dlHeader:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget v7, v2, Lcom/htc/dmc/DmrListActivity;->mBTScanedDMRCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v2, Lcom/htc/dmc/DmrListActivity;->mBTScanedDMRCount:I

    goto/16 :goto_0

    .line 1934
    .end local v3           #uniqueID:Ljava/lang/String;
    .end local v4           #rendererName:Ljava/lang/String;
    .end local v5           #thumbIconType:I
    .end local v6           #newBTRender:Lcom/htc/dmc/DmrListActivity$DlnaInfo;
    .end local v13           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v15           #i:I
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "uniqueID"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1936
    .restart local v3       #uniqueID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    if-nez v3, :cond_c

    .line 1938
    :cond_b
    const-string v2, "[DmrListActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RENDERER REMOVE: ID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1942
    :cond_c
    const/4 v15, 0x1

    .restart local v15       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_0

    .line 1943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v2}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->getItemType()I

    move-result v2

    const/4 v7, 0x3

    if-ne v2, v7, :cond_d

    .line 1945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/dmc/DmrListActivity$DlnaInfo;

    invoke-virtual {v2}, Lcom/htc/dmc/DmrListActivity$DlnaInfo;->GetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget v7, v2, Lcom/htc/dmc/DmrListActivity;->mWifiDMRCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v2, Lcom/htc/dmc/DmrListActivity;->mWifiDMRCount:I

    .line 1948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    iget v2, v2, Lcom/htc/dmc/DmrListActivity;->mWifiDMRCount:I

    if-gtz v2, :cond_0

    .line 1950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    const/4 v7, 0x0

    iput v7, v2, Lcom/htc/dmc/DmrListActivity;->mWifiDMRCount:I

    .line 1951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$700(Lcom/htc/dmc/DmrListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1942
    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1960
    .end local v3           #uniqueID:Ljava/lang/String;
    .end local v15           #i:I
    :pswitch_7
    const-string v2, "WeiaTest"

    const-string v7, "RENDERER UPDATE: regenerate"

    invoke-static {v2, v7}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderer:[Lcom/htc/dlnainterface/DLNARendererData;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$2300(Lcom/htc/dmc/DmrListActivity;)[Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1963
    const-string v2, "[DmrListActivity]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "old mRenderer size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mRenderer:[Lcom/htc/dlnainterface/DLNARendererData;
    invoke-static {v8}, Lcom/htc/dmc/DmrListActivity;->access$2300(Lcom/htc/dmc/DmrListActivity;)[Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/htc/dmc/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/htc/dmc/DmrListActivity$14;->reGenerateRenderList()V

    .line 1967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$800(Lcom/htc/dmc/DmrListActivity;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mDefaultBTDmrId:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$1100(Lcom/htc/dmc/DmrListActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mDefaultBTDmrId:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$1100(Lcom/htc/dmc/DmrListActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/htc/dmc/DmrListActivity;->setRadioButtonChecked(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1970
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mDefaultDmrId:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$800(Lcom/htc/dmc/DmrListActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/htc/dmc/DmrListActivity;->setRadioButtonChecked(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1974
    :pswitch_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/dmc/DmrListActivity$14;->mBTEnabledPollingCount:I

    const/16 v7, 0x32

    if-lt v2, v7, :cond_11

    .line 1976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$3100(Lcom/htc/dmc/DmrListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$3100(Lcom/htc/dmc/DmrListActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    .line 1979
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-virtual {v2}, Lcom/htc/dmc/DmrListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v7, "BT Enabling failed"

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1983
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #calls: Lcom/htc/dmc/DmrListActivity;->getBTEnabled()I
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$600(Lcom/htc/dmc/DmrListActivity;)I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_12

    .line 1985
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/dmc/DmrListActivity$14;->mBTEnabledPollingCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/dmc/DmrListActivity$14;->mBTEnabledPollingCount:I

    .line 1986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$1400(Lcom/htc/dmc/DmrListActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 1987
    .local v16, msgBT:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$1400(Lcom/htc/dmc/DmrListActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v7, 0xc8

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1991
    .end local v16           #msgBT:Landroid/os/Message;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #getter for: Lcom/htc/dmc/DmrListActivity;->mPreConnectBTDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v7}, Lcom/htc/dmc/DmrListActivity;->access$3200(Lcom/htc/dmc/DmrListActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    #calls: Lcom/htc/dmc/DmrListActivity;->ConnectBT(Landroid/bluetooth/BluetoothDevice;)V
    invoke-static {v2, v7}, Lcom/htc/dmc/DmrListActivity;->access$3300(Lcom/htc/dmc/DmrListActivity;Landroid/bluetooth/BluetoothDevice;)V

    .line 1992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    #calls: Lcom/htc/dmc/DmrListActivity;->setResultToMyDevice()V
    invoke-static {v2}, Lcom/htc/dmc/DmrListActivity;->access$3400(Lcom/htc/dmc/DmrListActivity;)V

    .line 1993
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/dmc/DmrListActivity$14;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-virtual {v2}, Lcom/htc/dmc/DmrListActivity;->finish()V

    goto/16 :goto_0

    .line 1825
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method
