.class Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;
.super Landroid/os/Handler;
.source "DmsDetailBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

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
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    move-result-object v7

    if-eqz v7, :cond_2

    if-eq v5, v8, :cond_2

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->notifyDataSetChanged()V

    :cond_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_6

    const/4 v1, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_3
    :goto_1
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_4
    if-eqz v1, :cond_5

    if-nez v6, :cond_5

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mInitial:Z
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$700(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    const v8, 0x7f0700c7

    invoke-virtual {v7, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showEmptyView(I)V

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    const v8, 0x7f0700be

    invoke-virtual {v7, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showEmptyView(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->hideEmptyErrorView()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showSpinner(Z)V

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
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDestroy:Z
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$800(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-virtual {v7, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->GetCursorInfo(Landroid/database/Cursor;)V

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    goto/16 :goto_0

    :pswitch_4
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    iget-object v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDetailIntent:Landroid/content/Intent;
    invoke-static {v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->sendBroadcast(Landroid/content/Intent;)V

    const-string v7, "DLNA"

    const-string v8, "DETAIL_PAGE"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #calls: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->setTitle()V
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$1000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

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

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-virtual {v7, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showDialog(I)V

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
