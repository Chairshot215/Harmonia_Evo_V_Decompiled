.class Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;
.super Landroid/os/Handler;
.source "OnlineSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/onlineskin/OnlineSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V
    .locals 0
    .parameter

    .prologue
    .line 884
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 886
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 888
    :sswitch_0
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->UpdateButton()V
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$1000(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    .line 890
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 891
    .local v2, strGuid:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$800(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 892
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$900(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;
    invoke-static {v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$900(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->getIdxOfSkin(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->notifyUpdateItem(I)V

    goto :goto_0

    .line 894
    :cond_1
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$900(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 898
    .end local v2           #strGuid:Ljava/lang/String;
    :sswitch_1
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->UpdateButton()V
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$1000(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    .line 900
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 901
    .local v1, strGUID:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinStatus:I
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$300(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)I

    move-result v0

    .line 903
    .local v0, status:I
    const-string v3, "SkinPicker.OnlineSkin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ONLINESKIN_EVENT_DOWNLOADSTATUSCHANGED, guid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$800(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)I

    move-result v3

    if-ne v3, v7, :cond_2

    .line 906
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$900(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;
    invoke-static {v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$900(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->getIdxOfSkin(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->notifyUpdateItem(I)V

    goto :goto_0

    .line 908
    :cond_2
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$900(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 912
    .end local v0           #status:I
    .end local v1           #strGUID:Ljava/lang/String;
    :sswitch_2
    const-string v3, "SkinPicker.OnlineSkin"

    const-string v4, "ONLINESKIN_EVENT_XMLRETRIVAL received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_4

    .line 915
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->dismissDownloadingCursor()V
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$1700(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    .line 916
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->dismissLodaingText()V
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$1800(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    .line 917
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$900(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->notifyDataSetChanged()V

    .line 918
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->enableControls(Z)V
    invoke-static {v3, v6}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$1900(Lcom/htc/home/personalize/onlineskin/OnlineSkin;Z)V

    .line 919
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    sget-object v4, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->DOWNLOADED:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    #setter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinListDownloadState:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;
    invoke-static {v3, v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$002(Lcom/htc/home/personalize/onlineskin/OnlineSkin;Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;)Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    .line 920
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mMessageBoard:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$2000(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 921
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnViewType:I
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$800(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 922
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->updatePanelViewVisibility(Z)V
    invoke-static {v3, v6}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$2100(Lcom/htc/home/personalize/onlineskin/OnlineSkin;Z)V

    .line 923
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->updateListViewVisibility(Z)V
    invoke-static {v3, v5}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$2200(Lcom/htc/home/personalize/onlineskin/OnlineSkin;Z)V

    .line 928
    :goto_1
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->checkLaunchIntent()V
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$2300(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    .line 929
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I
    invoke-static {v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$600(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)I

    move-result v4

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->UpdateFocusInfo(I)V
    invoke-static {v3, v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$1500(Lcom/htc/home/personalize/onlineskin/OnlineSkin;I)V

    .line 938
    :goto_2
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->checkAndUpdateSkinStatus()V
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$2400(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    goto/16 :goto_0

    .line 925
    :cond_3
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->updatePanelViewVisibility(Z)V
    invoke-static {v3, v5}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$2100(Lcom/htc/home/personalize/onlineskin/OnlineSkin;Z)V

    .line 926
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->updateListViewVisibility(Z)V
    invoke-static {v3, v6}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$2200(Lcom/htc/home/personalize/onlineskin/OnlineSkin;Z)V

    goto :goto_1

    .line 932
    :cond_4
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->dismissDownloadingCursor()V
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$1700(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    .line 933
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->dismissLodaingText()V
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$1800(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    .line 934
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    sget-object v4, Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;->DOWNLOADFAIL:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    #setter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinListDownloadState:Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;
    invoke-static {v3, v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$002(Lcom/htc/home/personalize/onlineskin/OnlineSkin;Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;)Lcom/htc/home/personalize/onlineskin/OnlineSkin$DownLoadState;

    .line 935
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->updatePanelViewVisibility(Z)V
    invoke-static {v3, v5}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$2100(Lcom/htc/home/personalize/onlineskin/OnlineSkin;Z)V

    .line 936
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mMessageBoard:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$2000(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 942
    :sswitch_3
    const-string v3, "SkinPicker.OnlineSkin"

    const-string v4, "ANIMATE_LOADING_VIEW received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mbIsLoadingList:Z
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$2500(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 945
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$2608(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)I

    .line 946
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnLoadingTextIdx:I
    invoke-static {v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$2600(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)I

    move-result v4

    rem-int/lit8 v4, v4, 0x4

    #setter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnLoadingTextIdx:I
    invoke-static {v3, v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$2602(Lcom/htc/home/personalize/onlineskin/OnlineSkin;I)I

    .line 947
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    iget-object v4, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mnLoadingTextIdx:I
    invoke-static {v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$2600(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)I

    move-result v4

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->setLoadingString(I)V
    invoke-static {v3, v4}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$2700(Lcom/htc/home/personalize/onlineskin/OnlineSkin;I)V

    .line 948
    iget-object v3, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$10;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineSkinHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$2800(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3d

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 886
    nop

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_2
        0x29 -> :sswitch_0
        0x2a -> :sswitch_1
        0x3d -> :sswitch_3
    .end sparse-switch
.end method
