.class Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;
.super Landroid/os/Handler;
.source "DmsDetailBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const/4 v8, 0x1

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    const-string v7, "NotRefresh"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    :cond_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    move-result-object v7

    if-eqz v7, :cond_2

    if-eq v5, v8, :cond_2

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->notifyDataSetChanged()V

    :cond_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_6

    const/4 v1, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniServerID:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mIniContainerID:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_3
    :goto_1
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_4
    if-eqz v1, :cond_5

    if-nez v6, :cond_5

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mInitial:Z
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$700(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    const v8, 0x7f0700c7

    invoke-virtual {v7, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showEmptyView(I)V

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    const v8, 0x7f0700be

    invoke-virtual {v7, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showEmptyView(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->hideEmptyErrorView()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showSpinner(Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/database/Cursor;

    if-nez v2, :cond_7

    const-string v7, "[DMS]"

    const-string v8, "get cursor == null"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDestroy:Z
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$800(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-virtual {v7, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->GetCursorInfo(Landroid/database/Cursor;)V

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    goto/16 :goto_0

    :pswitch_4
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    iget-object v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mDetailIntent:Landroid/content/Intent;
    invoke-static {v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v7, "DLNA"

    const-string v8, "DETAIL_PAGE"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->setTitle()V
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V

    const-string v7, "DLNA"

    const-string v8, "Set title"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "errorID"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-virtual {v7, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->showDialog(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
