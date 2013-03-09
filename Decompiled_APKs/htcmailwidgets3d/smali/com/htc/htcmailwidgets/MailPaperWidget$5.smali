.class Lcom/htc/htcmailwidgets/MailPaperWidget$5;
.super Ljava/lang/Object;
.source "MailPaperWidget.java"

# interfaces
.implements Lcom/htc/htcmailwidgets/IMailCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcmailwidgets/MailPaperWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;


# direct methods
.method constructor <init>(Lcom/htc/htcmailwidgets/MailPaperWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 2184
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTriggerDeleteListener(JLcom/htc/fusion/fx/controls/FxButton$ClickParameters;)V
    .locals 12
    .parameter "messageId"
    .parameter "info"

    .prologue
    const/16 v11, 0x15bf

    const/16 v6, 0x138d

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2188
    iget-object v5, p3, Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;->object:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxButton;->getParent()Lcom/htc/fusion/fx/FxObject;

    move-result-object v4

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 2189
    .local v4, t:Lcom/htc/fusion/fx/FxTimelineControl;
    invoke-virtual {v4}, Lcom/htc/fusion/fx/FxTimelineControl;->getParent()Lcom/htc/fusion/fx/FxObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/fusion/fx/FxObject;->getParent()Lcom/htc/fusion/fx/FxObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/fusion/fx/FxObject;->getParent()Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxListItem;

    .line 2190
    .local v2, item:Lcom/htc/fusion/fx/controls/FxListItem;
    iget-object v0, p3, Lcom/htc/fusion/fx/controls/FxButton$ClickParameters;->object:Lcom/htc/fusion/fx/controls/FxButton;

    .line 2192
    .local v0, btn:Lcom/htc/fusion/fx/controls/FxButton;
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v5, v5, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v5, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2193
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v5, v5, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v5, v6}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 2195
    :cond_0
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z
    invoke-static {v5}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$200(Lcom/htc/htcmailwidgets/MailPaperWidget;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2253
    :cond_1
    :goto_0
    return-void

    .line 2198
    :cond_2
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-wide v5, v5, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    .line 2202
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;
    invoke-static {v5}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$300(Lcom/htc/htcmailwidgets/MailPaperWidget;)Lcom/htc/fusion/fx/controls/FxListView;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2205
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-boolean v5, v5, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInDeleteMail:Z

    if-eqz v5, :cond_3

    .line 2206
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$400(Lcom/htc/htcmailwidgets/MailPaperWidget;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mOnDeleteListener ... in Delete Mail ... Quit"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mDelMailId:I
    invoke-static {v5}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$500(Lcom/htc/htcmailwidgets/MailPaperWidget;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mLastDeleteMailId:I
    invoke-static {v6}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$600(Lcom/htc/htcmailwidgets/MailPaperWidget;)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 2208
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iput-boolean v9, v5, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInDeleteMail:Z

    goto :goto_0

    .line 2213
    :cond_3
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    long-to-int v6, p1

    #setter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mDelMailId:I
    invoke-static {v5, v6}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$502(Lcom/htc/htcmailwidgets/MailPaperWidget;I)I

    .line 2214
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v6, v6, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, p1, p2}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getMailIDIndex(Ljava/util/ArrayList;J)I

    move-result v1

    .line 2216
    .local v1, idx:I
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$400(Lcom/htc/htcmailwidgets/MailPaperWidget;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mOnDeleteListener..., idx = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", first index of list view :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;
    invoke-static {v7}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$300(Lcom/htc/htcmailwidgets/MailPaperWidget;)Lcom/htc/fusion/fx/controls/FxListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/fusion/fx/controls/FxListView;->getFirstVisibleIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", current index of list view : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;
    invoke-static {v7}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$300(Lcom/htc/htcmailwidgets/MailPaperWidget;)Lcom/htc/fusion/fx/controls/FxListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/fusion/fx/controls/FxListView;->getCurrentlySelectedIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;
    invoke-static {v5}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$300(Lcom/htc/htcmailwidgets/MailPaperWidget;)Lcom/htc/fusion/fx/controls/FxListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getFirstVisibleIndex()I

    move-result v5

    if-ne v1, v5, :cond_4

    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailListView:Lcom/htc/fusion/fx/controls/FxListView;
    invoke-static {v5}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$300(Lcom/htc/htcmailwidgets/MailPaperWidget;)Lcom/htc/fusion/fx/controls/FxListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxListView;->getCurrentlySelectedIndex()I

    move-result v5

    if-eq v1, v5, :cond_5

    .line 2224
    :cond_4
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 2225
    .local v3, m:Landroid/os/Message;
    const/16 v5, 0x15be

    iput v5, v3, Landroid/os/Message;->what:I

    .line 2226
    iput v9, v3, Landroid/os/Message;->arg1:I

    .line 2227
    const/4 v5, -0x1

    iput v5, v3, Landroid/os/Message;->arg2:I

    .line 2228
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v5, v5, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const-wide/16 v6, 0x64

    invoke-interface {v5, v3, v6, v7}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 2235
    .end local v3           #m:Landroid/os/Message;
    :cond_5
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iput-boolean v10, v5, Lcom/htc/htcmailwidgets/MailPaperWidget;->mbInDeleteMail:Z

    .line 2237
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v5, v5, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v5, :cond_6

    .line 2238
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #setter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z
    invoke-static {v5, v10}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$202(Lcom/htc/htcmailwidgets/MailPaperWidget;Z)Z

    .line 2239
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v5, v5, Lcom/htc/htcmailwidgets/MailPaperWidget;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mbDoRefreshAdapterTask:Z
    invoke-static {v6}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$200(Lcom/htc/htcmailwidgets/MailPaperWidget;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/htcmailwidgets/MailDataManager;->onDuringDeleteMail(Z)V

    .line 2242
    :cond_6
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mDeleteConfirmation:Z
    invoke-static {v5}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$700(Lcom/htc/htcmailwidgets/MailPaperWidget;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 2244
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget v5, v5, Lcom/htc/htcmailwidgets/MailPaperWidget;->mCursorCount:I

    if-ltz v5, :cond_1

    .line 2245
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v5, v5, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v5, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2246
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v5, v5, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v5, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 2247
    :cond_7
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->LOG_TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$400(Lcom/htc/htcmailwidgets/MailPaperWidget;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteing mail, index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mail_id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mDelMailId:I
    invoke-static {v7}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$500(Lcom/htc/htcmailwidgets/MailPaperWidget;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v6, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #getter for: Lcom/htc/htcmailwidgets/MailPaperWidget;->mDelMailId:I
    invoke-static {v6}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$500(Lcom/htc/htcmailwidgets/MailPaperWidget;)I

    move-result v6

    #calls: Lcom/htc/htcmailwidgets/MailPaperWidget;->deleteMailfromDB(Lcom/htc/fusion/fx/FxTimelineControl;II)V
    invoke-static {v5, v4, v1, v6}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$800(Lcom/htc/htcmailwidgets/MailPaperWidget;Lcom/htc/fusion/fx/FxTimelineControl;II)V

    goto/16 :goto_0

    .line 2252
    :cond_8
    iget-object v5, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #calls: Lcom/htc/htcmailwidgets/MailPaperWidget;->createDeleteDlg(ILcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxButton;)V
    invoke-static {v5, v1, v4, v0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$900(Lcom/htc/htcmailwidgets/MailPaperWidget;ILcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxButton;)V

    goto/16 :goto_0
.end method

.method public onTriggerFromListener(JLcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 5
    .parameter "messageId"
    .parameter "msg"

    .prologue
    .line 2283
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v1, v1, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 2284
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-wide v2, v2, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v4, v4, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager;->getMailIDList(JLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    .line 2285
    :cond_0
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1, p2}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getMailIDIndex(Ljava/util/ArrayList;J)I

    move-result v0

    .line 2287
    .local v0, pos:I
    if-gez v0, :cond_1

    .line 2291
    :goto_0
    return-void

    .line 2290
    :cond_1
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #calls: Lcom/htc/htcmailwidgets/MailPaperWidget;->launchContactCard(I)V
    invoke-static {v1, v0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$1100(Lcom/htc/htcmailwidgets/MailPaperWidget;I)V

    goto :goto_0
.end method

.method public onTriggerPhotoListener(JLcom/htc/fusion/fx/controls/FxHitbox$TapParameters;)V
    .locals 5
    .parameter "messageId"
    .parameter "msg"

    .prologue
    .line 2271
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v1, v1, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 2272
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-wide v2, v2, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v4, v4, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager;->getMailIDList(JLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    .line 2273
    :cond_0
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1, p2}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getMailIDIndex(Ljava/util/ArrayList;J)I

    move-result v0

    .line 2275
    .local v0, pos:I
    if-gez v0, :cond_1

    .line 2279
    :goto_0
    return-void

    .line 2278
    :cond_1
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    #calls: Lcom/htc/htcmailwidgets/MailPaperWidget;->launchContactCard(I)V
    invoke-static {v1, v0}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$1100(Lcom/htc/htcmailwidgets/MailPaperWidget;I)V

    goto :goto_0
.end method

.method public onTriggerPlaybackListener(JLcom/htc/fusion/fx/FxPlaybackInfo;)V
    .locals 3
    .parameter "messageId"
    .parameter "info"

    .prologue
    .line 2295
    iget-object v1, p3, Lcom/htc/fusion/fx/FxPlaybackInfo;->name:Ljava/lang/String;

    const-string v2, "page_delete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2297
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2298
    .local v0, m:Landroid/os/Message;
    const/16 v1, 0x15bd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2299
    long-to-int v1, p1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2300
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v1, v1, Lcom/htc/htcmailwidgets/MailPaperWidget;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    .line 2303
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onTriggerReplyListener(JLcom/htc/fusion/fx/controls/FxButton$ClickParameters;)V
    .locals 5
    .parameter "messageId"
    .parameter "info"

    .prologue
    .line 2257
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-wide v1, v1, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 2267
    :cond_0
    :goto_0
    return-void

    .line 2261
    :cond_1
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v1, v1, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 2262
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-wide v2, v2, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountId:J

    iget-object v4, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v4, v4, Lcom/htc/htcmailwidgets/MailPaperWidget;->mAccountName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/htc/htcmailwidgets/MailDataManager;->getMailIDList(JLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    .line 2263
    :cond_2
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v2, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v2, v2, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1, p2}, Lcom/htc/htcmailwidgets/MailPaperWidget;->getMailIDIndex(Ljava/util/ArrayList;J)I

    move-result v0

    .line 2265
    .local v0, pos:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    iget-object v1, v1, Lcom/htc/htcmailwidgets/MailPaperWidget;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2266
    iget-object v1, p0, Lcom/htc/htcmailwidgets/MailPaperWidget$5;->this$0:Lcom/htc/htcmailwidgets/MailPaperWidget;

    long-to-int v2, p1

    #calls: Lcom/htc/htcmailwidgets/MailPaperWidget;->replyMail(I)V
    invoke-static {v1, v2}, Lcom/htc/htcmailwidgets/MailPaperWidget;->access$1000(Lcom/htc/htcmailwidgets/MailPaperWidget;I)V

    goto :goto_0
.end method
